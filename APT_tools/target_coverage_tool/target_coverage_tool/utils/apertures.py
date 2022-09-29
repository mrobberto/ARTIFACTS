#! /usr/bin/env python

"""This module contains functions that deal with instrument apertures

Authors
-------

    - Bryan Hilbert

Use
---

This module can be imported using:

::

    from target_coverage_tool.utils import apertures
    ap_list = apertures.all_apertures('NRCBS_FULL')

"""
from math import radians, cos, sin

import numpy as np


NIRCAM_EXTENDED_SOURCE_SUBARRAYS = ['SUB160', 'SUB320', 'SUB640', 'FULL']
NIRCAM_POINT_SOURCE_SUBARRAYS = ['SUB400P', 'SUB160P', 'SUB64P']

def all_apertures(pointing_aperture):
    """Given an aperture name from an APT pointing file,
    return a list of all apertures used in the observation.
    This function only works for the apertures that are allowed
    in NIRCam imaging mode (SUB160, 320, 640, FULL, 400P, 160P, 64P)
    These seem like the only apertures that people may use
    when dithering and wanting to see an exposure depth map.
    It also returns values for both SW and LW detectors for NIRCam,
    since the pointing file often defaults to showing the LW
    detector for cases where both channels are used.

    Parameters
    ----------
    pointing_aperture : str
        Name of aperture in the APT pointing file

    Returns
    -------
    aperture_list : list
        List of aperture names used in the observation
    """
    det, ap = pointing_aperture.split('_')

    # NIRCam apertures
    if 'NRC' in det:
        if pointing_aperture == 'NRCALL_FULL':
            aperture_list = []
            mods = ['A', 'B']
            for mod in mods:
                for num in range(1,6):
                    aperture_list.append('NRC{}{}_FULL'.format(mod, num))
        else:
            det_base = det[0:-1]
            if ap in NIRCAM_EXTENDED_SOURCE_SUBARRAYS:
                aperture_list = ['{}{}_{}'.format(det_base, num, ap) for num in range(1,6)]
            elif ap in NIRCAM_POINT_SOURCE_SUBARRAYS:
                if det_base[-1] == 'B':
                    scas = [1, 5]
                elif det_base[-1] == 'A':
                    scas = [3, 5]
                else:
                    raise ValueError('Unrecognized aperture format: {}'.format(pointing_aperture))
                aperture_list = ['{}{}_{}'.format(det_base, num, ap) for num in scas]
            else:
                aperture_list = []
    else:
        print('{} in pointing file not yet supported.'.format(pointing_aperture))
        aperture_list = []
    return aperture_list


def attitude(v2, v3, ra, dec, pa):
    """This will make a rotation matrix which rotates a unit vector representing a v2, v3 position
    to a unit vector representing an RA, Dec pointing with an assigned position angle
    Described in JWST-STScI-001550, SM-12, section 6.1"""

    # v2, v3 in arcsec, ra, dec and position angle in degrees
    v2d = v2 / 3600.0
    v3d = v3 / 3600.0

    # Get separate rotation matrices
    mv2 = rotate(3, -v2d)
    mv3 = rotate(2, v3d)
    mra = rotate(3, ra)
    mdec = rotate(2, -dec)
    mpa = rotate(1, -pa)

    # Combine as mra*mdec*mpa*mv3*mv2
    m = np.dot(mv3, mv2)
    m = np.dot(mpa, m)
    m = np.dot(mdec, m)
    m = np.dot(mra, m)

    return m


def compute_local_roll(pa_v3, ra_ref, dec_ref, v2_ref, v3_ref):
    """
    Computes the position angle of V3 (measured N to E)
    at the center af an aperture.
    Parameters
    ----------
    pa_v3 : float
        Position angle of V3 at (V2, V3) = (0, 0) [in deg]
    v2_ref, v3_ref : float
        Reference point in the V2, V3 frame [in arcsec]
    ra_ref, dec_ref : float
        RA and DEC corresponding to V2_REF and V3_REF, [in deg]
    Returns
    -------
    new_roll : float
        The value of ROLL_REF (in deg)
    """
    v2 = np.deg2rad(v2_ref / 3600)
    v3 = np.deg2rad(v3_ref / 3600)
    ra_ref = np.deg2rad(ra_ref)
    dec_ref = np.deg2rad(dec_ref)
    pa_v3 = np.deg2rad(pa_v3)

    M = np.array(
        [[cos(ra_ref) * cos(dec_ref),
          -sin(ra_ref) * cos(pa_v3) + cos(ra_ref) * sin(dec_ref) * sin(pa_v3),
          -sin(ra_ref) * sin(pa_v3) - cos(ra_ref) * sin(dec_ref) * cos(pa_v3)],
         [sin(ra_ref) * cos(dec_ref),
          cos(ra_ref) * cos(pa_v3) + sin(ra_ref) * sin(dec_ref) * sin(pa_v3),
          cos(ra_ref) * sin(pa_v3) - sin(ra_ref) * sin(dec_ref) * cos(pa_v3)],
         [sin(dec_ref),
          -cos(dec_ref) * sin(pa_v3),
          cos(dec_ref) * cos(pa_v3)]]
    )

    return _roll_angle_from_matrix(M, v2, v3)


def _roll_angle_from_matrix(matrix, v2, v3):
    X = -(matrix[2, 0] * np.cos(v2) + matrix[2, 1] * np.sin(v2)) * np.sin(v3) + matrix[2, 2] * np.cos(v3)
    Y = (matrix[0, 0] * matrix[1, 2] - matrix[1, 0] * matrix[0, 2]) * np.cos(v2) + \
        (matrix[0, 1] * matrix[1, 2] - matrix[1, 1] * matrix[0, 2]) * np.sin(v2)
    new_roll = np.rad2deg(np.arctan2(Y, X))
    if new_roll < 0:
        new_roll += 360
    return new_roll



def rotate(axis, angle):
    """Fundamental rotation matrices.
    Rotate by angle measured in degrees, about axis 1 2 or 3"""
    if axis not in list(range(1, 4)):
        print ('Axis must be in range 1 to 3')
        return
    r = np.zeros((3, 3))
    ax0 = axis-1 #Allow for zero offset numbering
    theta = radians(angle)
    r[ax0, ax0] = 1.0
    ax1 = (ax0+1) % 3
    ax2 = (ax0+2) % 3
    r[ax1, ax1] = cos(theta)
    r[ax2, ax2] = cos(theta)
    r[ax1, ax2] = -sin(theta)
    r[ax2, ax1] = sin(theta)
    return r
