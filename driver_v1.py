#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 29 20:00:26 2022

@author: robberto


from the terminal, run
> cd .../ARTIFACTS
> python driver.py 2756
where 2756 is the proposal number. 
The APT file is in the local ARTIFACTS/APT_pointing_files folder, exported as APT2756.pointing from APT
"""
#run from the terminal, e.g.
#> python driver_v1.py 2756

def get_angles(APT_nr,RA,Dec):
    cwd = os.getcwd()
    gtvt_dir_test = cwd+"/jwst_gtvt_master/jwst_gtvt/tests"
    os.chdir(gtvt_dir_test)
    #import sys
    #sys.path.append(gtvt_dir)
    #
#) Check 1    
    #to run from terminal, e.g.  python driver_v1.py 2756
    from jwst_gtvt_master.jwst_gtvt.tests import claws_gtvt as gtvt        
    #
    #to run in spyder, debug mode, use
    #import claws_gtvt as gtvt                    
    
    # string to search in file
    with open(cwd+'/APT_pointing_files/APT'+str(APT_nr)+'.sql', 'r') as fp:
        # read all lines using readline()
        lines = fp.readlines()
        for row in lines:
    		# check if string present on a current line
            word = 'insert into absolute_time_windows'
    #		 print(row.find(word))
            # find() method returns -1 if the value is not found,
            # if found it return 0
            if row.find(word) == 0:
                print('string exists in file')
                print('line Number:', lines.index(row))
                visit = row[121:122]
                end_date = row[98:108]
                start_date= row[131:141]
                print(visit,start_date, end_date)
                
                gtvt.test_ra_dec_sexigesimal(APT_nr,visit,RA,Dec,start_date,end_date)
#print("Done get_angles") 


from APT_tools.target_coverage_tool.target_coverage_tool.tct import TCT
from PA_tools import Claws_tool_3 as Claws
import sys, getopt
import os


#APT_nr = sys.argv[1]    # comment to debug
APT_nr = 2756#1288#1258      # uncomment to debug

print('running APT nr.',APT_nr,'\n')
pointing_file = './APT_pointing_files/APT'+str(APT_nr)+'.pointing'
observations = 1
exposures = 1
instrument = 'nircam'

#First extract the coordinates of the targets from the APT file   
#
t = TCT(pointing_file=pointing_file, observations=observations, exposures=exposures, instrument=instrument, output_dir='./')
RA,Dec = t.read_instrument_pointing()

#find if there are multiple coordinates to be analyzed, and eliminates repetion

#Get the first OBS, in any case...    
Claws.Claws_tool_3(APT_nr,RA[0], Dec[0])
get_angles(APT_nr,RA[0], Dec[0])

#check the other RADEC and if not already done, do.
if RA.size > 1 :  #do we have more than one coordinate?
    print(RA.size)
    #if yes, loop over the coordinatate
    for i_pointing in range(1,RA.size):
        #only checks if  they are they different from the previous ones. 
        #More general check to be written
        if (RA[i_pointing] != RA[i_pointing-1]) and (Dec[i_pointing] != Dec[i_pointing-1]):
           Claws.Claws_tool_3(APT_nr,RA[i_pointing], Dec[i_pointing])
           get_angles(APT_nr,RA[i_pointing], Dec[i_pointing])
print("Done")                                
 

