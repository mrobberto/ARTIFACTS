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


from APT_tools.target_coverage_tool.target_coverage_tool.tct import TCT
from PA_tools import Claws_tool_3 as Claws
import sys, getopt

APT_nr = sys.argv[1]    # comment to debug
#APT_nr = 1258#2756#1288      # uncomment to debug

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

#check the other RADEC and if not already done, do.
if RA.size > 1 :  #do we have more than one coordinate?
    print(RA.size)
    #if yes, loop over the coordinatate
    for i_pointing in range(1,RA.size):
        #only checks if  they are they different from the previous ones. 
        #More general check to be written
        if (RA[i_pointing] != RA[i_pointing-1]) and (Dec[i_pointing] != Dec[i_pointing-1]):
            Claws.Claws_tool_3(APT_nr,RA[i_pointing], Dec[i_pointing])

print("Done")                                
                            

