#! /usr/bin/env python

"""
This is the main module for the Target Coverage Tool (TCT). It is based on the original
jupyter notebook put together by Mario Gennaro. It can be used to construct exposure maps for
observation(s) using an APT pointing file.

Authors
-------

    - Mario Gennaro
    - Dan Coe
    - Bryan Hilbert

Use
---
This module can be imported and used as such:

::

    from target_coverage_tool.tct import TCT

    pointing_file = '1068.pointing'
    observations = 1
    exposures = 1
    instrument = 'nircam'

    # or
    #exposures = {}
    #exposures['1'] = 1
    #exposures['2'] = [1, 2]

    t = TCT(pointing_file=pointing_file, observations=observations, exposures=exposures, instrument=instrument, output_dir='./')


Exposure maps can also be generated using the command-line tool:

::

    tct --pointing_file my_file.pointingtct --pointing_file my_file.pointing --observations 1 3 5
    python tct.py --pointing_file my_program.pointing

"""

import argparse
import pandas as pd
import numpy as np
import os,glob,itertools
import pysiaf
from pysiaf.iando import read
from pysiaf.utils import tools, compare, rotations
from pysiaf import siaf,JwstAperture

import matplotlib
import matplotlib.pyplot as plt
from matplotlib.path import Path
import matplotlib.patches as patches
from matplotlib import colors
from matplotlib.ticker import FormatStrFormatter
from mpl_toolkits.axes_grid1.axes_divider import make_axes_area_auto_adjustable

#from target_coverage_tool.utils.constants import CODES_ONE_SCA, REFERENCE_APERTURES, SUPPORTED_INSTRUMENTS
from utils.constants import CODES_ONE_SCA, REFERENCE_APERTURES, SUPPORTED_INSTRUMENTS
from utils.apertures import all_apertures, attitude, compute_local_roll

plt.style.use('http://www.stsci.edu/~dcoe/matplotlibrc.txt')


class TCT():
    """Class for executing the target coverage tool

    This class will generate a coverage map for an input list
    of observations and instrument, given a pointing file from APT.

    Parameters
    ----------
    exposures : int, list, or dict
        Exposure numbers (as defined in the APT file) to be included in the map.
        If it's an integer, that exposure number from all specified observations
        will be used to construct the map. If it is a list, those exposure numbers
        from all specified observations will be used. If it is a dictionary, it must
        contain key values corresponding to observation numbers. The values must be
        integers or lists of exposures numbers. This way, different exposure numbers
        can be specified from each observation.

    instrument : str
        Name of the instrument whose observations are to be processed

    observations : int or list
        List of integers giving observation numbers (as defined in the APT file)
        to be included in the map

    output_dir : str
        Name of the directory into which the target coverage map is saved

    pav3 : float
        Telescope roll angle to use when creating the map.

    pointing_file : str
        Name of pointing file exported from APT

    prd_version : int
        PRD version to use for the creation of the map. If this version is present in
        the pysiaf package, it will be used.

    siaf_file : str
        Name of SIAF xml file to use for the creation of the map. If None, the default
        SIAF version in pysiaf will be used. This takes presidence over ``prd_version``
    """

    def __init__(self, pointing_file=None, observations=None, exposures=None, instrument=None,
                 pav3=0., siaf_file=None, prd_version=None, output_dir=None):

        self.pointing_file = pointing_file
        self.instrument = instrument.lower()

        # Sanity checks
        if not os.path.isfile(self.pointing_file):
            raise OSError('Pointing file {} does not exist.'.format(self.pointing_file))

        if self.instrument not in SUPPORTED_INSTRUMENTS:
            raise ValueError('{} is not a supported JWST instrument.'.format(instrument))

        # If it's a dictionary, exposures takes precedence over (observations and exposures).
        # This is the only way to specify different exposures for each observation
        if isinstance(exposures, dict):
            format_exposure_dict(exposures)
        else:
            # Allow the user to input a single integer for observations and
            # exposures
            if observations is None:
                raise ValueError('observations must be specified if exposures is not a dictionary.')

            if isinstance(observations, int):
                observations = [observations]

            # Create a list of string observation numbers to make things
            # easier later
            self.observations = [str(ele) for ele in observations]

            # self.exposures must be a dictionary with observation number
            # strings as keys and lists of strings as values
            if exposures is None:
                raise ValueError('exposures must be specified.')

            self.exposures = {}
            if isinstance(exposures, int):
                for ele in self.observations:
                    self.exposures[ele] = [str(exposures)]
            elif isinstance(exposures, list):
                for ele in self.observations:
                    self.exposures[ele] = [str(expele) for expele in exposures]

        self.telescope_roll = pav3
        self.siaf_file = siaf_file
        self.prd_version = prd_version
        self.output_dir = os.path.abspath(output_dir)

        # Create the map
        self.exposure_map()


    def exposure_map(self):
        """Create exposure maps. Wrapper function that will create a coverage map
        for the specified instrument. In the case of NIRCam, it will produce separate
        coverage maps for the longwave and shortwave channels.
        """
        # Create pysiaf.Siaf object
        self.define_siaf()

        # Read in the pointing file
        pointing = self.read_pointing()
        
        # Create a Siaf instance for each target/aperture combination in the
        # observations going into the map
        self.targ_aperture_siafs(pointing)

        # Check that we are not mixing instruments. Get the reference aperture
        # name for the first observation/exposure. Check the other aperture
        # names against it. Also, for NIRCam observations, we want to create
        # separate maps for shortwave and longwave channels
        self.define_refereance_aperture()

        # If we are working on NIRCam observations, then treat the SW and LW
        # channels individually
        if self.ref_aperture_name[0:3] == 'NRC':
            self.construct_map(pointing, nircam_channel='sw')
            self.construct_map(pointing, nircam_channel='lw')
        else:
            self.construct_map(pointing)


    def define_refereance_aperture(self):
        """Create a siaf instance for the reference aperture needed for
        coordinate transforms. All aperture corners will be mapped into
        this aperture's coordinate system.
        """
        self.ref_aperture_name = REFERENCE_APERTURES[self.instrument]
        self.ref_aperture = self.siaf[self.ref_aperture_name]


    def generate_aperture_list(self, pointing_info, channel='sw'):
        """Create a list of apertures from the aperture listed in each line of
        the pointing file. This is needed primarily for NIRCam, so that we can
        turn e.g. NRCALL_FULL into a list of all 8 shortwave apertures or 2
        longwave apertures.

        Parameters
        ----------
        pointing_info : pandas.DataFrame
            Table of information read in from the pointing file

        channel : str
            NIRCam channel to use when creating the map. Can be 'sw' or 'lw'.
            Other values will be ignored.

        Returns
        -------
        aperture_dict : dict
            Dictionary containing a list of aperture-specific Siaf instances for
            each requested observation
        """
        aperture_dict = {}
        for i, observation in enumerate(self.observations):
            exposure = self.exposures[observation]
            refindex = pd.IndexSlice[observation, :, :, :, exposure, :]
            ref_aperture_name = pointing_info.loc[refindex, :]['Aperture'][0]

            # Get a list of all apertures associated with the aperture listed in
            # the pointing file
            aperture_names = all_apertures(ref_aperture_name)

            # Check to be sure that we don't mix instruments
            if aperture_names[0][0:3] != self.ref_aperture_name[0:3]:
                raise ValueError('Cannot combine apertures from different instruments.')

            # If nircam, focus on one channel at a time
            if channel == 'sw':
                aperture_names = [ele for ele in aperture_names if '5_' not in ele]
            elif channel == 'lw':
                aperture_names = [ele for ele in aperture_names if '5_' in ele]

            aperture_dict[observation] = [self.siaf.apertures[apname] for apname in aperture_names]

        return aperture_dict


    def format_exposure_dict(input_dict):
        """Convert the input observation and exposure dictionary to the format
        expected by the rest of the code. Keys should be strings of observation
        numbers, and values should be lists of integers of exposure numbers

        Parameters
        ----------
        input_dict : dict
            Dictionary input by the user
        """
        self.observations = []
        self.exposures = {}
        for key in input_dict:
            if isinstance(key, int):
                keystr = str(key)
            elif isinstance(key, str):
                keystr = key
            else:
                raise ValueError('obs_and_exp_dict keys should be string representations of observation numbers.')

            if isinstance(input_dict[key], int):
                val = [input_dict[key]]
            elif isinstance(input_dict[key], list):
                val = input_dict[key]
            else:
                raise ValueError('obs_and_exp_dict values should be integers or lists of integers.')

            self.exposures[keystr] = val
            self.observations.append(keystr)


    def construct_map(self, pointing_info, nircam_channel=None):
        """Wrapper function around the 5 functions used to generate a single target
        coverage map.

        Parameters
        ----------
        pointing_info : pandas.DataFrame
            Table of information read in from pointing file

        nircam_channel : str
            For NIRCam coverage maps, this should be the name of the channel for
            which the map is made. Can be 'sw' or 'lw'. Other values will be ignored.
        """
        # Get a list of Siaf instances for all apertures
        aperture_mapping = self.generate_aperture_list(pointing_info, channel=nircam_channel)

        # Get the aperture corners in ideal coordinates with respect to the
        # reference aperture
        corner_list = self.ideal_corners(aperture_mapping)

        # Construct a list of dither offsets
        dithers, targ_skycoords = self.dither_list(pointing_info)

        # Create a list of corners, shifted by d_IdlX, d_IdlY
        dither_corner_list = self.dither_corners(corner_list, dithers, targ_skycoords)

        # Create plot
        self.make_exposure_count_plot(dither_corner_list, nircam_channel)


    def compute_map(self, paths):
        """Not currently used, but may be useful if we decide to create a coverage map
        that is based on exposure time rather than number of exposures.
        """
        # Create grid of points for the calculation
        nx = ny = self.nsamp
        yyy, xxx = np.mgrid[self.min_y:self.max_y:ny*1j, self.min_x:self.max_x:nx*1j]
        P = np.array([xxx.ravel(), yyy.ravel()]).T

        # Calculate number of exposures for each point in the grid
        exposed = []
        for i, p in enumerate(paths):
            exposed1 = p.contains_points(P)
            exposed1.shape = ny, nx
            exposed.append(exposed1)
        exposed = np.array(exposed)

        # 2D exposure map
        n_exposures = np.sum(exposed, axis=0)

        nexp, counts = np.unique(n_exposures, return_counts=True)

        raise ValueError('Function incomplete')

        #return n_exposures -> to be optionally saved


    def define_siaf(self):
        """Generate a pysiaf.Siaf object using the requested SIAF version/file
        """
        if self.siaf_file is None and self.prd_version is None:
            self.siaf = pysiaf.Siaf(self.instrument)
        else:
            if self.siaf_file is not None:
                aperture_collection_1 = read.read_jwst_siaf(filename=self.siaf_file)
                self.siaf = siaf.Siaf(self.instrument)
                self.siaf.apertures = aperture_collection_1
                self.siaf.description = os.path.basename(self.siaf_file)
                self.siaf.observatory = 'JWST'
            elif self.prd_version is not None:
                raise ValueError("Not yet supported")


    def dither_list(self, pointing_info):
        """Retrieve dither and target coordinate information from the requested
        observations in the pointing file

        Parameters
        ----------
        pointing_info : pandas.DataFrame
            Table of information read in from the pointing file

        Returns
        -------
        dither_dict : dict
            Dictionary with string versions of observation numbers as keys and lists
            of dither values (in arcseconds) in the ideal coordinate system as values.

        poistion_dict : dict
            Dictionary with string versions of observation numbers as keys and lists
            of target coordinates (RA, Dec in degrees) as values.
        """
        dither_dict = {}
        position_dict = {}
        for observation in self.observations:
            dither_dict[observation] = []
            position_dict[observation] = []
            allindexes = pd.IndexSlice[observation, :, :, :, self.exposures[observation], :]
            dith_X = pointing_info.loc[allindexes, ['IdlX']].values
            dith_Y = pointing_info.loc[allindexes, ['IdlY']].values
            ralist = pointing_info.loc[allindexes, ['RA']].values
            declist = pointing_info.loc[allindexes, ['Dec']].values
            for ra, dec, dx, dy in zip(ralist, declist, dith_X, dith_Y):
                dx_f = float(dx[0])
                dy_f = float(dy[0])
                ra_f = float(ra[0])
                dec_f = float(dec[0])
                dither_dict[observation].append((dx_f, dy_f))
                position_dict[observation].append((ra_f, dec_f))
        return dither_dict, position_dict


    def dither_corners(self, corner_info, dither_info, sky_coords):
        """Translate the dictionary containing aperture corners in the ideal coordinate
        system of the reference aperture into positions on the sky.

        Parameters
        ----------
        corner_info : dict
            Dictionary with string versions of observation numbers as keys, and lists
            of aperture corners (in the reference aperture's ideal coord system) as values

        dither_info : dict
            Dictionary with string versions of observation numbers as keys, and lists
            of dither offsets (in arcsecs) as values

        sky_coords : dict
            Dictionary with string versions of observation numbers as keys, and lists
            of target sky coordinates as values.

        Returns
        -------
        path_list : list
            List of matplotlib.path.Path objects for all corners of all apertures
        """
        path_list = []

        for obs in corner_info.keys():
            obs_corner_info = corner_info[obs]
            obs_dither_info = dither_info[obs]
            obs_sky_coords = sky_coords[obs]

            for dither, targ_radec in zip(obs_dither_info, obs_sky_coords):   # loop over general apertures from pointing file
                flattened_vertices = []
                path_per_sca = []
                targ_ra, targ_dec = targ_radec

                # Calculate the local roll angle for the aperture
                local_roll = compute_local_roll(self.telescope_roll, targ_ra, targ_dec, self.ref_aperture.V2Ref, self.ref_aperture.V3Ref)

                # Create attitude_matrix
                attitude_matrix = attitude(self.ref_aperture.V2Ref, self.ref_aperture.V3Ref, targ_ra, targ_dec, local_roll)

                for corners in obs_corner_info:     # corners for all apertures associated with the general aperture
                    flattened_vertices_per_sca = []
                    for i, v in enumerate(corners):   # 4 corners per aperture
                        idealx, idealy = v[0] + dither[0], v[1] + dither[1]  # Add the dither to each corner, ideal coords

                        # Translate to V2, V3
                        #v2, v3 = siaf_ap.idl_to_tel(idealx, idealy)
                        v2, v3 = self.ref_aperture.idl_to_tel(idealx, idealy)

                        # Calculate the RA, Dec corresponding to the V2, V3 positions
                        ra, dec = pysiaf.utils.rotations.pointing(attitude_matrix, v2, v3)

                        if i == 0:
                            firstra, firstdec = ra, dec

                        flattened_vertices.append([ra, dec])
                        flattened_vertices_per_sca.append([ra, dec])

                    flattened_vertices.append([firstra, firstdec])

                path_list.append(Path(np.asarray(flattened_vertices), CODES_ONE_SCA*int(len(flattened_vertices)/5)))

        return path_list


    def ideal_corners(self, aperture_dict):
        """For a given set of apertures, generate a lists of aperture corners in the ideal
        coordinate system of the reference aperture.

        Parameters
        ----------
        aperture_dict : dict
            Dictionary with string versions of observation numbers as keys and lists of
            aperture-specific pysiaf.Siaf objects as values

        Returns
        -------
        corners : dict
            Dictionary with string versions of observation numbers as keys and lists of
            (x, y) pairs for all corners, translated into the ideal coordinate system of
            the reference aperture.
        """
        corners = {}
        for obs, aperture_list in aperture_dict.items():
            obs_corners = []
            for ap in aperture_list:
                clist = []
                cx_tel, cy_tel = ap.corners('tel')

                for tel_x, tel_y in zip(cx_tel, cy_tel):
                    idl_x, idl_y = self.ref_aperture.tel_to_idl(tel_x, tel_y)
                    clist.append((idl_x, idl_y))
                obs_corners.append(clist)
            corners[obs] = obs_corners
        return corners


    def make_exposure_count_plot(self, paths, channel, save=True, output_file=None):
        """Create the exposure coverage map, and save as a PDF.

        Parameters
        ----------
        paths

        channel : str
            For NIRCam observations, the channel for which the map is being created.
            Can be 'sw' or 'lw'. For other instruments, it should be None.

        save : bool
            Whether or not to save the plot

        output_file : str
            Name of the file to save the plot to
        """
        f, ax = plt.subplots(1, 1, figsize=(8, 6))

        for p in paths:
            patch = patches.PathPatch(p, facecolor='k', alpha=1./len(paths), edgecolor='None')
            ax.add_patch(patch)
        ax.axis('equal')
        ax.invert_xaxis()
        ax.ticklabel_format(useOffset=False)
        ax.yaxis.set_major_formatter(FormatStrFormatter('%.3f'))
        make_axes_area_auto_adjustable(ax)

        plt.xlabel('RA (deg)')
        plt.ylabel('Dec (deg)')

        if save:
            if output_file is None:
                obs_str = ''
                for ele in self.observations:
                    obs_str = obs_str + '_' + ele
                pointing_base = os.path.basename(self.pointing_file)
                if channel is None:
                    output_file = 'Coverage_map_{}_Obs{}.pdf'.format(pointing_base, obs_str)
                else:
                    output_file = 'Coverage_map_nircam_{}_channel_{}_Obs{}.pdf'.format(channel, pointing_base, obs_str)
                output_file = os.path.join(self.output_dir, output_file)
                print('Coverage map saved to {}'.format(output_file))
            f.savefig(output_file)


    def read_pointing(self):
        """Read in a pointing file from APT

        Returns
        -------
        df : pandas.DataFrame
            DataFrame with pointing file contents for the requested Observations
        """
        names = ('Tar Tile Exp Dith Aperture Name Target RA Dec BaseX BaseY DithX '
                 'DithY V2 V3 IdlX IdlY Level Type ExPar DkPar dDist').split()

        df = pd.DataFrame(columns=['Observation', 'Visit']+names)
        df = df.set_index(['Observation', 'Visit', 'Tar', 'Tile', 'Exp', 'Dith'])

        obs = None
        vis = None
        with open(self.pointing_file) as fp:
            for line in fp:
                if line[:13] == '* Observation':
                    obs = line[13:].strip()
                if line[0] =='*' and '(Obs' in line:
                    obs = line.split('Obs')[-1].strip()[:-1]
                if line[:8] == '** Visit':
                    vis = line.strip().split(':')[1]
                if (obs in self.observations) and (vis is not None):
                    if (line[:3] != 'Tar') & (len(line) > 100):
                        _list = line.split()
                        if _list[-1] == '(base)':
                            _list = _list[:-1]
                        df.loc[(obs, vis, _list[0], _list[1], _list[2], _list[3]), :] = _list[4:]
        return df

    def read_instrument_pointing(self):
        """Read in a pointing file from APT and extract all RADEC for all visits with that primary instrument

        Returns
        -------
        df : pandas.DataFrame
            DataFrame with pointing file contents for the requested Observations
        """
        names = ('Tar Tile Exp Dith Aperture Name Target RA Dec BaseX BaseY DithX '
                 'DithY V2 V3 IdlX IdlY Level Type ExPar DkPar dDist').split()

        df = pd.DataFrame(columns=['Observation', 'Visit']+names)
        df = df.set_index(['Observation', 'Visit', 'Tar', 'Tile', 'Exp', 'Dith'])

        obs = None
        vis = None
        with open(self.pointing_file) as fp:
            for line in fp:
                if line[:13] == '* Observation':
                    obs = line[13:].strip()
                if line[0] =='*' and '(Obs' in line:
                    obs = line.split('Obs')[-1].strip()[:-1]
                if line[:8] == '** Visit':
                    vis = line.strip().split(':')[1]
                if (obs in self.observations) and (vis is not None) and (line[-7:-1] == '(base)'):
                    if (line[:3] != 'Tar') & (len(line) > 100):
                        _list = line.split()
                        if _list[-1] == '(base)':
                            _list = _list[:-1]
                        df.loc[(obs, vis, _list[0], _list[1], _list[2], _list[3]), :] = _list[4:]
                # Extract the pointing of the selected prime instrument
        pointing_instrument_RA =   df.RA[0]
        pointing_instrument_Dec =  df.Dec[0]
        print(pointing_instrument_RA,pointing_instrument_Dec)
                
        return [pointing_instrument_RA, pointing_instrument_Dec]

    def targ_aperture_siafs(self, pointing_info):
        """Create a Siaf aperture instance for each target/aperture combination
        in the pointing file that will be used to construct the map

        Parameters
        ----------
        pointing_info : pandas.DataFrame
            Information read in from the pointing file
        """
        self.targ_siafs = {}
        for i, observation in enumerate(self.observations):
            exposure = self.exposures[observation]
            refindex = pd.IndexSlice[observation, :, :, :, exposure, :]
            ref_aperture_name = pointing_info.loc[refindex, :]['Aperture'][0]
            targ_name = pointing_info.loc[refindex, :]['Target'][0]
            key = '{}_{}'.format(targ_name, ref_aperture_name)
            if key not in self.targ_siafs.keys():
                self.targ_siafs[key] = self.siaf[ref_aperture_name]


def define_options(parser=None, usage=None, conflict_handler='resolve'):
    """Parse arguments input when the code is run from the command line.

    Parameters
    ----------
    parser : argparse.ArgumentParser

    usage : str
        String explaining how to call the code

    conflict_handler : str
        How to resolve parameter conflicts

    Returns
    -------
    parser : argparse.ArgumentParser
    """
    if parser is None:
        parser = argparse.ArgumentParser(usage=usage, conflict_handler=conflict_handler)

    parser.add_argument('-p', '--pointing_file', default=None, help='Name of pointing file from APT')
    parser.add_argument('-o', '--observations', default=1, type=int, nargs="+", help='Observation numbers to be visualized')
    parser.add_argument('-e', '--exposures', default=1, type=int, nargs="+", help='Exposure numbers to be visualized')
    parser.add_argument('-i', '--instrument', default='nircam', help='Instrument name')
    parser.add_argument('-s', '--siaf_file', default=None, help='SIAF filename to override that in pysiaf')
    parser.add_argument('--prd_version', default=None, help='Version of the PRD to load (overrides latest version in pysiaf')
    parser.add_argument('--output_dir', default='./', help='Output directory for saved plots')
    return(parser)



if __name__ == '__main__':
    parser = define_options()
    args = parser.parse_args()

    t = TCT(pointing_file=args.pointing_file, observations=args.observations, exposures=args.exposures,
            instrument=args.instrument, pav3=args.pav3, siaf_file=args.siaf_file, prd_version=args.prd_version,
            output_dir=args.output_dir)
