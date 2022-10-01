# no_params.py
# create a dictionary with Key and Value
from astropy.io import ascii
import numpy as np
from astropy import units as u


from astropy.io.votable import parse
from astropy.coordinates import position_angle, Angle
from astropy.coordinates import SkyOffsetFrame, ICRS
from astropy.coordinates import SkyCoord

from shapely.geometry import Point
from shapely.geometry.polygon import Polygon

import matplotlib.pyplot as plt

import os as os


def Claws_tool_3(APT_nr, RA, Dec): 
    cwd = os.getcwd()
# 1) read claws table and set the limits; V2V3 are spherical coordinates
    Shape_file = cwd+'/PA_tools/Claws_table.txt'
    shape = ascii.read(Shape_file)
    Mod_A = shape[:][0:13]
    Mod_B = shape[:][13:]

    # extract with mnemonic name
    ModA_corners_V2_arcsec = -Mod_A[0][:]
    ModA_corners_V3_arcsec = Mod_A[1][:]
    ModB_corners_V2_arcsec = -Mod_B[0][:]
    ModB_corners_V3_arcsec = Mod_B[1][:]

    Max_corners_V2_arcsec = np.max(
        [ModA_corners_V2_arcsec, ModB_corners_V2_arcsec])
    Min_corners_V2_arcsec = np.min(
        [ModA_corners_V2_arcsec, ModB_corners_V2_arcsec])
    Max_corners_V3_arcsec = np.max(
        [ModA_corners_V3_arcsec, ModB_corners_V3_arcsec])
    Min_corners_V3_arcsec = np.min(
        [ModA_corners_V3_arcsec, ModB_corners_V3_arcsec])
    Center_field_V2_arcsec = (
        Min_corners_V2_arcsec + Max_corners_V2_arcsec) / 2
    Center_field_V3_arcsec = (
        Min_corners_V3_arcsec + Max_corners_V3_arcsec) / 2
    #
    #
    Center_field_SkyCoord_deg = SkyCoord(
        Center_field_V2_arcsec*u.arcsec, Center_field_V3_arcsec*u.arcsec)
    #
    # CREATE A LOCAL FRAME
    LocalFrame = Center_field_SkyCoord_deg.skyoffset_frame()
    #
    #
    # organize the corners of the polygonal area
    # units become degrees
    # note: reverse the X axes as V2 points to the left, looking at the sky.
    corners_Arev_deg = SkyCoord(-Mod_A[0][:],
                                Mod_A[1][:], frame='icrs', unit="arcsec")
    corners_Brev_deg = SkyCoord(-Mod_B[0][:],
                                Mod_B[1][:], frame='icrs', unit="arcsec")
    # fix the PAs: 359deg must be -1 etc.
    i_neg_A = [i for i in range(len(corners_Arev_deg))
               if corners_Arev_deg.ra.value[i] > 180.]
    corners_Arev_deg.ra.value[i_neg_A] -= 360
    i_neg_B = [i for i in range(len(corners_Brev_deg))
               if corners_Brev_deg.ra.value[i] > 180.]
    corners_Brev_deg.ra.value[i_neg_B] -= 360
    #
    corners_Arev_deg_V2V3 = ICRS(
        corners_Arev_deg.ra.value*u.deg, corners_Arev_deg.dec.value*u.deg)
    corners_Arev_deg_LocalFrame = corners_Arev_deg_V2V3.transform_to(
        LocalFrame)
    corners_Brev_deg_V2V3 = ICRS(
        corners_Brev_deg.ra.value*u.deg, corners_Brev_deg.dec.value*u.deg)
    corners_Brev_deg_LocalFrame = corners_Brev_deg_V2V3.transform_to(
        LocalFrame)

    #
    # HERE We HAVE TNE COORDINATES OF THE CORNERS IN DEG IN  THE LOCAL FRAME
    # =================================================
    #
    #
    # V2V3 center at 0
    c0 = SkyCoord(0, 0, frame='icrs', unit="deg")
    #
    # radial distances corners-V2V3center
    r_corners_A_deg = c0.separation(corners_Arev_deg)
    r_corners_B_deg = c0.separation(corners_Brev_deg)
    #
    # remove the units, just the values (still in degrees...)
    r_corners_A = r_corners_A_deg.degree
    r_corners_B = r_corners_B_deg.degree

    # minmax = find the radii of the circular corona, centered on V2V3 origin
    np.concatenate((r_corners_A, r_corners_B))
    max_radius = max(np.concatenate((r_corners_A, r_corners_B)))
    min_radius = min(np.concatenate((r_corners_A, r_corners_B)))
    #print(sep_corners_A.degree, sep_corners_B.degree)
    #print(max_radius.degree, min_radius.degree)
    #
    # now the position angles of the corners, still in V2V3 coordinates
    PA_corners_A_rad = position_angle(
        0, 0, corners_Arev_deg.ra, corners_Arev_deg.dec)
    PA_corners_B_rad = position_angle(
        0, 0, corners_Brev_deg.ra, corners_Brev_deg.dec)
    #
    # fix the PAs: 359deg must be -1 etc.
    i_neg_A = [i for i in range(len(PA_corners_A_rad))
               if PA_corners_A_rad.value[i] > (np.pi/2)]
    PA_corners_A_rad[i_neg_A] -= (2*np.pi*u.rad)
    i_neg_B = [i for i in range(len(PA_corners_B_rad))
               if PA_corners_B_rad.value[i] > (np.pi/2)]
    PA_corners_B_rad[i_neg_B] -= (2*np.pi*u.rad)
    #
    # find minmax PA; they will determine the area of interest we will probe
    max_PA_rad = max(np.concatenate((PA_corners_A_rad, PA_corners_B_rad)))
    min_PA_rad = min(np.concatenate((PA_corners_A_rad, PA_corners_B_rad)))
    # print('29',max_PA.degree,min_PA.degree)

    # 2) the enter coordinates of target and read the 2MASS caalog
    # a) Format in deg
    #ra_0 = 139.50
    #dec_0 = 16.75
    #c1 = SkyCoord(ra_0,dec_0,frame='icrs',unit="deg")
    # b) Format in HMSDMS, as in APT
    #radec_0 = "18 53 35.0790 +33 01 45.03"
    #c1 = SkyCoord(radec_0, unit=(u.hourangle, u.deg))

    # this line is for coordinates entered with the call to this function
    # >RA,Dec
    # >Out  [10]: ('+83.83415', '-5.38624')
    c1 = SkyCoord(RA, Dec, unit=(u.deg, u.deg))
    print(c1)
    # <SkyCoord (ICRS): (ra, dec) in deg
    #    (83.83415, -5.38624)>
    #
    radec_0 = str(RA)+'  '+str(Dec)

    # load the 2MASS table and extract RADEC and Kmag
    votable_file = cwd+'/PA_tools/stars_kmag1p5_2mass.vot'
    print(votable_file)

    votable = parse(votable_file)
    for resource in votable.resources:
        for table in resource.tables:
            # print(table.array['ra']),table.array['dec']
            ra = table.array['ra']
            dec = table.array['dec']
            Kmag = table.array['j_k']
    # print(ra,dec,Kmag)

    #
    # find the angujlar separation of the sources from the target
    c2 = SkyCoord(ra, dec, frame='icrs', unit="deg")
    sep = c1.separation(c2)
    #
    # select the sources in the corona
    i_found = [i for i in range(len(sep)) if (
        sep.degree[i] > min_radius and sep.degree[i] < max_radius)]
    #
    # find the PA of all sources in the corona
    ra_0 = c1.ra.value
    dec_0 = c1.dec.value
    #
    #
    # PA wants units in radiants!
    PA = position_angle(ra_0*np.pi/180., dec_0*np.pi/180.,
                        ra*np.pi/180., dec*np.pi/180.)
    print(
        "For coordinates: RA_0 = {:10f} - DEC_0 = {:10f}".format(ra_0, dec_0))
    #found = [i for i in range(len(sep)) if (sep.degree[i]>18)]
    #
    # done: print the coord of the offending sources, radial distance, PA, Kmag and the minmax angles to avoid.
    #       144.963964  -1.142813  18.687021  336.687  0.806
    print("there are ", len(i_found), "sources that may cause problems")

    # ======================================================================
    # NOW TO FIND THE INTERCEPTS WE WORK IN THE LocalFrame

    # build the polygon for module A
    v = (corners_Arev_deg_LocalFrame.data.lon.value[0],
         corners_Arev_deg_LocalFrame.data.lat.value[0])
    for j in range(len(ModA_corners_V2_arcsec)):  # loop on the poligon corners
        v = *v, (corners_Arev_deg_LocalFrame.data.lon.value[j],
                 corners_Arev_deg_LocalFrame.data.lat.value[j])
    vt_A = np.array([*v[2:]]) * 180/np.pi
    polygon_A = Polygon(vt_A)

    v = (corners_Brev_deg_LocalFrame.data.lon.value[0],
         corners_Brev_deg_LocalFrame.data.lat.value[0])
    for j in range(len(ModB_corners_V2_arcsec)):  # loop on the poligon corners
        v = *v, (corners_Brev_deg_LocalFrame.data.lon.value[j],
                 corners_Brev_deg_LocalFrame.data.lat.value[j])
    vt_B = np.array([*v[2:]]) * 180/np.pi
    polygon_B = Polygon(vt_B)

    #
    # MAIN LOOP ON THE STARS
    for i in i_found:

        # we can plot the borders
        plot_yoffset = Center_field_V3_arcsec/3600 
        plt.rcParams["figure.figsize"] = (10, 10)
        plt.xlim(-3, 3)
        plt.ylim(-3+plot_yoffset, 3+plot_yoffset) 
        plt.plot(corners_Arev_deg_LocalFrame.data.lon.value*180/np.pi,
                 corners_Arev_deg_LocalFrame.data.lat.value*180/np.pi + plot_yoffset)
        plt.plot(corners_Brev_deg_LocalFrame.data.lon.value*180/np.pi,
                 corners_Brev_deg_LocalFrame.data.lat.value*180/np.pi + plot_yoffset)
        plt.title("APT" + str(APT_nr)+" Target "+c1.to_string('hmsdms'), fontsize=20)
        plt.text(-2.8, 2.6+plot_yoffset, "Bright star at   " +
                c2[i].to_string('hmsdms'), fontsize=16)
        plt.text(-2.8, 2.3+plot_yoffset, "K mag = "+str(Kmag[i]), fontsize=16)
        plt.xlabel("-V2 (degrees)", fontsize=14)
        plt.ylabel("V3 (degrees)", fontsize=14)

    #    print(i)
    # DETAILED EDGE OF THE REGION
        print("\n Source at:")
        print("    ra         dec        sep       PA_c    Kmag   theta_0  theta_1")
        print("{:10f} {:10f} {:10f} {:8.3f} {:6.3f} {:8.3f} {:8.3f}".format(
            ra[i], dec[i], sep.degree[i], PA.degree[i], Kmag[i], PA.degree[i]+min_PA_rad.degree, PA.degree[i]+max_PA_rad.degree))

        theta = 0
        isin_A = []
        isin_B = []
        counter = []
        counter_last = 0
    #    print(sep.degree[i])
        nsamples = 100
        up = 0.1
        angle_to_avoid = []
        
        #
        #loop to find the intercepts between stellar trajectory and shape
        for j in range(nsamples+1):

            # original theta and r centered on the V2V3 origin
            theta_last = theta
            theta = (max_PA_rad-min_PA_rad)/nsamples*j + min_PA_rad
            r = sep.rad[i]
            #
            # V2V3 coords of NIRCam aperture (NRCAFULL, V2Ref and V3Ref in file NIRCam_SIAF.xlxs; row13, cells P13 and Q13)
            Offset_V2_arcsec = 81.214
            Offset_V3_arcsec = -498.968
            #
            # coordinates of the point in V2V3
            x = r * np.sin(theta) * 180/np.pi + \
                Offset_V2_arcsec/3600.  # * np.cos(theta)
            y = r * np.cos(theta) * 180/np.pi + Offset_V3_arcsec/3600.
            #
            # find these coordinates in the LocalFrame
            xy_deg_V2V3 = ICRS(x*u.deg, y*u.deg)
            xy_deg_LocalFrame = xy_deg_V2V3.transform_to(LocalFrame)

            point = Point(xy_deg_LocalFrame.lon.value,
                          xy_deg_LocalFrame.lat.value)

            # CHECK IF THE POINT IS INSIDE THE A REGION
            isin_A.append(polygon_A.contains(point))
#            print(j, x, y, polygon_A.contains(point),
#                  r*180/np.pi, theta.deg+PA.degree[i])

            # CHECK IF THE POINT IS INSIDE THE B REGION
            isin_B.append(polygon_B.contains(point))
#            print('B', x, y, polygon_B.contains(point), theta.deg+PA.degree[i])

            # TRACK THE EDGES
            if (isin_A[j] == True) or (isin_B[j] == True):
                counter.append(1)
            else:
                counter.append(0)
    #        print(counter)
            if counter[-1] != counter_last:
                edge_rad = (theta+theta_last)/2.
                print("edge found at PA",  edge_rad.degree)
                angle_to_avoid.append(edge_rad.degree)
                up = -up
                plt.text(xy_deg_LocalFrame.lon.value-0.3, plot_yoffset+1+up,
                         "{:7.2f}".format(edge_rad.degree+PA.degree[i]), fontsize='16')
            counter_last = counter[-1]

            plt.plot(xy_deg_LocalFrame.lon.value,
                     xy_deg_LocalFrame.lat.value+plot_yoffset, 'ro')

        for ia in range(0, len(angle_to_avoid), 2):
            txt = "avoid from: {:6.2f}deg to {:6.2f}deg".format(
                angle_to_avoid[ia]+PA.degree[i], angle_to_avoid[ia+1]+PA.degree[i])
            plt.text(-2.8, 8.5-ia*0.12, txt, fontsize=18)
           
        fig = plt.gcf()  #grab the plot as fig
        #plt.show()       #plot the plot, loosing it.... 
        #plt.clf()        #cleanup
        
        #outuput to file
        cwd = os.getcwd()
        output_dir = cwd+"/plots"
        isExist = os.path.exists(output_dir)
        if not isExist:
            os.makedirs(output_dir)
        fig.savefig(output_dir+'/APT'+str(APT_nr)+' Target = '+c1.to_string('hmsdms') +
                    '- Bright star = '+c2[i].to_string('hmsdms')+'.jpg')
        fig.clf()
    print('Done')        
           
