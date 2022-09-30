#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 29 20:00:26 2022

@author: robberto
"""


from APT_tools.target_coverage_tool.target_coverage_tool.tct import TCT
from PA_tools import Claws_tool_3 as Claws

APT_nr = 1288
pointing_file = '/Users/robberto/Desktop/APT'+str(APT_nr)+'.pointing'
observations = 1
exposures = 1
instrument = 'nircam'

t = TCT(pointing_file=pointing_file, observations=observations, exposures=exposures, instrument=instrument, output_dir='./')
RA,Dec = t.read_instrument_pointing()

Claws.Claws_tool_3(APT_nr,RA, Dec)


