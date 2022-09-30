#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 29 20:00:26 2022

@author: robberto
"""

from target_coverage_tool.tct import TCT

pointing_file = '/Users/robberto/Desktop/APT1288.pointing'
observations = 1
exposures = 1
instrument = 'nircam'

t = TCT(pointing_file=pointing_file, observations=observations, exposures=exposures, instrument=instrument, output_dir='./')
t.read_instrument_pointing()