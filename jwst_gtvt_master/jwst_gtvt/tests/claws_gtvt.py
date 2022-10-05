""" JWST GENERAL AND MOVING TARGET VISIBILITY TOOL TESTS"""

import os
cwd = os.getcwd()
gtvt_dir = cwd+"/../.."
os.chdir(gtvt_dir)


from jwst_gtvt.find_tgt_info import main as jwst_gtvt_main
from jwst_gtvt.find_tgt_info import get_target_ephemeris

os.chdir(cwd)

class mimic_parser:
    """ This tool uses argparse. This class lets us mimic the calls to the argparser (i.e. args.variable).
    in the source code. Parsing the arguments makes it difficult to write pytests, this is the easiest near 
    term solution.
    """
    def __init__(self, APT_nr=None, visit=None, ra=None, dec=None, start_date=None, end_date = None, desg=None, fixed=True, save_plot=None):
        """Class initializer
        
        Parameters
        ----------
        ra : str
            right ascension of target in hours:minutes:seconds or sexigesimal coords
        dec : str
            declination of target in hours:minutes:seconds or sexigesimal coords
        desg : str
            desigantion (target name) in horizons database (for moving targets)
        fixed : bool
            boolean argument for moving target support. True will use the GTVT and False will use MTVT.
        """

        if fixed:
            self.APT_nr = APT_nr
            self.visit = visit
            self.ra = ra
            self.dec = dec
            self.start_date = start_date
            self.end_date = end_date
            self.save_plot = 'APT'+str(APT_nr)+'_Visit='+visit+'.png'


        if not fixed:
            self.desg = desg
            self.smallbody = True
            self.save_plot = 'test'
            self.start_date = '2020-01-01'
            self.end_date = '2023-12-31'


        self.save_table = None
        self.no_verbose = True
        self.v3pa = None
        self.instrument = None
        self.name = None

def test_ra_dec_hour_min_sec():
    """Test end-to-end for jwst_gtvt fixed target given ra and dec in hours:minutes:seconds"""
    args = mimic_parser(ra='16:52:58.9', dec='02:24:03')
    jwst_gtvt_main(args)


def test_ra_dec_sexigesimal(APT_nr,visit,ra,dec,start_date,end_date):
    """Test end-to-end for jwst_gtvt fixed target given ra and dec in sexigesimal coords"""
#    args = mimic_parser(ra='253.2458', dec='2.4008')
    args = mimic_parser(APT_nr=APT_nr, visit=visit, ra=ra, dec=dec, start_date=start_date, end_date=end_date, save_plot='plot.png')
    jwst_gtvt_main(args) #points to /jwst_gtvt_master/jwst_gtvt/find_tgt_info.py


def test_moving_target():
    """Test end-to-end for moving target portion of tool"""
    
    args = mimic_parser(fixed=False, desg=['Ceres'])

    name, args.ra, args.dec = get_target_ephemeris(
        ' '.join(args.desg), args.start_date, args.end_date, smallbody=args.smallbody)
    if args.name is None:
        args.name = name

    jwst_gtvt_main(args, fixed=False)
