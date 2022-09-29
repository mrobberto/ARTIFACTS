#! /usr/bin/env python

"""This module lists constants that are used by the target coverage tool
"""

from matplotlib.path import Path

# Matplotlib info
CODES_ONE_SCA = [Path.MOVETO, Path.LINETO, Path.LINETO, Path.LINETO, Path.CLOSEPOLY]

# List of instruments the tool supports
SUPPORTED_INSTRUMENTS = ['nircam']

# Reference apertures for plotting
REFERENCE_APERTURES = {'nircam': 'NRCALL_FULL',
                       'niriss': 'NIS_CEN'}
