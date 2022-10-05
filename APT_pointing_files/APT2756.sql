-- -*- mode:sql; eval: (sql-highlight-ms-keywords) -*-
--
/*
** unknown.sql: SQL to load proposal 2756 into a PPSDB.
** Compatible with PPSDB Version PPSDB 94
** APT Output Product
** 
** APT Version: Version 2022.5.3  JWST PRD: PRDOPSSOC-058 
** Date: Mon Oct 03 18:16:33 GMT 2022
** USAGE: isql -D pps_apt_dev < unknown.sql
*/



create table #AOK (aok int)
go
begin transaction
go
insert into #AOK values (0)
go

delete from deleted_entities where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from apt_diagnostics where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from special_commanding_approval where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from visit_linkspec where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from link where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from absolute_time_windows where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from absolute_orient where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from background_noise where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from special_requirements where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from link_requirements where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from momentum_unload_templates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from realtime_commanding_parameters where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from realtime_commanding_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from isim_dictionary_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from isim_asic_tuning_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from wfsc_ga_templates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from external_parallel_constraints where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from fgs_focus_deltas where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from fgs_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from fgs_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from fgs_templates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from niriss_focus_deltas where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from niriss_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from niriss_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from niriss_target_acq where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from niriss_templates where program = 2756
go
up`date #AOK set aok = aok+@@error
go

delete from nirspec_reference_stars where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_focus_deltas where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_msa_config where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_sources where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_msa_at_exposure_spec where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_msa_quadrant where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_msa_metadata where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_target_acq where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_fss_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_ifu_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_msa_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nirspec_templates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nircam_wheel where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nircam_linear_actuator_positions where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nircam_imaging_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nircam_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nircam_target_acq where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from nircam_templates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from miri_imaging_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from miri_mrs_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from miri_coronagraphy_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from miri_lrs_dither where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from miri_exposure_specification where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from miri_target_acq where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from miri_templates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from exposures where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from instruments where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from moving_target_procedure where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from visit_targets where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from visit_track where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from visit_overheads where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from visit where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from pure_parallel_visit_attachment where parallel_program = 2756
go
update #AOK set aok = aok+@@error
go

delete from group_targets where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from moving_target where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from fixed_target where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from generic_target where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from confirmation_chart_track where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from target_description where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from target where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from psf_reference_observation where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from observation_association_candidates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from association_candidates where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from target_acq_reference_stars where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from observation where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from mosaic where program = 2756
go
update #AOK set aok = aok+@@error
go

delete from program where program = 2756
go
update #AOK set aok = aok+@@error
go

insert into program ( abstract, apt_version, category, observing_description, plib_revision, program, title ) values ( N'After subtracting newly acquired JWST NIRISS pre-imaging from archival HST WFC3 IR imaging of the Abell 2744 galaxy cluster field, we have identified a magnified supernova (SN) at redshift z=3.47. From F115W, F150W, and F200W imaging, which correspond approximately to rest-frame U, B, and V bands, we find that the SN''s colors may be most consistent with a H-rich Type II SN, and we measure an absolute V-band magnitude of approximately -18.1. These make the SN the most distant example of a SN that is not a superluminous SN (M_V < -21 mag). ' + char(10) + char(10) + 'Core-collapse supernova (SN) rates from the CANDELS and CLASH surveys are in tension with inferences about the cosmic star-formation history from observations of galaxies. From our simulations, we find only p=0.08 that a SN with redshift exceeding 2 would be found in the first two galaxy-cluster JWST visits, assuming the inferred CANDELS+CLASH rates. We request NIRSpec PRISM spectroscopy to determine if the SN is a core-collapse event, and two epochs of imaging to construct its light curve.  The same visits will also provide follow-up imaging and spectroscopy of a microlensing event of a highly magnified star at z=2.65. ' + char(10) + char(10) + 'The repeat imaging epochs will be the first to a galaxy-cluster field and the publicly available dataset will provide a new view of the transient universe.', '2022.5.3', 'DD', N'We will acquire two epochs of NIRCam follow-up imaging (F115W, F150W, F200W, F277W, F356W, and F444W) of the newly identified supernova (SN) at z=3.47, and, simultaneously, of the location of the microlensing event of a star at z=2.65. These are required to construct the light curve of the SN, since the next planned visits to the Abell 2744 will not be until late October or November, which will be a full month after discovery in the rest frame at z=3.47. The first NIRCam visit should be scheduled as soon as possible without disruption of the schedule, and second should follow approximately between the first epoch and the planned UNCOVER NIRCam visit in late October or November.' + char(10) + char(10) + 'We will acquire spectroscopy of the SN, microlensing events, and z>5 galaxies as soon as possible, without disruption of the telescope schedule, using NIRSpec MSA multi-object PRISM spectroscopy.', 0, 2756, N'Imaging and Spectroscopic Follow-up of a Supernova at Redshift z=3.47' )
go
update #AOK set aok = aok+@@error
go

insert into observation ( label, observation, plib_revision, program ) values ( 'NIRCam Imaging Epoch 1', 3, 0, 2756 )
go
update #AOK set aok = aok+@@error
go

insert into observation ( label, observation, plib_revision, program ) values ( 'NIRCam Imaging Epoch 2', 2, 0, 2756 )
go
update #AOK set aok = aok+@@error
go

insert into observation ( label, observation, plib_revision, program ) values ( 'NIRSpec Spectroscopy', 1, 0, 2756 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '101', -30.392450999999994, 1, 'NOT_REQUIRED', 2756, 3.6046427, 101, 1.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '102', -30.394839999999988, 1, 'NOT_REQUIRED', 2756, 3.5888365, 102, 1.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '202', -30.40072409999999, 1, 'NOT_REQUIRED', 2756, 3.5950141, 202, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '203', -30.408666499999978, 1, 'NOT_REQUIRED', 2756, 3.5775207, 203, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '301', -30.3938584, 1, 'NOT_REQUIRED', 2756, 3.5893762, 301, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '307', -30.401818100000014, 1, 'NOT_REQUIRED', 2756, 3.5766318, 307, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '10018', -30.397762353675205, 1, 'NOT_REQUIRED', 2756, 3.60801480209017, 10018, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '10020', -30.434479347419995, 1, 'NOT_REQUIRED', 2756, 3.5814385021995503, 10020, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '10025', -30.385806366882207, 1, 'NOT_REQUIRED', 2756, 3.59609394761611, 10025, 0.01 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '20015', -30.401776170456117, 1, 'NOT_REQUIRED', 2756, 3.5985207134286603, 20015, 0.07 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '20021', -30.393605639644477, 1, 'NOT_REQUIRED', 2756, 3.57674087195524, 20021, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '20025', -30.386998675786803, 1, 'NOT_REQUIRED', 2756, 3.5869646359657, 20025, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '30001', -30.386226642381416, 1, 'NOT_REQUIRED', 2756, 3.60870096440705, 30001, 0.24 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40003', -30.409975571972495, 1, 'NOT_REQUIRED', 2756, 3.55329452124681, 40003, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40020', -30.403627852843613, 1, 'NOT_REQUIRED', 2756, 3.56783291585328, 40020, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40021', -30.404190165908915, 1, 'NOT_REQUIRED', 2756, 3.57289383251577, 40021, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40033', -30.401545628404392, 1, 'NOT_REQUIRED', 2756, 3.57145925326337, 40033, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40036', -30.40654233297937, 1, 'NOT_REQUIRED', 2756, 3.55205338472252, 40036, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40048', -30.42539229264281, 1, 'NOT_REQUIRED', 2756, 3.61649924787786, 40048, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40050', -30.42628748549572, 1, 'NOT_REQUIRED', 2756, 3.57984276314573, 40050, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40056', -30.422875646015598, 1, 'NOT_REQUIRED', 2756, 3.61686985938425, 40056, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40059', -30.428612392312687, 1, 'NOT_REQUIRED', 2756, 3.61842902901566, 40059, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40060', -30.428636328069274, 1, 'NOT_REQUIRED', 2756, 3.61793625111433, 40060, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40062', -30.430034655416193, 1, 'NOT_REQUIRED', 2756, 3.58561078571492, 40062, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40065', -30.431358173353203, 1, 'NOT_REQUIRED', 2756, 3.57189210978145, 40065, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40066', -30.431894772966018, 1, 'NOT_REQUIRED', 2756, 3.59971635637494, 40066, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40067', -30.432230298843482, 1, 'NOT_REQUIRED', 2756, 3.6115949098920694, 40067, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40074', -30.413065462724713, 1, 'NOT_REQUIRED', 2756, 3.5543328797534506, 40074, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40087', -30.4154265807241, 1, 'NOT_REQUIRED', 2756, 3.61332697852103, 40087, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40090', -30.41687661893377, 1, 'NOT_REQUIRED', 2756, 3.59643931593366, 40090, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40092', -30.41804833103248, 1, 'NOT_REQUIRED', 2756, 3.6190873235199295, 40092, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40094', -30.41869912399062, 1, 'NOT_REQUIRED', 2756, 3.6049141686830897, 40094, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40173', -30.3943865133798, 1, 'NOT_REQUIRED', 2756, 3.56733098616341, 40173, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40178', -30.383918239264574, 1, 'NOT_REQUIRED', 2756, 3.59762483313512, 40178, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40185', -30.386547871076687, 1, 'NOT_REQUIRED', 2756, 3.58796495839925, 40185, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40190', -30.388650125699428, 1, 'NOT_REQUIRED', 2756, 3.60936003557491, 40190, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40196', -30.38961565793278, 1, 'NOT_REQUIRED', 2756, 3.55802874858235, 40196, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40199', -30.389859043591287, 1, 'NOT_REQUIRED', 2756, 3.57375717236184, 40199, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '40202', -30.42452145731113, 1, 'NOT_REQUIRED', 2756, 3.61654083563267, 40202, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '50017', -30.403692956853604, 1, 'NOT_REQUIRED', 2756, 3.57005581596541, 50017, 0.02 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '50034', -30.402208061819522, 1, 'NOT_REQUIRED', 2756, 3.6061156099774, 50034, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '50036', -30.42264936439733, 1, 'NOT_REQUIRED', 2756, 3.59895936521845, 50036, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '70002', -30.396596199999976, 1, 'NOT_REQUIRED', 2756, 3.6054351, 70002, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '70006', -30.398279000000002, 1, 'NOT_REQUIRED', 2756, 3.5988055, 70006, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '70023', -30.386769809696716, 1, 'NOT_REQUIRED', 2756, 3.59568847913372, 70023, 0.02 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '70027', -30.409055599999988, 1, 'NOT_REQUIRED', 2756, 3.5696987, 70027, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80007', -30.408027300000015, 1, 'NOT_REQUIRED', 2756, 3.5668615, 80007, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80012', -30.38868869999999, 1, 'NOT_REQUIRED', 2756, 3.6013578, 80012, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80051', -30.399250488372786, 1, 'NOT_REQUIRED', 2756, 3.5685329038194507, 80051, 0.02 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80065', -30.405193999999995, 1, 'NOT_REQUIRED', 2756, 3.5924125, 80065, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80075', -30.406227589195282, 1, 'NOT_REQUIRED', 2756, 3.56754583312223, 80075, 0.86 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80076', -30.38879827191522, 1, 'NOT_REQUIRED', 2756, 3.57145957047054, 80076, 0.11 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80095', -30.390868099999977, 1, 'NOT_REQUIRED', 2756, 3.6025039, 80095, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80119', -30.392179899999974, 1, 'NOT_REQUIRED', 2756, 3.5901754, 80119, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80137', -30.406074699999976, 1, 'NOT_REQUIRED', 2756, 3.5675637, 80137, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '80142', -30.386748099999977, 1, 'NOT_REQUIRED', 2756, 3.6003278, 80142, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '90005', -30.38930294464768, 1, 'NOT_REQUIRED', 2756, 3.60226938183333, 90005, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '90012', -30.395621236631712, 1, 'NOT_REQUIRED', 2756, 3.60710973073226, 90012, 0.06 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '90026', -30.406923218039708, 1, 'NOT_REQUIRED', 2756, 3.56903226890286, 90026, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '90031', -30.389858749695293, 1, 'NOT_REQUIRED', 2756, 3.59061651390177, 90031, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '90078', -30.400984914905393, 1, 'NOT_REQUIRED', 2756, 3.57790960505531, 90078, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '100001', -30.382234799999992, 1, 'NOT_REQUIRED', 2756, 3.603845, 100001, 0.01 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '100002', -30.382237537886283, 1, 'NOT_REQUIRED', 2756, 3.6033766104485405, 100002, 0.02 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '100004', -30.380931900000007, 1, 'NOT_REQUIRED', 2756, 3.6065708, 100004, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '110003', -30.395541577173788, 1, 'NOT_REQUIRED', 2756, 3.59069392878307, 110003, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '150015', -30.405896299999995, 1, 'NOT_REQUIRED', 2756, 3.5508545, 150015, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '150053', -30.428528099999994, 1, 'NOT_REQUIRED', 2756, 3.5811963, 150053, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160024', -30.42906666309989, 1, 'NOT_REQUIRED', 2756, 3.58013309078528, 160024, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160118', -30.43639296406161, 1, 'NOT_REQUIRED', 2756, 3.6128728594573, 160118, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160123', -30.424970947804525, 1, 'NOT_REQUIRED', 2756, 3.5646000624469, 160123, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160133', -30.424404136361204, 1, 'NOT_REQUIRED', 2756, 3.58027535874061, 160133, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160149', -30.429916617944286, 1, 'NOT_REQUIRED', 2756, 3.61601815445058, 160149, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160150', -30.430210937808795, 1, 'NOT_REQUIRED', 2756, 3.55745502732809, 160150, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160158', -30.4312920876647, 1, 'NOT_REQUIRED', 2756, 3.59897420219938, 160158, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160159', -30.427033690124915, 1, 'NOT_REQUIRED', 2756, 3.62298137609363, 160159, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160162', -30.38395503070859, 1, 'NOT_REQUIRED', 2756, 3.61085798677165, 160162, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160168', -30.433530320825014, 1, 'NOT_REQUIRED', 2756, 3.56944398430718, 160168, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160170', -30.42612820256818, 1, 'NOT_REQUIRED', 2756, 3.5656963551288894, 160170, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160173', -30.38943707028858, 1, 'NOT_REQUIRED', 2756, 3.55804825354759, 160173, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160182', -30.398250729060294, 1, 'NOT_REQUIRED', 2756, 3.56598447360118, 160182, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160183', -30.39864579483583, 1, 'NOT_REQUIRED', 2756, 3.61365649088376, 160183, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160185', -30.399070762605902, 1, 'NOT_REQUIRED', 2756, 3.5569091915367, 160185, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160197', -30.400338148193782, 1, 'NOT_REQUIRED', 2756, 3.57037060961023, 160197, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160236', -30.413110315958477, 1, 'NOT_REQUIRED', 2756, 3.55130232353765, 160236, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160260', -30.40604108245219, 1, 'NOT_REQUIRED', 2756, 3.56248255549803, 160260, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160271', -30.435094300000003, 1, 'NOT_REQUIRED', 2756, 3.5810431, 160271, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160272', -30.433608499999988, 1, 'NOT_REQUIRED', 2756, 3.5838698, 160272, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160273', -30.431377302475994, 1, 'NOT_REQUIRED', 2756, 3.57454318321022, 160273, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160275', -30.428296348996412, 1, 'NOT_REQUIRED', 2756, 3.58107051215471, 160275, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160277', -30.42787229999999, 1, 'NOT_REQUIRED', 2756, 3.5767465000000005, 160277, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160278', -30.427334700000017, 1, 'NOT_REQUIRED', 2756, 3.5968173, 160278, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160281', -30.425926803268624, 1, 'NOT_REQUIRED', 2756, 3.59014544856263, 160281, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160284', -30.425263617269593, 1, 'NOT_REQUIRED', 2756, 3.58083273131993, 160284, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160289', -30.423598252528677, 1, 'NOT_REQUIRED', 2756, 3.59952588371021, 160289, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160294', -30.419381999999985, 1, 'NOT_REQUIRED', 2756, 3.5976812, 160294, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160298', -30.404261200000008, 1, 'NOT_REQUIRED', 2756, 3.5533943999999997, 160298, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160307', -30.396214715958195, 1, 'NOT_REQUIRED', 2756, 3.56044772096435, 160307, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160321', -30.39188585833648, 1, 'NOT_REQUIRED', 2756, 3.61379889460417, 160321, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160325', -30.394936099999992, 1, 'NOT_REQUIRED', 2756, 3.5575961, 160325, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160326', -30.39127510000003, 1, 'NOT_REQUIRED', 2756, 3.5642189, 160326, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160345', -30.403887499999996, 1, 'NOT_REQUIRED', 2756, 3.552931, 160345, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '160355', -30.401349511611215, 1, 'NOT_REQUIRED', 2756, 3.5615744134734, 160355, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '320021', -30.431806100000017, 1, 'NOT_REQUIRED', 2756, 3.5617739, 320021, 0.05 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '320023', -30.414991097144593, 1, 'NOT_REQUIRED', 2756, 3.6103627393609705, 320023, 1.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '320028', -30.427276399999982, 1, 'NOT_REQUIRED', 2756, 3.5983994, 320028, 0.44 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '320029', -30.42613670000003, 1, 'NOT_REQUIRED', 2756, 3.5579637, 320029, 0.96 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '320035', -30.419344299999977, 1, 'NOT_REQUIRED', 2756, 3.6169749, 320035, 0.97 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '340975', -30.401800591982294, 1, 'NOT_REQUIRED', 2756, 3.57661597223614, 340975, 0.03 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '390022', -30.380195800000024, 1, 'NOT_REQUIRED', 2756, 3.6077454, 390022, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '410005', -30.392461000000026, 1, 'NOT_REQUIRED', 2756, 3.6046458, 410005, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '410044', -30.396335802613525, 1, 'NOT_REQUIRED', 2756, 3.5928633749318895, 410044, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '410045', -30.3970964361074, 1, 'NOT_REQUIRED', 2756, 3.59261910154857, 410045, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '410067', -30.388132449948785, 1, 'NOT_REQUIRED', 2756, 3.57104889841984, 410067, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '410069', -30.38551409279711, 1, 'NOT_REQUIRED', 2756, 3.59113416539591, 410069, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '500001', -30.391701399999988, 1, 'NOT_REQUIRED', 2756, 3.5848742, 500001, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '500002', -30.398155599999996, 1, 'NOT_REQUIRED', 2756, 3.5896967, 500002, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '500003', -30.40198170000002, 1, 'NOT_REQUIRED', 2756, 3.5913992, 500003, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '500010', -30.405555800000002, 1, 'NOT_REQUIRED', 2756, 3.5858162, 500010, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:25.1010 -30:23:30.70', -30.391862413649164, 1, 'NOT_REQUIRED', 2756, 3.6045875634281783, -1, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:24.0280 -30:24:57.50', -30.415971117899232, 1, 'NOT_REQUIRED', 2756, 3.6001165692791877, -2, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:17.7308 -30:23:27.05', -30.390845898942928, 1, 'NOT_REQUIRED', 2756, 3.5738785270153923, -3, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:18.8363 -30:25:13.11', -30.420308709464734, 1, 'NOT_REQUIRED', 2756, 3.578484588237553, -4, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:25.5688 -30:22:51.61', -30.38100378145674, 1, 'NOT_REQUIRED', 2756, 3.606536740317734, -5, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:26.1242 -30:24:4.50', -30.40125042529769, 1, 'NOT_REQUIRED', 2756, 3.6088507114699158, -6, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:25.0787 -30:23:30.79', -30.391887273177304, 1, 'NOT_REQUIRED', 2756, 3.60449445034762, -7, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:22.0178 -30:25:1.28', -30.417021650259983, 1, 'NOT_REQUIRED', 2756, 3.5917407466546414, -8, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:19.3509 -30:23:8.78', -30.38577102786013, 1, 'NOT_REQUIRED', 2756, 3.5806288837165785, -9, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:16.9277 -30:24:18.41', -30.405113682362867, 1, 'NOT_REQUIRED', 2756, 3.5705319612960067, -10, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:18.1396 -30:26:3.46', -30.434293150413737, 1, 'NOT_REQUIRED', 2756, 3.575581638801462, -11, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_sources ( alias, dec, observation, pre_image_type, program, ra, source_id, stellarity ) values ( '00:14:15.0881 -30:23:50.19', -30.397273776768547, 1, 'NOT_REQUIRED', 2756, 3.562867168598332, -12, 0.0 )
go
update #AOK set aok = aok+@@error
go

insert into target ( extended, plib_revision, program, standard_target_name, target_id, target_name, target_type ) values ( 'UNKNOWN', 0, 2756, 'ABELL2744', 1, 'ABELL2744', 'FIXED' )
go
update #AOK set aok = aok+@@error
go

insert into fixed_target ( dec_computed, dec_literal, dec_uncertainty_computed, program, ra_computed, ra_literal, ra_uncertainty_computed, target_id ) values ( -30.394886111111134, '-30 23 41.59', 0.1, 2756, 3.596111666666667, '00 14 23.0668', 0.1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_description ( category, keyword, program, target_id ) values ( 'Clusters of Galaxies', 'Abell clusters', 2756, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target ( extended, plib_revision, program, standard_target_name, target_id, target_name, target_type ) values ( 'UNKNOWN', 0, 2756, '', 4, 'MSA-CAT-V9', 'FIXED' )
go
update #AOK set aok = aok+@@error
go

insert into fixed_target ( dec_computed, dec_literal, dec_uncertainty_computed, program, ra_computed, ra_literal, ra_uncertainty_computed, target_id ) values ( -30.396302777777805, '-30 23 46.69', 0.1, 2756, 3.586205, '00 14 20.6892', 0.1, 4 )
go
update #AOK set aok = aok+@@error
go

insert into observation_association_candidates ( association_candidate_id, observation, program ) values ( 'o003', 3, 2756 )
go
update #AOK set aok = aok+@@error
go

insert into association_candidates ( association_candidate_id, program, reason, type ) values ( 'o003', 2756, 'This candidate consists of a single observation.', 'OBSERVATION' )
go
update #AOK set aok = aok+@@error
go

insert into observation_association_candidates ( association_candidate_id, observation, program ) values ( 'o002', 2, 2756 )
go
update #AOK set aok = aok+@@error
go

insert into association_candidates ( association_candidate_id, program, reason, type ) values ( 'o002', 2756, 'This candidate consists of a single observation.', 'OBSERVATION' )
go
update #AOK set aok = aok+@@error
go

insert into observation_association_candidates ( association_candidate_id, observation, program ) values ( 'o001', 1, 2756 )
go
update #AOK set aok = aok+@@error
go

insert into association_candidates ( association_candidate_id, program, reason, type ) values ( 'o001', 2756, 'This candidate consists of a single observation.', 'OBSERVATION' )
go
update #AOK set aok = aok+@@error
go

insert into visit ( apt_prd_name, background_noise, charged_duration, data_volume, defer_orient_selection, guide_star_acquisition_duration, initial_overhead_duration, internal_target, max_data_rate, mosaic, number_of_scas, observation, orient_required, oss_version, overhead_duration, parallels_allowed, pcs_mode, plib_revision, pointing_expansion, program, scheduling_duration, science_duration, slew_duration, template, time_series_observation, visit, visit_type ) values ( 'PRDOPSSOC-058', 0.4, 11914, 11466.9119712, 'N', 312, 330, 'N', 2.1701172661796795, 'N', 11, 3, 'N', '8.4.14', 2146, 'Y', 'FINEGUIDE', 0, 'TILE_FIRST', 2756, 8470, 6324, 1800, 'NIRCam Imaging', 'N', 1, 'PRIME_TARGETED_FIXED' )
go
update #AOK set aok = aok+@@error
go

insert into visit_overheads ( direct_scheduling_overhead_duration, exposure_overhead_duration, instrument_overhead_duration, irs2_overhead_duration, mechanism_motion_duration, msa_configuration_duration, observation, observatory_overhead_duration, oss_script_overhead_duration, program, small_angle_maneuver_duration, target_acquisition_duration, visit, visit_level_overhead_duration ) values ( 0, 549, 2146, 0, 442, 0, 3, 1644, 67, 2756, 684, 0, 1, 92 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.98126, 3, 2756, '2022-06-05T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.94011, 3, 2756, '2022-06-06T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.90098, 3, 2756, '2022-06-07T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.86356, 3, 2756, '2022-06-08T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.82721, 3, 2756, '2022-06-09T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.79264, 3, 2756, '2022-06-10T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.7601, 3, 2756, '2022-06-11T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.72811, 3, 2756, '2022-06-12T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.69788, 3, 2756, '2022-06-13T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.66888, 3, 2756, '2022-06-14T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.64123, 3, 2756, '2022-06-15T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.61423, 3, 2756, '2022-06-16T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.58826, 3, 2756, '2022-06-17T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.56319, 3, 2756, '2022-06-18T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.55944, 3, 2756, '2022-06-19T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.53535, 3, 2756, '2022-06-20T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.50979, 3, 2756, '2022-06-21T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.48695, 3, 2756, '2022-06-22T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.46518, 3, 2756, '2022-06-23T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.4443, 3, 2756, '2022-06-24T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.42413, 3, 2756, '2022-06-25T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.40503, 3, 2756, '2022-06-26T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.38673, 3, 2756, '2022-06-27T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.36213, 3, 2756, '2022-06-28T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.34481, 3, 2756, '2022-06-29T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.32761, 3, 2756, '2022-06-30T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.31136, 3, 2756, '2022-07-01T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.29587, 3, 2756, '2022-07-02T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.28062, 3, 2756, '2022-07-03T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.26569, 3, 2756, '2022-07-04T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.25147, 3, 2756, '2022-07-05T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.24861, 3, 2756, '2022-07-06T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.23515, 3, 2756, '2022-07-07T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.22227, 3, 2756, '2022-07-08T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.23469, 3, 2756, '2022-07-09T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.22214, 3, 2756, '2022-07-10T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.21041, 3, 2756, '2022-07-11T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.199, 3, 2756, '2022-07-12T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.18745, 3, 2756, '2022-07-13T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.17651, 3, 2756, '2022-07-14T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.1658, 3, 2756, '2022-07-15T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.15571, 3, 2756, '2022-07-16T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.14597, 3, 2756, '2022-07-17T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.13644, 3, 2756, '2022-07-18T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.12747, 3, 2756, '2022-07-19T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.11862, 3, 2756, '2022-07-20T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.11021, 3, 2756, '2022-07-21T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.10216, 3, 2756, '2022-07-22T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.09416, 3, 2756, '2022-07-23T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.08646, 3, 2756, '2022-07-24T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0791, 3, 2756, '2022-07-25T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.07188, 3, 2756, '2022-07-26T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.06525, 3, 2756, '2022-07-27T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.05832, 3, 2756, '2022-07-28T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.03132, 3, 2756, '2022-07-29T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.02482, 3, 2756, '2022-07-30T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.02458, 3, 2756, '2022-07-31T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01899, 3, 2756, '2022-08-01T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01346, 3, 2756, '2022-08-02T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01484, 3, 2756, '2022-08-03T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.00974, 3, 2756, '2022-08-04T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.00513, 3, 2756, '2022-08-05T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0, 3, 2756, '2022-08-06T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01192, 3, 2756, '2022-10-20T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01874, 3, 2756, '2022-10-21T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0251, 3, 2756, '2022-10-22T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.03263, 3, 2756, '2022-10-23T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0344, 3, 2756, '2022-10-24T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.04216, 3, 2756, '2022-10-25T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.05048, 3, 2756, '2022-10-26T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.04645, 3, 2756, '2022-10-27T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.05493, 3, 2756, '2022-10-28T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.06345, 3, 2756, '2022-10-29T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.07254, 3, 2756, '2022-10-30T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.08167, 3, 2756, '2022-10-31T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.09101, 3, 2756, '2022-11-01T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.10148, 3, 2756, '2022-11-02T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.11082, 3, 2756, '2022-11-03T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.12148, 3, 2756, '2022-11-04T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.1326, 3, 2756, '2022-11-05T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.14403, 3, 2756, '2022-11-06T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.15592, 3, 2756, '2022-11-07T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.16017, 3, 2756, '2022-11-08T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.17277, 3, 2756, '2022-11-09T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.17513, 3, 2756, '2022-11-10T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.18795, 3, 2756, '2022-11-11T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.20111, 3, 2756, '2022-11-12T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.21492, 3, 2756, '2022-11-13T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.2293, 3, 2756, '2022-11-14T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.24435, 3, 2756, '2022-11-15T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.25924, 3, 2756, '2022-11-16T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.27496, 3, 2756, '2022-11-17T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.2913, 3, 2756, '2022-11-18T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.3085, 3, 2756, '2022-11-19T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.32587, 3, 2756, '2022-11-20T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.34329, 3, 2756, '2022-11-21T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.34979, 3, 2756, '2022-11-22T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.36049, 3, 2756, '2022-11-23T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.37907, 3, 2756, '2022-11-24T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.39883, 3, 2756, '2022-11-25T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.41903, 3, 2756, '2022-11-26T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.43959, 3, 2756, '2022-11-27T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.46113, 3, 2756, '2022-11-28T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.48324, 3, 2756, '2022-11-29T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.50595, 3, 2756, '2022-11-30T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.52953, 3, 2756, '2022-12-01T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.55381, 3, 2756, '2022-12-02T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.57878, 3, 2756, '2022-12-03T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.60425, 3, 2756, '2022-12-04T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.63068, 3, 2756, '2022-12-05T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.65217, 3, 2756, '2022-12-06T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.68022, 3, 2756, '2022-12-07T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.69079, 3, 2756, '2022-12-08T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.72039, 3, 2756, '2022-12-09T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.75048, 3, 2756, '2022-12-10T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.78237, 3, 2756, '2022-12-11T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.81493, 3, 2756, '2022-12-12T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.84937, 3, 2756, '2022-12-13T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.88451, 3, 2756, '2022-12-14T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.92174, 3, 2756, '2022-12-15T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.95981, 3, 2756, '2022-12-16T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 2.0, 3, 2756, '2022-12-17T12:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.98126, 3, 2756, '2023-06-05T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.94011, 3, 2756, '2023-06-06T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.90098, 3, 2756, '2023-06-07T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.86356, 3, 2756, '2023-06-08T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.82721, 3, 2756, '2023-06-09T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.79264, 3, 2756, '2023-06-10T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.7601, 3, 2756, '2023-06-11T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.72811, 3, 2756, '2023-06-12T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.69788, 3, 2756, '2023-06-13T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.66888, 3, 2756, '2023-06-14T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.64123, 3, 2756, '2023-06-15T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.61423, 3, 2756, '2023-06-16T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.58826, 3, 2756, '2023-06-17T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.56319, 3, 2756, '2023-06-18T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.55944, 3, 2756, '2023-06-19T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.53535, 3, 2756, '2023-06-20T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.50979, 3, 2756, '2023-06-21T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.48695, 3, 2756, '2023-06-22T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.46518, 3, 2756, '2023-06-23T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.4443, 3, 2756, '2023-06-24T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.42413, 3, 2756, '2023-06-25T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.40503, 3, 2756, '2023-06-26T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.38673, 3, 2756, '2023-06-27T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.36213, 3, 2756, '2023-06-28T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.34481, 3, 2756, '2023-06-29T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.32761, 3, 2756, '2023-06-30T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.31136, 3, 2756, '2023-07-01T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.29587, 3, 2756, '2023-07-02T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.28062, 3, 2756, '2023-07-03T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.26569, 3, 2756, '2023-07-04T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.25147, 3, 2756, '2023-07-05T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.24861, 3, 2756, '2023-07-06T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.23515, 3, 2756, '2023-07-07T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.22227, 3, 2756, '2023-07-08T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.23469, 3, 2756, '2023-07-09T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.22214, 3, 2756, '2023-07-10T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.21041, 3, 2756, '2023-07-11T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.199, 3, 2756, '2023-07-12T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.18745, 3, 2756, '2023-07-13T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.17651, 3, 2756, '2023-07-14T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.1658, 3, 2756, '2023-07-15T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.15571, 3, 2756, '2023-07-16T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.14597, 3, 2756, '2023-07-17T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.13644, 3, 2756, '2023-07-18T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.12747, 3, 2756, '2023-07-19T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.11862, 3, 2756, '2023-07-20T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.11021, 3, 2756, '2023-07-21T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.10216, 3, 2756, '2023-07-22T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.09416, 3, 2756, '2023-07-23T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.08646, 3, 2756, '2023-07-24T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0791, 3, 2756, '2023-07-25T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.07188, 3, 2756, '2023-07-26T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.06525, 3, 2756, '2023-07-27T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.05832, 3, 2756, '2023-07-28T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.03132, 3, 2756, '2023-07-29T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.02482, 3, 2756, '2023-07-30T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.02458, 3, 2756, '2023-07-31T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01899, 3, 2756, '2023-08-01T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01346, 3, 2756, '2023-08-02T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01484, 3, 2756, '2023-08-03T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.00974, 3, 2756, '2023-08-04T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.00513, 3, 2756, '2023-08-05T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0, 3, 2756, '2023-08-06T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01192, 3, 2756, '2023-10-20T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.01874, 3, 2756, '2023-10-21T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0251, 3, 2756, '2023-10-22T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.03263, 3, 2756, '2023-10-23T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.0344, 3, 2756, '2023-10-24T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.04216, 3, 2756, '2023-10-25T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.05048, 3, 2756, '2023-10-26T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.04645, 3, 2756, '2023-10-27T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.05493, 3, 2756, '2023-10-28T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.06345, 3, 2756, '2023-10-29T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.07254, 3, 2756, '2023-10-30T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.08167, 3, 2756, '2023-10-31T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.09101, 3, 2756, '2023-11-01T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.10148, 3, 2756, '2023-11-02T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.11082, 3, 2756, '2023-11-03T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.12148, 3, 2756, '2023-11-04T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.1326, 3, 2756, '2023-11-05T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.14403, 3, 2756, '2023-11-06T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.15592, 3, 2756, '2023-11-07T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.16017, 3, 2756, '2023-11-08T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.17277, 3, 2756, '2023-11-09T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.17513, 3, 2756, '2023-11-10T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.18795, 3, 2756, '2023-11-11T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.20111, 3, 2756, '2023-11-12T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.21492, 3, 2756, '2023-11-13T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.2293, 3, 2756, '2023-11-14T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.24435, 3, 2756, '2023-11-15T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.25924, 3, 2756, '2023-11-16T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.27496, 3, 2756, '2023-11-17T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.2913, 3, 2756, '2023-11-18T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.3085, 3, 2756, '2023-11-19T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.32587, 3, 2756, '2023-11-20T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.34329, 3, 2756, '2023-11-21T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.34979, 3, 2756, '2023-11-22T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.36049, 3, 2756, '2023-11-23T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.37907, 3, 2756, '2023-11-24T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.39883, 3, 2756, '2023-11-25T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.41903, 3, 2756, '2023-11-26T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.43959, 3, 2756, '2023-11-27T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.46113, 3, 2756, '2023-11-28T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.48324, 3, 2756, '2023-11-29T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.50595, 3, 2756, '2023-11-30T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.52953, 3, 2756, '2023-12-01T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.55381, 3, 2756, '2023-12-02T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.57878, 3, 2756, '2023-12-03T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.60425, 3, 2756, '2023-12-04T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.63068, 3, 2756, '2023-12-05T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.65217, 3, 2756, '2023-12-06T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.68022, 3, 2756, '2023-12-07T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.69079, 3, 2756, '2023-12-08T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.72039, 3, 2756, '2023-12-09T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.75048, 3, 2756, '2023-12-10T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.78237, 3, 2756, '2023-12-11T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.81493, 3, 2756, '2023-12-12T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.84937, 3, 2756, '2023-12-13T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.88451, 3, 2756, '2023-12-14T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.92174, 3, 2756, '2023-12-15T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 1.95981, 3, 2756, '2023-12-16T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into background_noise ( noise_value, observation, program, time_point, visit ) values ( 2.0, 3, 2756, '2023-12-17T18:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into visit_track ( active, external_time_charged, internal_time_charged, lrp_state, modified_time_apt, observation, parallel_time_charged, program, status_comment, visit, visit_status ) values ( 'Y', 3.31, 0.0, 'NOT_READY', SYSDATETIMEOFFSET(), 3, 0.0, 2756, 'Set by APT', 1, 'IMPLEMENTATION' )
go
update #AOK set aok = aok+@@error
go

insert into instruments ( observation, prime_si, program, record_id, visit ) values ( 3, 'NIRCAM', 2756, 1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into visit ( apt_prd_name, charged_duration, data_volume, defer_orient_selection, guide_star_acquisition_duration, initial_overhead_duration, internal_target, max_data_rate, mosaic, number_of_scas, observation, orient_required, oss_version, overhead_duration, parallels_allowed, pcs_mode, plib_revision, pointing_expansion, program, scheduling_duration, science_duration, slew_duration, template, time_series_observation, visit, visit_type ) values ( 'PRDOPSSOC-058', 11914, 11466.9119712, 'N', 312, 330, 'N', 2.1701172661796795, 'N', 11, 2, 'N', '8.4.14', 2146, 'Y', 'FINEGUIDE', 0, 'TILE_FIRST', 2756, 8470, 6324, 1800, 'NIRCam Imaging', 'N', 1, 'PRIME_TARGETED_FIXED' )
go
update #AOK set aok = aok+@@error
go

insert into visit_overheads ( direct_scheduling_overhead_duration, exposure_overhead_duration, instrument_overhead_duration, irs2_overhead_duration, mechanism_motion_duration, msa_configuration_duration, observation, observatory_overhead_duration, oss_script_overhead_duration, program, small_angle_maneuver_duration, target_acquisition_duration, visit, visit_level_overhead_duration ) values ( 0, 549, 2146, 0, 442, 0, 2, 1644, 67, 2756, 684, 0, 1, 92 )
go
update #AOK set aok = aok+@@error
go

insert into visit_track ( active, external_time_charged, internal_time_charged, lrp_state, modified_time_apt, observation, parallel_time_charged, program, status_comment, visit, visit_status ) values ( 'Y', 3.31, 0.0, 'NOT_READY', SYSDATETIMEOFFSET(), 2, 0.0, 2756, 'Set by APT', 1, 'IMPLEMENTATION' )
go
update #AOK set aok = aok+@@error
go

insert into instruments ( observation, prime_si, program, record_id, visit ) values ( 2, 'NIRCAM', 2756, 1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into visit ( apt_prd_name, charged_duration, data_volume, defer_orient_selection, guide_star_acquisition_duration, initial_overhead_duration, internal_target, max_data_rate, mosaic, number_of_scas, observation, orient_required, oss_version, overhead_duration, parallels_allowed, pcs_mode, plib_revision, pointing_expansion, program, scheduling_duration, science_duration, slew_duration, template, time_series_observation, visit, visit_type ) values ( 'PRDOPSSOC-058', 10993, 2161.72503744, 'N', 312, 1967, 'N', 1.191882145188916, 'N', 3, 1, 'Y', '8.4.14', 3290, 'Y', 'FINEGUIDE', 0, 'TILE_FIRST', 2756, 7676, 4386, 1800, 'NIRSpec MultiObject Spectroscopy', 'N', 1, 'PRIME_TARGETED_FIXED' )
go
update #AOK set aok = aok+@@error
go

insert into visit_overheads ( direct_scheduling_overhead_duration, exposure_overhead_duration, instrument_overhead_duration, irs2_overhead_duration, mechanism_motion_duration, msa_configuration_duration, observation, observatory_overhead_duration, oss_script_overhead_duration, program, small_angle_maneuver_duration, target_acquisition_duration, visit, visit_level_overhead_duration ) values ( 0, 306, 3290, 0, 210, 234, 1, 1517, 57, 2756, 315, 1637, 1, 219 )
go
update #AOK set aok = aok+@@error
go

insert into visit_track ( active, external_time_charged, internal_time_charged, lrp_state, modified_time_apt, observation, parallel_time_charged, planning_visit, program, status_comment, visit, visit_status ) values ( 'Y', 3.05, 0.0, 'NOT_READY', SYSDATETIMEOFFSET(), 1, 0.0, 'N', 2756, 'Set by APT', 1, 'IMPLEMENTATION' )
go
update #AOK set aok = aok+@@error
go

insert into instruments ( observation, prime_si, program, record_id, visit ) values ( 1, 'NIRSPEC', 2756, 1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into visit_targets ( observation, program, target_id, visit ) values ( 3, 2756, 1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into visit_targets ( observation, program, target_id, visit ) values ( 2, 2756, 1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into visit_targets ( observation, program, target_id, visit ) values ( 1, 2756, 4, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, dither_point_index, exposure, exposure_spec_order_number, external_parallel_slot_duration, ideal_x_position, ideal_y_position, max_data_rate, mosaic_tile_order_number, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, pointing_sequence_number, pointing_type, program, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'BASE', 0, 0, 0, 0, 0, 82.1002330883488, -3.099960412344579, 2.1701172661796795, 0, 3, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 0, 'BASE', 2756, 1, 0, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 2473, 880.0, -30.39399395968849, 1, 1, 596, 1, 596, 0.0, 82.1002330883488, -3.099960412344579, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 526.102, 1, 'SCIENCE', 2756, 3.622549581654884, 'SHALLOW4', 'POLYGON ICRS 3.672477222337919 -30.41244131967113 3.573159877745758 -30.411824796311972 3.573726124099031 -30.375397071482496 3.671785794757272 -30.37597136799667 ', 1, 1, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.395660706309513, 2, 2, 565, 1, 565, 0.0, 81.90022686885018, 2.9000389222082883, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -169.7364637202957, 3.5448825064121476, 526.102, 2, 'SCIENCE', 2756, 3.6224880289720693, 'SHALLOW4', 'POLYGON ICRS 3.672416511976334 -30.414108089902697 3.573097472728982 -30.413491519983896 3.5736637520114005 -30.377063795423453 3.6717250952626337 -30.37763813790855 ', 1, 1, -83.80092491228503, -490.12822446329665, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39571378705915, 3, 3, 565, 1, 565, 0.0, 87.90024258767201, 3.100044793283532, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -175.7365243233224, 3.7431527847379122, 526.102, 3, 'SCIENCE', 2756, 3.6244203733459734, 'SHALLOW4', 'POLYGON ICRS 3.6743492487547806 -30.414160432526273 3.575030143344518 -30.413545324425 3.575595702307692 -30.37711759153524 3.673657110175846 -30.377690490714087 ', 1, 1, -89.8011850549838, -489.93569084411774, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39404703957968, 4, 4, 565, 1, 565, 0.0, 88.10024921914881, -2.8999544556275096, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -175.93479460332827, -2.256906260136246, 526.102, 4, 'SCIENCE', 2756, 3.624481893221692, 'SHALLOW4', 'POLYGON ICRS 3.6744099261629777 -30.412493661401353 3.575092515411988 -30.41187859983489 3.57565804147056 -30.375450866676545 3.6737177767417233 -30.37602371990903 ', 1, 1, -89.99371945507441, -495.93593451786546, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 2473, 880.0, -30.39399395968849, 1, 1, 596, 2, 596, 0.0, 82.1002330883488, -3.099960412344579, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 526.102, 5, 'SCIENCE', 2756, 3.622549581654884, 'SHALLOW4', 'POLYGON ICRS 3.672477222337919 -30.41244131967113 3.573159877745758 -30.411824796311972 3.573726124099031 -30.375397071482496 3.671785794757272 -30.37597136799667 ', 1, 1, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.395660706309513, 2, 2, 565, 2, 565, 0.0, 81.90022686885018, 2.9000389222082883, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -169.7364637202957, 3.5448825064121476, 526.102, 6, 'SCIENCE', 2756, 3.6224880289720693, 'SHALLOW4', 'POLYGON ICRS 3.672416511976334 -30.414108089902697 3.573097472728982 -30.413491519983896 3.5736637520114005 -30.377063795423453 3.6717250952626337 -30.37763813790855 ', 1, 1, -83.80092491228503, -490.12822446329665, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39571378705915, 3, 3, 565, 2, 565, 0.0, 87.90024258767201, 3.100044793283532, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -175.7365243233224, 3.7431527847379122, 526.102, 7, 'SCIENCE', 2756, 3.6244203733459734, 'SHALLOW4', 'POLYGON ICRS 3.6743492487547806 -30.414160432526273 3.575030143344518 -30.413545324425 3.575595702307692 -30.37711759153524 3.673657110175846 -30.377690490714087 ', 1, 1, -89.8011850549838, -489.93569084411774, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39404703957968, 4, 4, 565, 2, 565, 0.0, 88.10024921914881, -2.8999544556275096, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -175.93479460332827, -2.256906260136246, 526.102, 8, 'SCIENCE', 2756, 3.624481893221692, 'SHALLOW4', 'POLYGON ICRS 3.6744099261629777 -30.412493661401353 3.575092515411988 -30.41187859983489 3.57565804147056 -30.375450866676545 3.6737177767417233 -30.37602371990903 ', 1, 1, -89.99371945507441, -495.93593451786546, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 2473, 880.0, -30.39399395968849, 1, 1, 596, 3, 596, 0.0, 82.1002330883488, -3.099960412344579, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 526.102, 9, 'SCIENCE', 2756, 3.622549581654884, 'SHALLOW4', 'POLYGON ICRS 3.672477222337919 -30.41244131967113 3.573159877745758 -30.411824796311972 3.573726124099031 -30.375397071482496 3.671785794757272 -30.37597136799667 ', 1, 1, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.395660706309513, 2, 2, 565, 3, 565, 0.0, 81.90022686885018, 2.9000389222082883, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -169.7364637202957, 3.5448825064121476, 526.102, 10, 'SCIENCE', 2756, 3.6224880289720693, 'SHALLOW4', 'POLYGON ICRS 3.672416511976334 -30.414108089902697 3.573097472728982 -30.413491519983896 3.5736637520114005 -30.377063795423453 3.6717250952626337 -30.37763813790855 ', 1, 1, -83.80092491228503, -490.12822446329665, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39571378705915, 3, 3, 565, 3, 565, 0.0, 87.90024258767201, 3.100044793283532, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -175.7365243233224, 3.7431527847379122, 526.102, 11, 'SCIENCE', 2756, 3.6244203733459734, 'SHALLOW4', 'POLYGON ICRS 3.6743492487547806 -30.414160432526273 3.575030143344518 -30.413545324425 3.575595702307692 -30.37711759153524 3.673657110175846 -30.377690490714087 ', 1, 1, -89.8011850549838, -489.93569084411774, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39404703957968, 4, 4, 565, 3, 565, 0.0, 88.10024921914881, -2.8999544556275096, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 3, 'NRCA5_FULL_OSS', -175.93479460332827, -2.256906260136246, 526.102, 12, 'SCIENCE', 2756, 3.624481893221692, 'SHALLOW4', 'POLYGON ICRS 3.6744099261629777 -30.412493661401353 3.575092515411988 -30.41187859983489 3.57565804147056 -30.375450866676545 3.6737177767417233 -30.37602371990903 ', 1, 1, -89.99371945507441, -495.93593451786546, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, dither_point_index, exposure, exposure_spec_order_number, external_parallel_slot_duration, ideal_x_position, ideal_y_position, max_data_rate, mosaic_tile_order_number, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, pointing_sequence_number, pointing_type, program, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'BASE', 0, 0, 0, 0, 0, 82.1002330883488, -3.099960412344579, 2.1701172661796795, 0, 2, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 0, 'BASE', 2756, 1, 0, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 2473, 880.0, -30.39399395968849, 1, 1, 596, 1, 596, 0.0, 82.1002330883488, -3.099960412344579, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 526.102, 1, 'SCIENCE', 2756, 3.622549581654884, 'SHALLOW4', 'POLYGON ICRS 3.672477222337919 -30.41244131967113 3.573159877745758 -30.411824796311972 3.573726124099031 -30.375397071482496 3.671785794757272 -30.37597136799667 ', 1, 1, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.395660706309513, 2, 2, 565, 1, 565, 0.0, 81.90022686885018, 2.9000389222082883, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -169.7364637202957, 3.5448825064121476, 526.102, 2, 'SCIENCE', 2756, 3.6224880289720693, 'SHALLOW4', 'POLYGON ICRS 3.672416511976334 -30.414108089902697 3.573097472728982 -30.413491519983896 3.5736637520114005 -30.377063795423453 3.6717250952626337 -30.37763813790855 ', 1, 1, -83.80092491228503, -490.12822446329665, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39571378705915, 3, 3, 565, 1, 565, 0.0, 87.90024258767201, 3.100044793283532, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -175.7365243233224, 3.7431527847379122, 526.102, 3, 'SCIENCE', 2756, 3.6244203733459734, 'SHALLOW4', 'POLYGON ICRS 3.6743492487547806 -30.414160432526273 3.575030143344518 -30.413545324425 3.575595702307692 -30.37711759153524 3.673657110175846 -30.377690490714087 ', 1, 1, -89.8011850549838, -489.93569084411774, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39404703957968, 4, 4, 565, 1, 565, 0.0, 88.10024921914881, -2.8999544556275096, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -175.93479460332827, -2.256906260136246, 526.102, 4, 'SCIENCE', 2756, 3.624481893221692, 'SHALLOW4', 'POLYGON ICRS 3.6744099261629777 -30.412493661401353 3.575092515411988 -30.41187859983489 3.57565804147056 -30.375450866676545 3.6737177767417233 -30.37602371990903 ', 1, 1, -89.99371945507441, -495.93593451786546, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 2473, 880.0, -30.39399395968849, 1, 1, 596, 2, 596, 0.0, 82.1002330883488, -3.099960412344579, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 526.102, 5, 'SCIENCE', 2756, 3.622549581654884, 'SHALLOW4', 'POLYGON ICRS 3.672477222337919 -30.41244131967113 3.573159877745758 -30.411824796311972 3.573726124099031 -30.375397071482496 3.671785794757272 -30.37597136799667 ', 1, 1, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.395660706309513, 2, 2, 565, 2, 565, 0.0, 81.90022686885018, 2.9000389222082883, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -169.7364637202957, 3.5448825064121476, 526.102, 6, 'SCIENCE', 2756, 3.6224880289720693, 'SHALLOW4', 'POLYGON ICRS 3.672416511976334 -30.414108089902697 3.573097472728982 -30.413491519983896 3.5736637520114005 -30.377063795423453 3.6717250952626337 -30.37763813790855 ', 1, 1, -83.80092491228503, -490.12822446329665, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39571378705915, 3, 3, 565, 2, 565, 0.0, 87.90024258767201, 3.100044793283532, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -175.7365243233224, 3.7431527847379122, 526.102, 7, 'SCIENCE', 2756, 3.6244203733459734, 'SHALLOW4', 'POLYGON ICRS 3.6743492487547806 -30.414160432526273 3.575030143344518 -30.413545324425 3.575595702307692 -30.37711759153524 3.673657110175846 -30.377690490714087 ', 1, 1, -89.8011850549838, -489.93569084411774, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39404703957968, 4, 4, 565, 2, 565, 0.0, 88.10024921914881, -2.8999544556275096, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -175.93479460332827, -2.256906260136246, 526.102, 8, 'SCIENCE', 2756, 3.624481893221692, 'SHALLOW4', 'POLYGON ICRS 3.6744099261629777 -30.412493661401353 3.575092515411988 -30.41187859983489 3.57565804147056 -30.375450866676545 3.6737177767417233 -30.37602371990903 ', 1, 1, -89.99371945507441, -495.93593451786546, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 2473, 880.0, -30.39399395968849, 1, 1, 596, 3, 596, 0.0, 82.1002330883488, -3.099960412344579, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -169.93473399595436, -2.4551764640731526, 526.102, 9, 'SCIENCE', 2756, 3.622549581654884, 'SHALLOW4', 'POLYGON ICRS 3.672477222337919 -30.41244131967113 3.573159877745758 -30.411824796311972 3.573726124099031 -30.375397071482496 3.671785794757272 -30.37597136799667 ', 1, 1, -83.99345890029113, -496.12846822217307, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.395660706309513, 2, 2, 565, 3, 565, 0.0, 81.90022686885018, 2.9000389222082883, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -169.7364637202957, 3.5448825064121476, 526.102, 10, 'SCIENCE', 2756, 3.6224880289720693, 'SHALLOW4', 'POLYGON ICRS 3.672416511976334 -30.414108089902697 3.573097472728982 -30.413491519983896 3.5736637520114005 -30.377063795423453 3.6717250952626337 -30.37763813790855 ', 1, 1, -83.80092491228503, -490.12822446329665, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39571378705915, 3, 3, 565, 3, 565, 0.0, 87.90024258767201, 3.100044793283532, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -175.7365243233224, 3.7431527847379122, 526.102, 11, 'SCIENCE', 2756, 3.6244203733459734, 'SHALLOW4', 'POLYGON ICRS 3.6743492487547806 -30.414160432526273 3.575030143344518 -30.413545324425 3.575595702307692 -30.37711759153524 3.673657110175846 -30.377690490714087 ', 1, 1, -89.8011850549838, -489.93569084411774, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRCALL_FULL', 'SCIENCE', 0, 880.0, -30.39404703957968, 4, 4, 565, 3, 565, 0.0, 88.10024921914881, -2.8999544556275096, 'N', 2.1701172661796795, 1, 4, 10, 1, 10, 2, 'NRCA5_FULL_OSS', -175.93479460332827, -2.256906260136246, 526.102, 12, 'SCIENCE', 2756, 3.624481893221692, 'SHALLOW4', 'POLYGON ICRS 3.6744099261629777 -30.412493661401353 3.575092515411988 -30.41187859983489 3.57565804147056 -30.375450866676545 3.6737177767417233 -30.37602371990903 ', 1, 1, -89.99371945507441, -495.93593451786546, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, dither_point_index, exposure, exposure_spec_order_number, external_parallel_slot_duration, ideal_x_position, ideal_y_position, max_data_rate, mosaic_tile_order_number, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, pointing_sequence_number, pointing_type, program, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'BASE', 0, 0, 0, 0, 0, 3.6984650422477365, -58.786232260358545, 1.191882145188916, 0, 1, 'NRS1_FULL_OSS', -116.51416880977837, -59.88622287618733, 0, 'BASE', 2756, 4, 0, 342.4407748792135, -381.8768177075526, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'TARGET_ACQ_IMAGE', 0, 48.0, -30.41249722222244, 0, 1, 84, 0, 0, 29.624655, 3.6984650422477365, -58.786232260358545, 'N', 1.191882145188916, 0, 4, 3, 1, 2, 1, 'NRS1_FULL_OSS', -116.51416880977837, -59.88622287618733, 32.21, 1, 'TARGET_ACQUISITION', 2756, 3.588911249998032, 'NRSRAPID', 'POLYGON ICRS 3.561427108568031 -30.44873547155123 3.54756479125367 -30.389342589142984 3.616060915851525 -30.377028865149445 3.6309357725851914 -30.436242908635222 ', 4, 0, 342.4407748792135, -381.8768177075526, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'TARGET_ACQ_IMAGE', 0, 48.0, -30.412561582564532, 0, 2, 84, 0, 0, 29.624655, 3.564412073581167, -59.05094404533849, 'Y', 1.191882145188916, 0, 4, 3, 1, 2, 1, 'NRS1_FULL_OSS', -116.37710515576268, -60.149387952500675, 32.21, 1, 'TARGET_ACQUISITION', 2756, 3.588970954223219, 'NRSRAPID', 'POLYGON ICRS 3.5614868168794804 -30.448799844364203 3.547624454159332 -30.389406968257845 3.6161206163512256 -30.377093213122578 3.630995519124208 -30.436307249839274 ', 4, 0, 342.16511446255043, -381.7670276251192, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'TARGET_ACQ_IMAGE', 0, 48.0, -30.41249722222244, 0, 3, 84, 0, 0, 29.624655, 3.6984650422477365, -58.786232260358545, 'Y', 1.191882145188916, 0, 4, 3, 1, 2, 1, 'NRS1_FULL_OSS', -116.51416880977837, -59.88622287618733, 32.21, 1, 'TARGET_ACQUISITION', 2756, 3.588911249998032, 'NRSRAPID', 'POLYGON ICRS 3.561427108568031 -30.44873547155123 3.54756479125367 -30.389342589142984 3.616060915851525 -30.377028865149445 3.6309357725851914 -30.436242908635222 ', 4, 0, 342.4407748792135, -381.8768177075526, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'TARGET_ACQ_IMAGE', 0, 48.0, -30.412561582564532, 0, 4, 84, 0, 0, 29.624655, 3.564412073581167, -59.05094404533849, 'Y', 1.191882145188916, 0, 4, 3, 1, 2, 1, 'NRS1_FULL_OSS', -116.37710515576268, -60.149387952500675, 32.21, 1, 'TARGET_ACQUISITION', 2756, 3.588970954223219, 'NRSRAPID', 'POLYGON ICRS 3.5614868168794804 -30.448799844364203 3.547624454159332 -30.389406968257845 3.6161206163512256 -30.377093213122578 3.630995519124208 -30.436307249839274 ', 4, 0, 342.16511446255043, -381.7670276251192, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'TARGET_ACQ_IMAGE', 0, 48.0, -30.41249722222244, 0, 5, 84, 0, 0, 29.624655, 3.6984650422477365, -58.786232260358545, 'Y', 1.191882145188916, 0, 4, 3, 1, 2, 1, 'NRS1_FULL_OSS', -116.51416880977837, -59.88622287618733, 32.21, 1, 'TARGET_ACQUISITION', 2756, 3.588911249998032, 'NRSRAPID', 'POLYGON ICRS 3.561427108568031 -30.44873547155123 3.54756479125367 -30.389342589142984 3.616060915851525 -30.377028865149445 3.6309357725851914 -30.436242908635222 ', 4, 0, 342.4407748792135, -381.8768177075526, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'SCIENCE', 2467, 272.0, -30.41249722222244, 1, 1, 782, 1, 782, 29.624655, 3.6984650422477365, -58.786232260358545, 'N', 0.4931427730526565, 1, 4, 17, 1, 2, 1, 'NRS1_FULL_OSS', -116.51416880977837, -59.88622287618733, 730.1, 2, 'SCIENCE', 2756, 3.588911249998032, 'NRS', 'POLYGON ICRS 3.5614271085679987 -30.44873547155123 3.5475647912536377 -30.38934258914304 3.6160609158514925 -30.3770288651495 3.6309357725851585 -30.43624290863528 ', 4, 1, 342.4407748792135, -381.8768177075526, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'SCIENCE', 0, 272.0, -30.41235339181401, 2, 2, 782, 1, 782, 29.624655, 3.6984729753718035, -58.25725826189493, 'N', 0.4931427730526565, 1, 4, 17, 1, 2, 1, 'NRS1_FULL_OSS', -116.52021059207112, -59.357283652199584, 730.1, 3, 'SCIENCE', 2756, 3.588876399268831, 'NRS', 'POLYGON ICRS 3.5613922853516997 -30.448591633874063 3.5475300095398272 -30.389198747779233 3.616026037702068 -30.376885041962908 3.630900851333533 -30.436099089401694 ', 4, 1, 342.7907736866977, -382.27344640781666, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'SCIENCE', 0, 272.0, -30.412641065111412, 3, 3, 782, 1, 782, 29.624655, 3.698456155226957, -59.31525239158243, 'N', 0.4931427730526565, 1, 4, 17, 1, 2, 1, 'NRS1_FULL_OSS', -116.50812554481435, -60.415208220592895, 730.1, 4, 'SCIENCE', 2756, 3.588946104169761, 'NRS', 'POLYGON ICRS 3.5614619352251906 -30.448879321709736 3.5475995764045587 -30.38948644298853 3.61609579744691 -30.377172700816057 3.6309706972867084 -30.43638674034838 ', 4, 1, 342.0907448329831, -381.48015504727937, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'SCIENCE', 2467, 272.0, -30.413124444444183, 1, 1, 782, 2, 782, 29.624655, 22.424179909647904, -57.18075373808848, 'N', 0.4931427730526565, 1, 4, 17, 1, 2, 1, 'NRS1_FULL_OSS', -135.25696844039516, -58.49448136878477, 730.1, 5, 'SCIENCE', 2756, 3.5829014583312704, 'NRS', 'POLYGON ICRS 3.5554149063882807 -30.449361436999595 3.5415561566702434 -30.38996792092178 3.610053478126192 -30.37765733160069 3.6249247857339544 -30.43687205620199 ', 4, 1, 357.54389957036847, -370.69086298101865, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'SCIENCE', 0, 272.0, -30.41298061246198, 2, 2, 782, 2, 782, 29.624655, 22.424187901105185, -56.65177976347568, 'N', 0.4931427730526565, 1, 4, 17, 1, 2, 1, 'NRS1_FULL_OSS', -135.26301022321837, -57.96554211855981, 730.1, 6, 'SCIENCE', 2756, 3.5828666162079736, 'NRS', 'POLYGON ICRS 3.555380091813956 -30.449217597731092 3.54152138357887 -30.389824077967546 3.6100186085951482 -30.377513506816566 3.6248898731201673 -30.43672823536991 ', 4, 1, 357.89389840581117, -371.0874916248031, 1 )
go
update #AOK set aok = aok+@@error
go

insert into exposures ( AperName, apt_label, dark_parallel_slot_duration, data_volume_mib, dec_center_rotation, dither_point_index, exposure, exposure_duration, exposure_spec_order_number, external_parallel_slot_duration, fixed_orient_used, ideal_x_position, ideal_y_position, implicit_exposure, max_data_rate, mosaic_tile_order_number, number_of_detector_outputs, number_of_groups, number_of_integrations, number_of_scas, observation, oss_AperName, oss_ideal_x_position, oss_ideal_y_position, photon_collecting_duration, pointing_sequence_number, pointing_type, program, ra_center_rotation, readout_pattern, region_shape, target_id, target_order_number, v2, v3, visit ) values ( 'NRS_FULL_MSA', 'SCIENCE', 0, 272.0, -30.413268288907204, 3, 3, 782, 2, 782, 29.624655, 22.424170964557845, -57.70977384577448, 'N', 0.4931427730526565, 1, 4, 17, 1, 2, 1, 'NRS1_FULL_OSS', -135.25092517524251, -59.0234667397038, 730.1, 7, 'SCIENCE', 2756, 3.582936303896232, 'NRS', 'POLYGON ICRS 3.555449724402648 -30.449505288749606 3.541590933197878 -30.390111776357973 3.6100883511023802 -30.37780116886495 3.624959701796815 -30.437015889513763 ', 4, 1, 357.1938694961704, -370.29420037681575, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_templates ( modules, observation, program, visit ) values ( 'ALL', 3, 2756, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_imaging_dither ( dither_id, observation, primary_dither_type, primary_dithers, program, subpixel_dither_type, subpixel_positions, visit ) values ( 1, 3, 'INTRAMODULEBOX', '4', 2756, 'STANDARD', 1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_exposure_specification ( data_volume_mib, dither_id, filter_long, filter_short, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, subarray, visit ) values ( 3520.0, 1, 'F444W', 'F115W', 10, 1, 3, 1, 2756, 'SHALLOW4', 'FULL', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_exposure_specification ( data_volume_mib, dither_id, filter_long, filter_short, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, subarray, visit ) values ( 3520.0, 1, 'F356W', 'F150W', 10, 1, 3, 2, 2756, 'SHALLOW4', 'FULL', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_exposure_specification ( data_volume_mib, dither_id, filter_long, filter_short, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, subarray, visit ) values ( 3520.0, 1, 'F277W', 'F200W', 10, 1, 3, 3, 2756, 'SHALLOW4', 'FULL', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_templates ( modules, observation, program, visit ) values ( 'ALL', 2, 2756, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_imaging_dither ( dither_id, observation, primary_dither_type, primary_dithers, program, subpixel_dither_type, subpixel_positions, visit ) values ( 1, 2, 'INTRAMODULEBOX', '4', 2756, 'STANDARD', 1, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_exposure_specification ( data_volume_mib, dither_id, filter_long, filter_short, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, subarray, visit ) values ( 3520.0, 1, 'F444W', 'F115W', 10, 1, 2, 1, 2756, 'SHALLOW4', 'FULL', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_exposure_specification ( data_volume_mib, dither_id, filter_long, filter_short, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, subarray, visit ) values ( 3520.0, 1, 'F356W', 'F150W', 10, 1, 2, 2, 2756, 'SHALLOW4', 'FULL', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nircam_exposure_specification ( data_volume_mib, dither_id, filter_long, filter_short, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, subarray, visit ) values ( 3520.0, 1, 'F277W', 'F200W', 10, 1, 2, 3, 2756, 'SHALLOW4', 'FULL', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_templates ( observation, program, target_acq_method, visit ) values ( 1, 2756, 'MSATA', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_dither ( dither_id, nod_type, observation, pattern_type, program, visit ) values ( 1, '3 Shutter Slitlet', 1, 'NONE', 2756, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_dither ( dither_id, nod_type, observation, pattern_type, program, visit ) values ( 2, '3 Shutter Slitlet', 1, 'NONE', 2756, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_exposure_specification ( autocal, data_volume_mib, dither_id, filter, grating, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, verification_image, visit ) values ( 'NONE', 816.0, 1, 'CLEAR', 'PRISM', 17, 1, 1, 1, 2756, 'NRS', 'N', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_metadata ( dither_point_index, msa_metadata_id, observation, program, visit, background, estimated_source_in_shutter_x, estimated_source_in_shutter_y, primary_source, shutter_column, shutter_quadrant, shutter_row, shutter_state, slitlet_id, source_id ) values
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 69, 1, 63, 'OPEN', 2, 160159 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.244, 0.573, 'Y', 70, 1, 63, 'OPEN', 2, 160159 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 71, 1, 63, 'OPEN', 2, 160159 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 73, 2, 68, 'OPEN', 3, 160321 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.813, 0.365, 'Y', 74, 2, 68, 'OPEN', 3, 160321 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 75, 2, 68, 'OPEN', 3, 160321 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 130, 2, 79, 'OPEN', 4, 160162 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.818, 0.321, 'Y', 131, 2, 79, 'OPEN', 4, 160162 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 132, 2, 79, 'OPEN', 4, 160162 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 133, 1, 81, 'OPEN', 5, 40092 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.697, 0.430, 'Y', 134, 1, 81, 'OPEN', 5, 40092 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 135, 1, 81, 'OPEN', 5, 40092 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 127, 1, 109, 'OPEN', 6, 320035 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.210, 0.311, 'Y', 128, 1, 109, 'OPEN', 6, 320035 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 129, 1, 109, 'OPEN', 6, 320035 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 100, 2, 110, 'OPEN', 7, 40190 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.130, 0.433, 'Y', 101, 2, 110, 'OPEN', 7, 40190 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 102, 2, 110, 'OPEN', 7, 40190 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 117, 2, 110, 'OPEN', 8, 30001 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.788, 0.565, 'Y', 118, 2, 110, 'OPEN', 8, 30001 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 119, 2, 110, 'OPEN', 8, 30001 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.115, 0.901, 'Y', 156, 2, 120, 'OPEN', 9, 100004 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 157, 2, 120, 'OPEN', 9, 100004 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 64, 1, 124, 'OPEN', 10, 40060 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.582, 0.859, 'Y', 65, 1, 124, 'OPEN', 10, 40060 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 66, 1, 124, 'OPEN', 10, 40060 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 1, 128, 'OPEN', 11, 40202 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.715, 0.600, 'Y', 94, 1, 128, 'OPEN', 11, 40202 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 1, 128, 'OPEN', 11, 40202 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 58, 1, 149, 'OPEN', 12, 160149 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.795, 0.659, 'Y', 59, 1, 149, 'OPEN', 12, 160149 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 60, 1, 149, 'OPEN', 12, 160149 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 40, 2, 151, 'OPEN', 13, 10018 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.128, 0.766, 'Y', 41, 2, 151, 'OPEN', 13, 10018 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 42, 2, 151, 'OPEN', 13, 10018 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 56, 2, 155, 'OPEN', 14, 90012 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.385, 0.215, 'Y', 57, 2, 155, 'OPEN', 14, 90012 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 58, 2, 155, 'OPEN', 14, 90012 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 150, 2, 160, 'OPEN', 15, 100002 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.212, 0.910, 'Y', 151, 2, 160, 'OPEN', 15, 100002 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 152, 2, 160, 'OPEN', 15, 100002 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 163, 1, 171, 'OPEN', 16, 320023 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.691, 0.909, 'Y', 164, 1, 171, 'OPEN', 16, 320023 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 165, 1, 171, 'OPEN', 16, 320023 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 84, 2, 173, 'OPEN', 17, -1 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 85, 2, 173, 'OPEN', 17, -1 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 86, 2, 173, 'OPEN', 17, -1 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 174, 'OPEN', 18, 410005 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 174, 'OPEN', 18, 101 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.521, 0.402, 'N', 81, 2, 174, 'OPEN', 18, 410005 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.528, 0.473, 'Y', 81, 2, 174, 'OPEN', 18, 101 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 174, 'OPEN', 18, 410005 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 174, 'OPEN', 18, 101 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 51, 2, 177, 'OPEN', 19, 70002 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.172, 0.663, 'Y', 52, 2, 177, 'OPEN', 19, 70002 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 53, 2, 177, 'OPEN', 19, 70002 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 13, 2, 185, 'OPEN', 20, 50034 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.214, 0.236, 'Y', 14, 2, 185, 'OPEN', 20, 50034 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 15, 2, 185, 'OPEN', 20, 50034 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 2, 194, 'OPEN', 21, 80095 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.432, 0.692, 'Y', 94, 2, 194, 'OPEN', 21, 80095 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 2, 194, 'OPEN', 21, 80095 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 109, 2, 201, 'OPEN', 22, 80012 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.369, 0.758, 'Y', 110, 2, 201, 'OPEN', 22, 80012 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 111, 2, 201, 'OPEN', 22, 80012 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 19, 1, 203, 'OPEN', 23, 160118 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.373, 0.783, 'Y', 20, 1, 203, 'OPEN', 23, 160118 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 21, 1, 203, 'OPEN', 23, 160118 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 48, 1, 206, 'OPEN', 24, 40067 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.128, 0.588, 'Y', 49, 1, 206, 'OPEN', 24, 40067 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 50, 1, 206, 'OPEN', 24, 40067 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 124, 2, 207, 'OPEN', 25, 80142 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.662, 0.094, 'Y', 125, 2, 207, 'OPEN', 25, 80142 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 126, 2, 207, 'OPEN', 25, 80142 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 146, 2, 230, 'OPEN', 26, 40178 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.560, 0.478, 'Y', 147, 2, 230, 'OPEN', 26, 40178 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 148, 2, 230, 'OPEN', 26, 40178 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 145, 1, 243, 'OPEN', 27, 40094 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.760, 0.725, 'Y', 146, 1, 243, 'OPEN', 27, 40094 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 147, 1, 243, 'OPEN', 27, 40094 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 135, 2, 253, 'OPEN', 28, 10025 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.325, 0.561, 'Y', 136, 2, 253, 'OPEN', 28, 10025 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 137, 2, 253, 'OPEN', 28, 10025 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 25, 2, 270, 'OPEN', 29, 20015 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.339, 0.179, 'Y', 26, 2, 270, 'OPEN', 29, 20015 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 27, 2, 270, 'OPEN', 29, 20015 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 169, 1, 290, 'OPEN', 30, -2 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 170, 1, 290, 'OPEN', 30, -2 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 171, 1, 290, 'OPEN', 30, -2 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 36, 2, 307, 'OPEN', 31, 202 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.309, 0.430, 'Y', 37, 2, 307, 'OPEN', 31, 202 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 38, 2, 307, 'OPEN', 31, 202 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 68, 2, 319, 'OPEN', 32, 410044 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.583, 0.478, 'Y', 69, 2, 319, 'OPEN', 32, 410044 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 70, 2, 319, 'OPEN', 32, 410044 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 126, 1, 322, 'OPEN', 33, 50036 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.171, 0.599, 'Y', 127, 1, 322, 'OPEN', 33, 50036 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 128, 1, 322, 'OPEN', 33, 50036 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 63, 2, 324, 'OPEN', 34, 410045 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.485, 0.659, 'Y', 64, 2, 324, 'OPEN', 34, 410045 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 65, 2, 324, 'OPEN', 34, 410045 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 149, 1, 327, 'OPEN', 35, 160294 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.583, 0.755, 'Y', 150, 1, 327, 'OPEN', 35, 160294 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 151, 1, 327, 'OPEN', 35, 160294 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 99, 2, 338, 'OPEN', 36, 80119 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.666, 0.696, 'Y', 100, 2, 338, 'OPEN', 36, 80119 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 101, 2, 338, 'OPEN', 36, 80119 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 76, 2, 342, 'OPEN', 37, 110003 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.104, 0.434, 'Y', 77, 2, 342, 'OPEN', 37, 110003 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 342, 'OPEN', 37, 110003 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 140, 2, 348, 'OPEN', 38, 40185 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.231, 0.391, 'Y', 141, 2, 348, 'OPEN', 38, 40185 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 142, 2, 348, 'OPEN', 38, 40185 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 9, 2, 349, 'OPEN', 39, 80065 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.345, 0.614, 'Y', 10, 2, 349, 'OPEN', 39, 80065 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 11, 2, 349, 'OPEN', 39, 80065 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 32, 2, 351, 'OPEN', 40, 500003 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.962, 0.340, 'Y', 33, 2, 351, 'OPEN', 40, 500003 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 34, 2, 351, 'OPEN', 40, 500003 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 89, 2, 352, 'OPEN', 41, 301 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.453, 0.354, 'Y', 90, 2, 352, 'OPEN', 41, 301 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 91, 2, 352, 'OPEN', 41, 301 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 98, 1, 359, 'OPEN', 42, 160278 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.379, 0.175, 'Y', 99, 1, 359, 'OPEN', 42, 160278 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 100, 1, 359, 'OPEN', 42, 160278 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 59, 2, 360, 'OPEN', 43, 500002 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 60, 2, 360, 'OPEN', 43, 500002 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.736, 0.064, 'Y', 61, 2, 360, 'OPEN', 43, 500002 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 361, 'OPEN', 44, 102 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 361, 'OPEN', 44, 102 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 361, 'OPEN', 44, 102 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 83, 2, 361, 'OPEN', 44, 102 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.337, 0.398, 'Y', 84, 2, 361, 'OPEN', 44, 102 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 85, 2, 361, 'OPEN', 44, 102 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 3, 43, 'OPEN', 45, 40062 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.202, 0.614, 'Y', 94, 3, 43, 'OPEN', 45, 40062 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 3, 43, 'OPEN', 45, 40062 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 106, 4, 44, 'OPEN', 46, 20021 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.387, 0.388, 'Y', 107, 4, 44, 'OPEN', 46, 20021 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 108, 4, 44, 'OPEN', 46, 20021 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 55, 4, 51, 'OPEN', 47, 90078 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.316, 0.325, 'Y', 56, 4, 51, 'OPEN', 47, 90078 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 57, 4, 51, 'OPEN', 47, 90078 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 51, 4, 68, 'OPEN', 48, 340975 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 51, 4, 68, 'OPEN', 48, 307 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.299, 0.422, 'N', 52, 4, 68, 'OPEN', 48, 340975 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.166, 0.285, 'Y', 52, 4, 68, 'OPEN', 48, 307 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 53, 4, 68, 'OPEN', 48, 340975 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 53, 4, 68, 'OPEN', 48, 307 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 135, 4, 68, 'OPEN', 49, 40199 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.176, 0.314, 'Y', 136, 4, 68, 'OPEN', 49, 40199 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 137, 4, 68, 'OPEN', 49, 40199 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 128, 4, 69, 'OPEN', 50, -3 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 129, 4, 69, 'OPEN', 50, -3 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 130, 4, 69, 'OPEN', 50, -3 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 72, 3, 72, 'OPEN', 51, 160272 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.603, 0.156, 'Y', 73, 3, 72, 'OPEN', 51, 160272 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 74, 3, 72, 'OPEN', 51, 160272 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 4, 4, 76, 'OPEN', 52, 203 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.768, 0.345, 'Y', 5, 4, 76, 'OPEN', 52, 203 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 6, 4, 76, 'OPEN', 52, 203 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 130, 3, 84, 'OPEN', 53, 160284 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.330, 0.848, 'Y', 131, 3, 84, 'OPEN', 53, 160284 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 132, 3, 84, 'OPEN', 53, 160284 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 137, 3, 88, 'OPEN', 54, 160133 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.313, 0.204, 'Y', 138, 3, 88, 'OPEN', 54, 160133 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 139, 3, 88, 'OPEN', 54, 160133 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 110, 3, 89, 'OPEN', 55, 160275 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.866, 0.521, 'Y', 111, 3, 89, 'OPEN', 55, 160275 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 112, 3, 89, 'OPEN', 55, 160275 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 145, 4, 91, 'OPEN', 56, 80076 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.526, 0.293, 'Y', 146, 4, 91, 'OPEN', 56, 80076 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 147, 4, 91, 'OPEN', 56, 80076 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 150, 4, 94, 'OPEN', 57, 410067 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.394, 0.297, 'Y', 151, 4, 94, 'OPEN', 57, 410067 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 152, 4, 94, 'OPEN', 57, 410067 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 166, 3, 97, 'OPEN', 58, -4 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 167, 3, 97, 'OPEN', 58, -4 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 168, 3, 97, 'OPEN', 58, -4 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 125, 3, 98, 'OPEN', 59, 40050 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.324, 0.268, 'Y', 126, 3, 98, 'OPEN', 59, 40050 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 127, 3, 98, 'OPEN', 59, 40050 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 65, 3, 108, 'OPEN', 60, 160271 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.573, 0.766, 'Y', 66, 3, 108, 'OPEN', 60, 160271 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 67, 3, 108, 'OPEN', 60, 160271 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 39, 4, 117, 'OPEN', 61, 40021 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.244, 0.926, 'Y', 40, 4, 117, 'OPEN', 61, 40021 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 41, 4, 117, 'OPEN', 61, 40021 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 59, 4, 126, 'OPEN', 62, 40033 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.387, 0.414, 'Y', 60, 4, 126, 'OPEN', 62, 40033 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 61, 4, 126, 'OPEN', 62, 40033 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 68, 4, 135, 'OPEN', 63, 160197 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.509, 0.852, 'Y', 69, 4, 135, 'OPEN', 63, 160197 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 70, 4, 135, 'OPEN', 63, 160197 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 118, 3, 137, 'OPEN', 64, 160277 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.679, 0.523, 'Y', 119, 3, 137, 'OPEN', 64, 160277 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 120, 3, 137, 'OPEN', 64, 160277 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 46, 4, 148, 'OPEN', 65, 50017 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.226, 0.721, 'Y', 47, 4, 148, 'OPEN', 65, 50017 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 48, 4, 148, 'OPEN', 65, 50017 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 78, 4, 153, 'OPEN', 66, 80051 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.505, 0.408, 'Y', 79, 4, 153, 'OPEN', 66, 80051 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 4, 153, 'OPEN', 66, 80051 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 11, 4, 166, 'OPEN', 67, 70027 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.842, 0.255, 'Y', 12, 4, 166, 'OPEN', 67, 70027 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 13, 4, 166, 'OPEN', 67, 70027 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 26, 4, 168, 'OPEN', 68, 90026 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.650, 0.331, 'Y', 27, 4, 168, 'OPEN', 68, 90026 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 28, 4, 168, 'OPEN', 68, 90026 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 88, 4, 179, 'OPEN', 69, 160182 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.853, 0.252, 'Y', 89, 4, 179, 'OPEN', 69, 160182 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 90, 4, 179, 'OPEN', 69, 160182 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 32, 4, 183, 'OPEN', 70, 80075 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.689, 0.803, 'Y', 33, 4, 183, 'OPEN', 70, 80075 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.072, 0.805, 'N', 34, 4, 183, 'OPEN', 70, 80137 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 21, 4, 196, 'OPEN', 71, 80007 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.347, 0.595, 'Y', 22, 4, 196, 'OPEN', 71, 80007 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 23, 4, 196, 'OPEN', 71, 80007 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 108, 4, 237, 'OPEN', 72, 160307 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.488, 0.758, 'Y', 109, 4, 237, 'OPEN', 72, 160307 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 110, 4, 237, 'OPEN', 72, 160307 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 72, 4, 238, 'OPEN', 73, 160355 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.519, 0.835, 'Y', 73, 4, 238, 'OPEN', 73, 160355 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 74, 4, 238, 'OPEN', 73, 160355 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 156, 4, 247, 'OPEN', 74, 40196 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.228, 0.270, 'Y', 157, 4, 247, 'OPEN', 74, 40196 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 158, 4, 247, 'OPEN', 74, 40196 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 143, 3, 258, 'OPEN', 75, 160170 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.149, 0.443, 'Y', 144, 3, 258, 'OPEN', 75, 160170 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 145, 3, 258, 'OPEN', 75, 160170 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 120, 4, 266, 'OPEN', 76, 160325 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.558, 0.886, 'Y', 121, 4, 266, 'OPEN', 76, 160325 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 122, 4, 266, 'OPEN', 76, 160325 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 4, 285, 'OPEN', 77, 160185 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.535, 0.892, 'Y', 94, 4, 285, 'OPEN', 77, 160185 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 4, 285, 'OPEN', 77, 160185 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 110, 3, 317, 'OPEN', 78, 320021 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.619, 0.713, 'Y', 111, 3, 317, 'OPEN', 78, 320021 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 112, 3, 317, 'OPEN', 78, 320021 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 66, 4, 343, 'OPEN', 79, 160345 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.743, 0.446, 'Y', 67, 4, 343, 'OPEN', 79, 160345 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 68, 4, 343, 'OPEN', 79, 160345 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 152, 3, 345, 'OPEN', 80, 320029 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.728, 0.828, 'Y', 153, 3, 345, 'OPEN', 80, 320029 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 154, 3, 345, 'OPEN', 80, 320029 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 3, 4, 352, 'OPEN', 81, 40074 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.271, 0.309, 'Y', 4, 4, 352, 'OPEN', 81, 40074 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 5, 4, 352, 'OPEN', 81, 40074 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 25, 4, 355, 'OPEN', 82, 40003 ),
 ( 1, 1, 1, 2756, 1, 'N', 0.845, 0.226, 'Y', 26, 4, 355, 'OPEN', 82, 40003 ),
 ( 1, 1, 1, 2756, 1, 'Y', null, null, 'N', 27, 4, 355, 'OPEN', 82, 40003 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_metadata ( dither_point_index, msa_metadata_id, observation, program, visit, background, estimated_source_in_shutter_x, estimated_source_in_shutter_y, primary_source, shutter_column, shutter_quadrant, shutter_row, shutter_state, slitlet_id, source_id ) values
 ( 2, 1, 1, 2756, 1, 'N', 0.258, 0.586, 'Y', 69, 1, 63, 'OPEN', 2, 160159 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 70, 1, 63, 'OPEN', 2, 160159 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 71, 1, 63, 'OPEN', 2, 160159 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.823, 0.356, 'Y', 73, 2, 68, 'OPEN', 3, 160321 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 74, 2, 68, 'OPEN', 3, 160321 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 75, 2, 68, 'OPEN', 3, 160321 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.828, 0.308, 'Y', 130, 2, 79, 'OPEN', 4, 160162 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 131, 2, 79, 'OPEN', 4, 160162 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 132, 2, 79, 'OPEN', 4, 160162 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.710, 0.437, 'Y', 133, 1, 81, 'OPEN', 5, 40092 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 134, 1, 81, 'OPEN', 5, 40092 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 135, 1, 81, 'OPEN', 5, 40092 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.222, 0.318, 'Y', 127, 1, 109, 'OPEN', 6, 320035 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 128, 1, 109, 'OPEN', 6, 320035 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 129, 1, 109, 'OPEN', 6, 320035 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.139, 0.422, 'Y', 100, 2, 110, 'OPEN', 7, 40190 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 101, 2, 110, 'OPEN', 7, 40190 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 102, 2, 110, 'OPEN', 7, 40190 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.797, 0.552, 'Y', 117, 2, 110, 'OPEN', 8, 30001 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 118, 2, 110, 'OPEN', 8, 30001 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 119, 2, 110, 'OPEN', 8, 30001 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 156, 2, 120, 'OPEN', 9, 0 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 157, 2, 120, 'OPEN', 9, 0 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.594, 0.872, 'Y', 64, 1, 124, 'OPEN', 10, 40060 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 65, 1, 124, 'OPEN', 10, 40060 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 66, 1, 124, 'OPEN', 10, 40060 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.727, 0.610, 'Y', 93, 1, 128, 'OPEN', 11, 40202 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 1, 128, 'OPEN', 11, 40202 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 1, 128, 'OPEN', 11, 40202 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.806, 0.672, 'Y', 58, 1, 149, 'OPEN', 12, 160149 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 59, 1, 149, 'OPEN', 12, 160149 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 60, 1, 149, 'OPEN', 12, 160149 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.137, 0.760, 'Y', 40, 2, 151, 'OPEN', 13, 10018 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 41, 2, 151, 'OPEN', 13, 10018 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 42, 2, 151, 'OPEN', 13, 10018 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.394, 0.207, 'Y', 56, 2, 155, 'OPEN', 14, 90012 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 57, 2, 155, 'OPEN', 14, 90012 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 58, 2, 155, 'OPEN', 14, 90012 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.219, 0.895, 'Y', 150, 2, 160, 'OPEN', 15, 100002 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 151, 2, 160, 'OPEN', 15, 100002 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 152, 2, 160, 'OPEN', 15, 100002 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.700, 0.913, 'Y', 163, 1, 171, 'OPEN', 16, 320023 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 164, 1, 171, 'OPEN', 16, 320023 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 165, 1, 171, 'OPEN', 16, 320023 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.508, 0.490, 'Y', 84, 2, 173, 'OPEN', 17, -1 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 85, 2, 173, 'OPEN', 17, -1 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 86, 2, 173, 'OPEN', 17, -1 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.529, 0.392, 'N', 80, 2, 174, 'OPEN', 18, 410005 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.536, 0.463, 'Y', 80, 2, 174, 'OPEN', 18, 101 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 174, 'OPEN', 18, 410005 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 174, 'OPEN', 18, 101 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 174, 'OPEN', 18, 410005 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 174, 'OPEN', 18, 101 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.180, 0.656, 'Y', 51, 2, 177, 'OPEN', 19, 70002 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 52, 2, 177, 'OPEN', 19, 70002 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 53, 2, 177, 'OPEN', 19, 70002 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.222, 0.232, 'Y', 13, 2, 185, 'OPEN', 20, 50034 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 14, 2, 185, 'OPEN', 20, 50034 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 15, 2, 185, 'OPEN', 20, 50034 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.439, 0.681, 'Y', 93, 2, 194, 'OPEN', 21, 80095 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 2, 194, 'OPEN', 21, 80095 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 2, 194, 'OPEN', 21, 80095 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.375, 0.746, 'Y', 109, 2, 201, 'OPEN', 22, 80012 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 110, 2, 201, 'OPEN', 22, 80012 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 111, 2, 201, 'OPEN', 22, 80012 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.382, 0.800, 'Y', 19, 1, 203, 'OPEN', 23, 160118 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 20, 1, 203, 'OPEN', 23, 160118 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 21, 1, 203, 'OPEN', 23, 160118 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.137, 0.602, 'Y', 48, 1, 206, 'OPEN', 24, 40067 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 49, 1, 206, 'OPEN', 24, 40067 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 50, 1, 206, 'OPEN', 24, 40067 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.668, 0.081, 'Y', 124, 2, 207, 'OPEN', 25, 80142 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 125, 2, 207, 'OPEN', 25, 80142 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 126, 2, 207, 'OPEN', 25, 80142 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.566, 0.463, 'Y', 146, 2, 230, 'OPEN', 26, 40178 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 147, 2, 230, 'OPEN', 26, 40178 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 148, 2, 230, 'OPEN', 26, 40178 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.767, 0.730, 'Y', 145, 1, 243, 'OPEN', 27, 40094 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 146, 1, 243, 'OPEN', 27, 40094 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 147, 1, 243, 'OPEN', 27, 40094 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.330, 0.547, 'Y', 135, 2, 253, 'OPEN', 28, 10025 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 136, 2, 253, 'OPEN', 28, 10025 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 137, 2, 253, 'OPEN', 28, 10025 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.344, 0.174, 'Y', 25, 2, 270, 'OPEN', 29, 20015 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 26, 2, 270, 'OPEN', 29, 20015 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 27, 2, 270, 'OPEN', 29, 20015 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.505, 0.503, 'Y', 169, 1, 290, 'OPEN', 30, -2 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 170, 1, 290, 'OPEN', 30, -2 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 171, 1, 290, 'OPEN', 30, -2 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.312, 0.423, 'Y', 36, 2, 307, 'OPEN', 31, 202 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 37, 2, 307, 'OPEN', 31, 202 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 38, 2, 307, 'OPEN', 31, 202 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.586, 0.469, 'Y', 68, 2, 319, 'OPEN', 32, 410044 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 69, 2, 319, 'OPEN', 32, 410044 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 70, 2, 319, 'OPEN', 32, 410044 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.175, 0.607, 'Y', 126, 1, 322, 'OPEN', 33, 50036 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 127, 1, 322, 'OPEN', 33, 50036 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 128, 1, 322, 'OPEN', 33, 50036 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.488, 0.651, 'Y', 63, 2, 324, 'OPEN', 34, 410045 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 64, 2, 324, 'OPEN', 34, 410045 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 65, 2, 324, 'OPEN', 34, 410045 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.587, 0.760, 'Y', 149, 1, 327, 'OPEN', 35, 160294 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 150, 1, 327, 'OPEN', 35, 160294 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 151, 1, 327, 'OPEN', 35, 160294 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.669, 0.684, 'Y', 99, 2, 338, 'OPEN', 36, 80119 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 100, 2, 338, 'OPEN', 36, 80119 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 101, 2, 338, 'OPEN', 36, 80119 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.107, 0.424, 'Y', 76, 2, 342, 'OPEN', 37, 110003 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 342, 'OPEN', 37, 110003 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 342, 'OPEN', 37, 110003 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.233, 0.377, 'Y', 140, 2, 348, 'OPEN', 38, 40185 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 141, 2, 348, 'OPEN', 38, 40185 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 142, 2, 348, 'OPEN', 38, 40185 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.348, 0.610, 'Y', 9, 2, 349, 'OPEN', 39, 80065 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 10, 2, 349, 'OPEN', 39, 80065 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 11, 2, 349, 'OPEN', 39, 80065 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.965, 0.334, 'Y', 32, 2, 351, 'OPEN', 40, 500003 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 33, 2, 351, 'OPEN', 40, 500003 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 34, 2, 351, 'OPEN', 40, 500003 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.455, 0.343, 'Y', 89, 2, 352, 'OPEN', 41, 301 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 90, 2, 352, 'OPEN', 41, 301 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 91, 2, 352, 'OPEN', 41, 301 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.382, 0.185, 'Y', 98, 1, 359, 'OPEN', 42, 160278 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 99, 1, 359, 'OPEN', 42, 160278 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 100, 1, 359, 'OPEN', 42, 160278 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 59, 2, 360, 'OPEN', 43, 500002 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.738, 0.056, 'Y', 60, 2, 360, 'OPEN', 43, 500002 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 61, 2, 360, 'OPEN', 43, 500002 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 361, 'OPEN', 44, 102 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 361, 'OPEN', 44, 102 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 361, 'OPEN', 44, 102 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.339, 0.387, 'Y', 83, 2, 361, 'OPEN', 44, 102 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 84, 2, 361, 'OPEN', 44, 102 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 85, 2, 361, 'OPEN', 44, 102 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.200, 0.624, 'Y', 93, 3, 43, 'OPEN', 45, 40062 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 3, 43, 'OPEN', 45, 40062 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 3, 43, 'OPEN', 45, 40062 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.384, 0.376, 'Y', 106, 4, 44, 'OPEN', 46, 20021 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 107, 4, 44, 'OPEN', 46, 20021 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 108, 4, 44, 'OPEN', 46, 20021 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.314, 0.317, 'Y', 55, 4, 51, 'OPEN', 47, 90078 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 56, 4, 51, 'OPEN', 47, 90078 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 57, 4, 51, 'OPEN', 47, 90078 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.163, 0.278, 'Y', 51, 4, 68, 'OPEN', 48, 307 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.296, 0.415, 'N', 51, 4, 68, 'OPEN', 48, 340975 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 52, 4, 68, 'OPEN', 48, 307 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 52, 4, 68, 'OPEN', 48, 340975 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 53, 4, 68, 'OPEN', 48, 307 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 53, 4, 68, 'OPEN', 48, 340975 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.173, 0.299, 'Y', 135, 4, 68, 'OPEN', 49, 40199 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 136, 4, 68, 'OPEN', 49, 40199 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 137, 4, 68, 'OPEN', 49, 40199 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.497, 0.486, 'Y', 128, 4, 69, 'OPEN', 50, -3 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 129, 4, 69, 'OPEN', 50, -3 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 130, 4, 69, 'OPEN', 50, -3 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.599, 0.168, 'Y', 72, 3, 72, 'OPEN', 51, 160272 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 73, 3, 72, 'OPEN', 51, 160272 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 74, 3, 72, 'OPEN', 51, 160272 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.765, 0.341, 'Y', 4, 4, 76, 'OPEN', 52, 203 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 5, 4, 76, 'OPEN', 52, 203 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 6, 4, 76, 'OPEN', 52, 203 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.326, 0.854, 'Y', 130, 3, 84, 'OPEN', 53, 160284 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 131, 3, 84, 'OPEN', 53, 160284 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 132, 3, 84, 'OPEN', 53, 160284 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.309, 0.210, 'Y', 137, 3, 88, 'OPEN', 54, 160133 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 138, 3, 88, 'OPEN', 54, 160133 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 139, 3, 88, 'OPEN', 54, 160133 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.861, 0.529, 'Y', 110, 3, 89, 'OPEN', 55, 160275 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 111, 3, 89, 'OPEN', 55, 160275 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 112, 3, 89, 'OPEN', 55, 160275 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.522, 0.278, 'Y', 145, 4, 91, 'OPEN', 56, 80076 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 146, 4, 91, 'OPEN', 56, 80076 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 147, 4, 91, 'OPEN', 56, 80076 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.391, 0.282, 'Y', 150, 4, 94, 'OPEN', 57, 410067 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 151, 4, 94, 'OPEN', 57, 410067 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 152, 4, 94, 'OPEN', 57, 410067 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.495, 0.504, 'Y', 166, 3, 97, 'OPEN', 58, -4 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 167, 3, 97, 'OPEN', 58, -4 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 168, 3, 97, 'OPEN', 58, -4 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.319, 0.275, 'Y', 125, 3, 98, 'OPEN', 59, 40050 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 126, 3, 98, 'OPEN', 59, 40050 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 127, 3, 98, 'OPEN', 59, 40050 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.567, 0.778, 'Y', 65, 3, 108, 'OPEN', 60, 160271 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 66, 3, 108, 'OPEN', 60, 160271 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 67, 3, 108, 'OPEN', 60, 160271 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.239, 0.920, 'Y', 39, 4, 117, 'OPEN', 61, 40021 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 40, 4, 117, 'OPEN', 61, 40021 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 41, 4, 117, 'OPEN', 61, 40021 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.382, 0.406, 'Y', 59, 4, 126, 'OPEN', 62, 40033 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 60, 4, 126, 'OPEN', 62, 40033 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 61, 4, 126, 'OPEN', 62, 40033 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.504, 0.843, 'Y', 68, 4, 135, 'OPEN', 63, 160197 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 69, 4, 135, 'OPEN', 63, 160197 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 70, 4, 135, 'OPEN', 63, 160197 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.673, 0.531, 'Y', 118, 3, 137, 'OPEN', 64, 160277 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 119, 3, 137, 'OPEN', 64, 160277 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 120, 3, 137, 'OPEN', 64, 160277 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.220, 0.714, 'Y', 46, 4, 148, 'OPEN', 65, 50017 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 47, 4, 148, 'OPEN', 65, 50017 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 48, 4, 148, 'OPEN', 65, 50017 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.499, 0.399, 'Y', 78, 4, 153, 'OPEN', 66, 80051 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 79, 4, 153, 'OPEN', 66, 80051 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 4, 153, 'OPEN', 66, 80051 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.835, 0.251, 'Y', 11, 4, 166, 'OPEN', 67, 70027 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 12, 4, 166, 'OPEN', 67, 70027 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 13, 4, 166, 'OPEN', 67, 70027 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.643, 0.325, 'Y', 26, 4, 168, 'OPEN', 68, 90026 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 27, 4, 168, 'OPEN', 68, 90026 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 28, 4, 168, 'OPEN', 68, 90026 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.846, 0.242, 'Y', 88, 4, 179, 'OPEN', 69, 160182 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 89, 4, 179, 'OPEN', 69, 160182 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 90, 4, 179, 'OPEN', 69, 160182 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.682, 0.798, 'Y', 32, 4, 183, 'OPEN', 70, 80075 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.065, 0.799, 'N', 33, 4, 183, 'OPEN', 70, 80137 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 34, 4, 183, 'OPEN', 70, 80137 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.339, 0.590, 'Y', 21, 4, 196, 'OPEN', 71, 80007 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 22, 4, 196, 'OPEN', 71, 80007 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 23, 4, 196, 'OPEN', 71, 80007 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.480, 0.746, 'Y', 108, 4, 237, 'OPEN', 72, 160307 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 109, 4, 237, 'OPEN', 72, 160307 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 110, 4, 237, 'OPEN', 72, 160307 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.511, 0.826, 'Y', 72, 4, 238, 'OPEN', 73, 160355 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 73, 4, 238, 'OPEN', 73, 160355 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 74, 4, 238, 'OPEN', 73, 160355 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.221, 0.255, 'Y', 156, 4, 247, 'OPEN', 74, 40196 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 157, 4, 247, 'OPEN', 74, 40196 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 158, 4, 247, 'OPEN', 74, 40196 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.138, 0.449, 'Y', 143, 3, 258, 'OPEN', 75, 160170 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 144, 3, 258, 'OPEN', 75, 160170 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 145, 3, 258, 'OPEN', 75, 160170 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.550, 0.874, 'Y', 120, 4, 266, 'OPEN', 76, 160325 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 121, 4, 266, 'OPEN', 76, 160325 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 122, 4, 266, 'OPEN', 76, 160325 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.526, 0.882, 'Y', 93, 4, 285, 'OPEN', 77, 160185 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 4, 285, 'OPEN', 77, 160185 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 95, 4, 285, 'OPEN', 77, 160185 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.606, 0.721, 'Y', 110, 3, 317, 'OPEN', 78, 320021 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 111, 3, 317, 'OPEN', 78, 320021 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 112, 3, 317, 'OPEN', 78, 320021 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.732, 0.438, 'Y', 66, 4, 343, 'OPEN', 79, 160345 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 67, 4, 343, 'OPEN', 79, 160345 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 68, 4, 343, 'OPEN', 79, 160345 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.714, 0.833, 'Y', 152, 3, 345, 'OPEN', 80, 320029 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 153, 3, 345, 'OPEN', 80, 320029 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 154, 3, 345, 'OPEN', 80, 320029 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.258, 0.307, 'Y', 3, 4, 352, 'OPEN', 81, 40074 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 4, 4, 352, 'OPEN', 81, 40074 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 5, 4, 352, 'OPEN', 81, 40074 ),
 ( 2, 1, 1, 2756, 1, 'N', 0.832, 0.222, 'Y', 25, 4, 355, 'OPEN', 82, 40003 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 26, 4, 355, 'OPEN', 82, 40003 ),
 ( 2, 1, 1, 2756, 1, 'Y', null, null, 'N', 27, 4, 355, 'OPEN', 82, 40003 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_metadata ( dither_point_index, msa_metadata_id, observation, program, visit, background, estimated_source_in_shutter_x, estimated_source_in_shutter_y, primary_source, shutter_column, shutter_quadrant, shutter_row, shutter_state, slitlet_id, source_id ) values
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 69, 1, 63, 'OPEN', 2, 160159 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 70, 1, 63, 'OPEN', 2, 160159 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.229, 0.561, 'Y', 71, 1, 63, 'OPEN', 2, 160159 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 73, 2, 68, 'OPEN', 3, 160321 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 74, 2, 68, 'OPEN', 3, 160321 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.802, 0.373, 'Y', 75, 2, 68, 'OPEN', 3, 160321 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 130, 2, 79, 'OPEN', 4, 160162 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 131, 2, 79, 'OPEN', 4, 160162 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.809, 0.335, 'Y', 132, 2, 79, 'OPEN', 4, 160162 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 133, 1, 81, 'OPEN', 5, 40092 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 134, 1, 81, 'OPEN', 5, 40092 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.684, 0.423, 'Y', 135, 1, 81, 'OPEN', 5, 40092 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 127, 1, 109, 'OPEN', 6, 320035 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 128, 1, 109, 'OPEN', 6, 320035 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.197, 0.304, 'Y', 129, 1, 109, 'OPEN', 6, 320035 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 100, 2, 110, 'OPEN', 7, 40190 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 101, 2, 110, 'OPEN', 7, 40190 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.120, 0.444, 'Y', 102, 2, 110, 'OPEN', 7, 40190 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 117, 2, 110, 'OPEN', 8, 30001 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 118, 2, 110, 'OPEN', 8, 30001 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.779, 0.577, 'Y', 119, 2, 110, 'OPEN', 8, 30001 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 156, 2, 120, 'OPEN', 9, 100004 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.107, 0.916, 'Y', 157, 2, 120, 'OPEN', 9, 100004 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 64, 1, 124, 'OPEN', 10, 40060 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 65, 1, 124, 'OPEN', 10, 40060 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.570, 0.846, 'Y', 66, 1, 124, 'OPEN', 10, 40060 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 1, 128, 'OPEN', 11, 40202 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 1, 128, 'OPEN', 11, 40202 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.703, 0.590, 'Y', 95, 1, 128, 'OPEN', 11, 40202 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 58, 1, 149, 'OPEN', 12, 160149 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 59, 1, 149, 'OPEN', 12, 160149 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.784, 0.646, 'Y', 60, 1, 149, 'OPEN', 12, 160149 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 40, 2, 151, 'OPEN', 13, 10018 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 41, 2, 151, 'OPEN', 13, 10018 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.119, 0.772, 'Y', 42, 2, 151, 'OPEN', 13, 10018 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 56, 2, 155, 'OPEN', 14, 90012 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 57, 2, 155, 'OPEN', 14, 90012 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.377, 0.222, 'Y', 58, 2, 155, 'OPEN', 14, 90012 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 150, 2, 160, 'OPEN', 15, 100002 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 151, 2, 160, 'OPEN', 15, 100002 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.205, 0.925, 'Y', 152, 2, 160, 'OPEN', 15, 100002 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 163, 1, 171, 'OPEN', 16, 320023 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 164, 1, 171, 'OPEN', 16, 320023 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.681, 0.905, 'Y', 165, 1, 171, 'OPEN', 16, 320023 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 84, 2, 173, 'OPEN', 17, -1 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 85, 2, 173, 'OPEN', 17, -1 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.492, 0.510, 'Y', 86, 2, 173, 'OPEN', 17, -1 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 174, 'OPEN', 18, 410005 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 174, 'OPEN', 18, 101 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 174, 'OPEN', 18, 410005 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 174, 'OPEN', 18, 101 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.513, 0.411, 'N', 82, 2, 174, 'OPEN', 18, 410005 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.521, 0.482, 'Y', 82, 2, 174, 'OPEN', 18, 101 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 51, 2, 177, 'OPEN', 19, 70002 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 52, 2, 177, 'OPEN', 19, 70002 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.164, 0.671, 'Y', 53, 2, 177, 'OPEN', 19, 70002 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 13, 2, 185, 'OPEN', 20, 50034 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 14, 2, 185, 'OPEN', 20, 50034 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.206, 0.240, 'Y', 15, 2, 185, 'OPEN', 20, 50034 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 2, 194, 'OPEN', 21, 80095 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 2, 194, 'OPEN', 21, 80095 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.425, 0.702, 'Y', 95, 2, 194, 'OPEN', 21, 80095 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 109, 2, 201, 'OPEN', 22, 80012 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 110, 2, 201, 'OPEN', 22, 80012 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.362, 0.770, 'Y', 111, 2, 201, 'OPEN', 22, 80012 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 19, 1, 203, 'OPEN', 23, 160118 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 20, 1, 203, 'OPEN', 23, 160118 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.363, 0.766, 'Y', 21, 1, 203, 'OPEN', 23, 160118 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 48, 1, 206, 'OPEN', 24, 40067 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 49, 1, 206, 'OPEN', 24, 40067 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.119, 0.574, 'Y', 50, 1, 206, 'OPEN', 24, 40067 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 124, 2, 207, 'OPEN', 25, 80142 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 125, 2, 207, 'OPEN', 25, 80142 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.656, 0.107, 'Y', 126, 2, 207, 'OPEN', 25, 80142 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 146, 2, 230, 'OPEN', 26, 40178 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 147, 2, 230, 'OPEN', 26, 40178 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.555, 0.493, 'Y', 148, 2, 230, 'OPEN', 26, 40178 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 145, 1, 243, 'OPEN', 27, 40094 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 146, 1, 243, 'OPEN', 27, 40094 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.753, 0.719, 'Y', 147, 1, 243, 'OPEN', 27, 40094 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 135, 2, 253, 'OPEN', 28, 10025 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 136, 2, 253, 'OPEN', 28, 10025 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.320, 0.575, 'Y', 137, 2, 253, 'OPEN', 28, 10025 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 25, 2, 270, 'OPEN', 29, 20015 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 26, 2, 270, 'OPEN', 29, 20015 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.334, 0.184, 'Y', 27, 2, 270, 'OPEN', 29, 20015 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 169, 1, 290, 'OPEN', 30, -2 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 170, 1, 290, 'OPEN', 30, -2 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.495, 0.497, 'Y', 171, 1, 290, 'OPEN', 30, -2 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 36, 2, 307, 'OPEN', 31, 202 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 37, 2, 307, 'OPEN', 31, 202 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.305, 0.436, 'Y', 38, 2, 307, 'OPEN', 31, 202 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 68, 2, 319, 'OPEN', 32, 410044 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 69, 2, 319, 'OPEN', 32, 410044 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.580, 0.487, 'Y', 70, 2, 319, 'OPEN', 32, 410044 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 126, 1, 322, 'OPEN', 33, 50036 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 127, 1, 322, 'OPEN', 33, 50036 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.167, 0.592, 'Y', 128, 1, 322, 'OPEN', 33, 50036 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 63, 2, 324, 'OPEN', 34, 410045 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 64, 2, 324, 'OPEN', 34, 410045 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.482, 0.668, 'Y', 65, 2, 324, 'OPEN', 34, 410045 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 149, 1, 327, 'OPEN', 35, 160294 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 150, 1, 327, 'OPEN', 35, 160294 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.579, 0.750, 'Y', 151, 1, 327, 'OPEN', 35, 160294 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 99, 2, 338, 'OPEN', 36, 80119 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 100, 2, 338, 'OPEN', 36, 80119 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.664, 0.707, 'Y', 101, 2, 338, 'OPEN', 36, 80119 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 76, 2, 342, 'OPEN', 37, 110003 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 342, 'OPEN', 37, 110003 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.102, 0.444, 'Y', 78, 2, 342, 'OPEN', 37, 110003 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 140, 2, 348, 'OPEN', 38, 40185 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 141, 2, 348, 'OPEN', 38, 40185 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.229, 0.406, 'Y', 142, 2, 348, 'OPEN', 38, 40185 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 9, 2, 349, 'OPEN', 39, 80065 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 10, 2, 349, 'OPEN', 39, 80065 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.342, 0.618, 'Y', 11, 2, 349, 'OPEN', 39, 80065 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 32, 2, 351, 'OPEN', 40, 500003 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 33, 2, 351, 'OPEN', 40, 500003 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.960, 0.346, 'Y', 34, 2, 351, 'OPEN', 40, 500003 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 89, 2, 352, 'OPEN', 41, 301 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 90, 2, 352, 'OPEN', 41, 301 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.451, 0.365, 'Y', 91, 2, 352, 'OPEN', 41, 301 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 98, 1, 359, 'OPEN', 42, 160278 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 99, 1, 359, 'OPEN', 42, 160278 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.376, 0.166, 'Y', 100, 1, 359, 'OPEN', 42, 160278 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 59, 2, 360, 'OPEN', 43, 0 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 60, 2, 360, 'OPEN', 43, 0 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 61, 2, 360, 'OPEN', 43, 0 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 361, 'OPEN', 44, 102 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 361, 'OPEN', 44, 102 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 361, 'OPEN', 44, 102 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 83, 2, 361, 'OPEN', 44, 102 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 84, 2, 361, 'OPEN', 44, 102 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.335, 0.408, 'Y', 85, 2, 361, 'OPEN', 44, 102 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 3, 43, 'OPEN', 45, 40062 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 3, 43, 'OPEN', 45, 40062 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.205, 0.604, 'Y', 95, 3, 43, 'OPEN', 45, 40062 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 106, 4, 44, 'OPEN', 46, 20021 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 107, 4, 44, 'OPEN', 46, 20021 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.389, 0.400, 'Y', 108, 4, 44, 'OPEN', 46, 20021 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 55, 4, 51, 'OPEN', 47, 90078 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 56, 4, 51, 'OPEN', 47, 90078 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.319, 0.333, 'Y', 57, 4, 51, 'OPEN', 47, 90078 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 51, 4, 68, 'OPEN', 48, 340975 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 51, 4, 68, 'OPEN', 48, 307 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 52, 4, 68, 'OPEN', 48, 340975 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 52, 4, 68, 'OPEN', 48, 307 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.302, 0.430, 'N', 53, 4, 68, 'OPEN', 48, 340975 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.170, 0.293, 'Y', 53, 4, 68, 'OPEN', 48, 307 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 135, 4, 68, 'OPEN', 49, 40199 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 136, 4, 68, 'OPEN', 49, 40199 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.179, 0.328, 'Y', 137, 4, 68, 'OPEN', 49, 40199 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 128, 4, 69, 'OPEN', 50, -3 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 129, 4, 69, 'OPEN', 50, -3 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.503, 0.514, 'Y', 130, 4, 69, 'OPEN', 50, -3 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 72, 3, 72, 'OPEN', 51, 160272 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 73, 3, 72, 'OPEN', 51, 160272 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.607, 0.144, 'Y', 74, 3, 72, 'OPEN', 51, 160272 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 4, 4, 76, 'OPEN', 52, 203 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 5, 4, 76, 'OPEN', 52, 203 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.772, 0.348, 'Y', 6, 4, 76, 'OPEN', 52, 203 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 130, 3, 84, 'OPEN', 53, 160284 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 131, 3, 84, 'OPEN', 53, 160284 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.334, 0.841, 'Y', 132, 3, 84, 'OPEN', 53, 160284 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 137, 3, 88, 'OPEN', 54, 160133 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 138, 3, 88, 'OPEN', 54, 160133 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.317, 0.198, 'Y', 139, 3, 88, 'OPEN', 54, 160133 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.075, 0.831, 'N', 110, 3, 89, 'OPEN', 55, 150053 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 111, 3, 89, 'OPEN', 55, 150053 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.870, 0.512, 'Y', 112, 3, 89, 'OPEN', 55, 160275 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 145, 4, 91, 'OPEN', 56, 80076 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 146, 4, 91, 'OPEN', 56, 80076 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.529, 0.308, 'Y', 147, 4, 91, 'OPEN', 56, 80076 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 150, 4, 94, 'OPEN', 57, 410067 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 151, 4, 94, 'OPEN', 57, 410067 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.398, 0.313, 'Y', 152, 4, 94, 'OPEN', 57, 410067 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 166, 3, 97, 'OPEN', 58, -4 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 167, 3, 97, 'OPEN', 58, -4 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.505, 0.496, 'Y', 168, 3, 97, 'OPEN', 58, -4 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 125, 3, 98, 'OPEN', 59, 40050 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 126, 3, 98, 'OPEN', 59, 40050 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.329, 0.260, 'Y', 127, 3, 98, 'OPEN', 59, 40050 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 65, 3, 108, 'OPEN', 60, 160271 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 66, 3, 108, 'OPEN', 60, 160271 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.578, 0.753, 'Y', 67, 3, 108, 'OPEN', 60, 160271 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 39, 4, 117, 'OPEN', 61, 40021 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 40, 4, 117, 'OPEN', 61, 40021 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.249, 0.933, 'Y', 41, 4, 117, 'OPEN', 61, 40021 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 59, 4, 126, 'OPEN', 62, 40033 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 60, 4, 126, 'OPEN', 62, 40033 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.392, 0.422, 'Y', 61, 4, 126, 'OPEN', 62, 40033 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 68, 4, 135, 'OPEN', 63, 160197 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 69, 4, 135, 'OPEN', 63, 160197 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.514, 0.861, 'Y', 70, 4, 135, 'OPEN', 63, 160197 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 118, 3, 137, 'OPEN', 64, 160277 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 119, 3, 137, 'OPEN', 64, 160277 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.685, 0.516, 'Y', 120, 3, 137, 'OPEN', 64, 160277 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 46, 4, 148, 'OPEN', 65, 50017 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 47, 4, 148, 'OPEN', 65, 50017 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.232, 0.728, 'Y', 48, 4, 148, 'OPEN', 65, 50017 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 78, 4, 153, 'OPEN', 66, 80051 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 79, 4, 153, 'OPEN', 66, 80051 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.510, 0.418, 'Y', 80, 4, 153, 'OPEN', 66, 80051 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 11, 4, 166, 'OPEN', 67, 70027 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 12, 4, 166, 'OPEN', 67, 70027 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.848, 0.259, 'Y', 13, 4, 166, 'OPEN', 67, 70027 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 26, 4, 168, 'OPEN', 68, 90026 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 27, 4, 168, 'OPEN', 68, 90026 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.657, 0.336, 'Y', 28, 4, 168, 'OPEN', 68, 90026 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 88, 4, 179, 'OPEN', 69, 160182 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 89, 4, 179, 'OPEN', 69, 160182 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.859, 0.263, 'Y', 90, 4, 179, 'OPEN', 69, 160182 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 32, 4, 183, 'OPEN', 70, 80075 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 33, 4, 183, 'OPEN', 70, 80075 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.696, 0.809, 'Y', 34, 4, 183, 'OPEN', 70, 80075 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 21, 4, 196, 'OPEN', 71, 80007 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 22, 4, 196, 'OPEN', 71, 80007 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.354, 0.600, 'Y', 23, 4, 196, 'OPEN', 71, 80007 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 108, 4, 237, 'OPEN', 72, 160307 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 109, 4, 237, 'OPEN', 72, 160307 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.496, 0.770, 'Y', 110, 4, 237, 'OPEN', 72, 160307 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 72, 4, 238, 'OPEN', 73, 160355 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 73, 4, 238, 'OPEN', 73, 160355 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.528, 0.844, 'Y', 74, 4, 238, 'OPEN', 73, 160355 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 156, 4, 247, 'OPEN', 74, 40196 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 157, 4, 247, 'OPEN', 74, 40196 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.236, 0.285, 'Y', 158, 4, 247, 'OPEN', 74, 40196 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 143, 3, 258, 'OPEN', 75, 160170 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 144, 3, 258, 'OPEN', 75, 160170 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.160, 0.437, 'Y', 145, 3, 258, 'OPEN', 75, 160170 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 120, 4, 266, 'OPEN', 76, 160325 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 121, 4, 266, 'OPEN', 76, 160325 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.567, 0.899, 'Y', 122, 4, 266, 'OPEN', 76, 160325 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 93, 4, 285, 'OPEN', 77, 160185 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 94, 4, 285, 'OPEN', 77, 160185 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.545, 0.903, 'Y', 95, 4, 285, 'OPEN', 77, 160185 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 110, 3, 317, 'OPEN', 78, 320021 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 111, 3, 317, 'OPEN', 78, 320021 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.632, 0.704, 'Y', 112, 3, 317, 'OPEN', 78, 320021 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 66, 4, 343, 'OPEN', 79, 160345 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 67, 4, 343, 'OPEN', 79, 160345 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.755, 0.453, 'Y', 68, 4, 343, 'OPEN', 79, 160345 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 152, 3, 345, 'OPEN', 80, 320029 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 153, 3, 345, 'OPEN', 80, 320029 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.742, 0.822, 'Y', 154, 3, 345, 'OPEN', 80, 320029 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 3, 4, 352, 'OPEN', 81, 40074 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 4, 4, 352, 'OPEN', 81, 40074 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.284, 0.312, 'Y', 5, 4, 352, 'OPEN', 81, 40074 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 25, 4, 355, 'OPEN', 82, 40003 ),
 ( 3, 1, 1, 2756, 1, 'Y', null, null, 'N', 26, 4, 355, 'OPEN', 82, 40003 ),
 ( 3, 1, 1, 2756, 1, 'N', 0.858, 0.231, 'Y', 27, 4, 355, 'OPEN', 82, 40003 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_at_exposure_spec ( exposure_spec_order_number, master_background_processing, msa_config_id, msa_default_state, msa_metadata_id, observation, program, visit ) values ( 1, 'N', 1, 'CLOSED', 1, 1, 2756, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_exposure_specification ( autocal, data_volume_mib, dither_id, filter, grating, number_of_groups, number_of_integrations, observation, order_number, program, readout_pattern, verification_image, visit ) values ( 'NONE', 816.0, 2, 'CLEAR', 'PRISM', 17, 1, 1, 2, 2756, 'NRS', 'N', 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_metadata ( dither_point_index, msa_metadata_id, observation, program, visit, background, estimated_source_in_shutter_x, estimated_source_in_shutter_y, primary_source, shutter_column, shutter_quadrant, shutter_row, shutter_state, slitlet_id, source_id ) values
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 130, 1, 12, 'OPEN', 84, 40092 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.120, 0.616, 'Y', 131, 1, 12, 'OPEN', 84, 40092 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 132, 1, 12, 'OPEN', 84, 40092 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 25, 2, 19, 'OPEN', 85, 160183 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.642, 0.281, 'Y', 26, 2, 19, 'OPEN', 85, 160183 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 27, 2, 19, 'OPEN', 85, 160183 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 156, 2, 34, 'OPEN', 86, 390022 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.458, 0.521, 'Y', 157, 2, 34, 'OPEN', 86, 390022 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 158, 2, 34, 'OPEN', 86, 390022 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 1, 39, 'OPEN', 87, 320035 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.617, 0.485, 'Y', 125, 1, 39, 'OPEN', 87, 320035 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 126, 1, 39, 'OPEN', 87, 320035 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 114, 2, 40, 'OPEN', 88, 30001 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.664, 0.634, 'Y', 115, 2, 40, 'OPEN', 88, 30001 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 116, 2, 40, 'OPEN', 88, 30001 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 1, 49, 'OPEN', 89, 40059 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.527, 0.637, 'Y', 62, 1, 49, 'OPEN', 89, 40059 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 63, 1, 49, 'OPEN', 89, 40059 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 101, 1, 50, 'OPEN', 90, 40056 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.819, 0.260, 'Y', 102, 1, 50, 'OPEN', 90, 40056 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 103, 1, 50, 'OPEN', 90, 40056 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 152, 2, 50, 'OPEN', 91, -5 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 153, 2, 50, 'OPEN', 91, -5 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 154, 2, 50, 'OPEN', 91, -5 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 90, 1, 59, 'OPEN', 92, 40202 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.190, 0.776, 'Y', 91, 1, 59, 'OPEN', 92, 40202 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 92, 1, 59, 'OPEN', 92, 40202 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 85, 1, 62, 'OPEN', 93, 40048 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.126, 0.080, 'Y', 86, 1, 62, 'OPEN', 93, 40048 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 1, 62, 'OPEN', 93, 40048 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 154, 1, 69, 'OPEN', 94, 40087 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.677, 0.685, 'Y', 155, 1, 69, 'OPEN', 94, 40087 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 156, 1, 69, 'OPEN', 94, 40087 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 55, 1, 80, 'OPEN', 95, 160149 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.343, 0.837, 'Y', 56, 1, 80, 'OPEN', 95, 160149 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 57, 1, 80, 'OPEN', 95, 160149 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 13, 2, 81, 'OPEN', 96, -6 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 14, 2, 81, 'OPEN', 96, -6 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 15, 2, 81, 'OPEN', 96, -6 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 37, 2, 81, 'OPEN', 97, 10018 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.116, 0.854, 'Y', 38, 2, 81, 'OPEN', 97, 10018 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 39, 2, 81, 'OPEN', 97, 10018 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 147, 2, 84, 'OPEN', 98, 100001 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.626, 0.397, 'Y', 148, 2, 84, 'OPEN', 98, 100001 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 149, 2, 84, 'OPEN', 98, 100001 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 53, 2, 85, 'OPEN', 99, 90012 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.335, 0.293, 'Y', 54, 2, 85, 'OPEN', 99, 90012 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 55, 2, 85, 'OPEN', 99, 90012 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 104, 'OPEN', 100, 410005 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 104, 'OPEN', 100, 101 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.400, 0.460, 'N', 78, 2, 104, 'OPEN', 100, 410005 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.407, 0.530, 'Y', 78, 2, 104, 'OPEN', 100, 101 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 79, 2, 104, 'OPEN', 100, 410005 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 79, 2, 104, 'OPEN', 100, 101 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 104, 'OPEN', 101, -7 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 82, 2, 104, 'OPEN', 101, -7 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 83, 2, 104, 'OPEN', 101, -7 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 101, 2, 122, 'OPEN', 102, 90005 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.517, 0.559, 'Y', 102, 2, 122, 'OPEN', 102, 90005 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 103, 2, 122, 'OPEN', 102, 90005 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 90, 2, 124, 'OPEN', 103, 80095 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.263, 0.734, 'Y', 91, 2, 124, 'OPEN', 103, 80095 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 92, 2, 124, 'OPEN', 103, 80095 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 106, 2, 131, 'OPEN', 104, 80012 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.161, 0.790, 'Y', 107, 2, 131, 'OPEN', 104, 80012 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 108, 2, 131, 'OPEN', 104, 80012 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 45, 1, 136, 'OPEN', 105, 40067 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.654, 0.739, 'Y', 46, 1, 136, 'OPEN', 105, 40067 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 1, 136, 'OPEN', 105, 40067 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 121, 2, 137, 'OPEN', 106, 80142 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.420, 0.116, 'Y', 122, 2, 137, 'OPEN', 106, 80142 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 2, 137, 'OPEN', 106, 80142 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 45, 2, 187, 'OPEN', 107, 70006 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.198, 0.323, 'Y', 46, 2, 187, 'OPEN', 107, 70006 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 2, 187, 'OPEN', 107, 70006 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 126, 2, 190, 'OPEN', 108, 70023 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.352, 0.540, 'Y', 127, 2, 190, 'OPEN', 108, 70023 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 128, 2, 190, 'OPEN', 108, 70023 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 22, 2, 200, 'OPEN', 109, 20015 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.256, 0.217, 'Y', 23, 2, 200, 'OPEN', 109, 20015 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 24, 2, 200, 'OPEN', 109, 20015 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 33, 2, 237, 'OPEN', 110, 202 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.176, 0.446, 'Y', 34, 2, 237, 'OPEN', 110, 202 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 35, 2, 237, 'OPEN', 110, 202 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 140, 2, 238, 'OPEN', 111, 410069 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.783, 0.513, 'Y', 141, 2, 238, 'OPEN', 111, 410069 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 142, 2, 238, 'OPEN', 111, 410069 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 116, 1, 248, 'OPEN', 112, 160289 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.651, 0.717, 'Y', 117, 1, 248, 'OPEN', 112, 160289 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 118, 1, 248, 'OPEN', 112, 160289 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 65, 2, 249, 'OPEN', 113, 410044 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.372, 0.477, 'Y', 66, 2, 249, 'OPEN', 113, 410044 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 67, 2, 249, 'OPEN', 113, 410044 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 1, 252, 'OPEN', 114, 50036 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.411, 0.659, 'Y', 124, 1, 252, 'OPEN', 114, 50036 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 125, 1, 252, 'OPEN', 114, 50036 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 60, 2, 254, 'OPEN', 115, 410045 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.282, 0.658, 'Y', 61, 2, 254, 'OPEN', 115, 410045 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 2, 254, 'OPEN', 115, 410045 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 111, 2, 256, 'OPEN', 116, 90031 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.856, 0.795, 'Y', 112, 2, 256, 'OPEN', 116, 90031 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 113, 2, 256, 'OPEN', 116, 90031 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 146, 1, 257, 'OPEN', 117, 160294 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.758, 0.803, 'Y', 147, 1, 257, 'OPEN', 117, 160294 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 148, 1, 257, 'OPEN', 117, 160294 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 164, 1, 264, 'OPEN', 118, 40090 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.835, 0.893, 'Y', 165, 1, 264, 'OPEN', 118, 40090 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 166, 1, 264, 'OPEN', 118, 40090 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 96, 2, 268, 'OPEN', 119, 80119 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.379, 0.676, 'Y', 97, 2, 268, 'OPEN', 119, 80119 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 98, 2, 268, 'OPEN', 119, 80119 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 1, 269, 'OPEN', 120, 40066 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.617, 0.775, 'Y', 62, 1, 269, 'OPEN', 120, 40066 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 63, 1, 269, 'OPEN', 120, 40066 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 93, 1, 271, 'OPEN', 121, 320028 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.637, 0.748, 'Y', 94, 1, 271, 'OPEN', 121, 320028 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 95, 1, 271, 'OPEN', 121, 320028 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 73, 2, 271, 'OPEN', 122, 110003 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.864, 0.420, 'Y', 74, 2, 271, 'OPEN', 122, 110003 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 75, 2, 271, 'OPEN', 122, 110003 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 66, 1, 276, 'OPEN', 123, 160158 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.317, 0.610, 'Y', 67, 1, 276, 'OPEN', 123, 160158 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 68, 1, 276, 'OPEN', 123, 160158 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 6, 2, 279, 'OPEN', 124, 80065 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.254, 0.620, 'Y', 7, 2, 279, 'OPEN', 124, 80065 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 8, 2, 279, 'OPEN', 124, 80065 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 2, 282, 'OPEN', 125, 301 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.181, 0.332, 'Y', 87, 2, 282, 'OPEN', 125, 301 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 88, 2, 282, 'OPEN', 125, 301 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 56, 2, 290, 'OPEN', 126, 500002 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 57, 2, 290, 'OPEN', 126, 500002 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.524, 0.048, 'Y', 58, 2, 290, 'OPEN', 126, 500002 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 135, 2, 290, 'OPEN', 127, 20025 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.537, 0.516, 'Y', 136, 2, 290, 'OPEN', 127, 20025 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 137, 2, 290, 'OPEN', 127, 20025 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 291, 'OPEN', 128, 102 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 291, 'OPEN', 128, 102 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 79, 2, 291, 'OPEN', 128, 102 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 291, 'OPEN', 128, 102 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.074, 0.374, 'Y', 81, 2, 291, 'OPEN', 128, 102 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 291, 'OPEN', 128, 102 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 169, 1, 318, 'OPEN', 129, -8 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 170, 1, 318, 'OPEN', 129, -8 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 171, 1, 318, 'OPEN', 129, -8 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 106, 2, 327, 'OPEN', 130, 500001 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.516, 0.296, 'Y', 107, 2, 327, 'OPEN', 130, 500001 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 108, 2, 327, 'OPEN', 130, 500001 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 12, 2, 355, 'OPEN', 131, 500010 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.287, 0.095, 'Y', 13, 2, 355, 'OPEN', 131, 500010 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 14, 2, 355, 'OPEN', 131, 500010 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 151, 2, 359, 'OPEN', 132, -9 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 152, 2, 359, 'OPEN', 132, -9 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 153, 2, 359, 'OPEN', 132, -9 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 112, 1, 361, 'OPEN', 133, 160281 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.238, 0.400, 'Y', 113, 1, 361, 'OPEN', 133, 160281 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 114, 1, 361, 'OPEN', 133, 160281 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 127, 3, 14, 'OPEN', 134, 160284 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.519, 0.790, 'Y', 128, 3, 14, 'OPEN', 134, 160284 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 129, 3, 14, 'OPEN', 134, 160284 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 122, 3, 28, 'OPEN', 135, 40050 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.530, 0.203, 'Y', 123, 3, 28, 'OPEN', 135, 40050 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 3, 28, 'OPEN', 135, 40050 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 66, 3, 32, 'OPEN', 136, 10020 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.803, 0.282, 'Y', 67, 3, 32, 'OPEN', 136, 10020 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 68, 3, 32, 'OPEN', 136, 10020 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 103, 3, 32, 'OPEN', 137, 160024 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.823, 0.499, 'Y', 104, 3, 32, 'OPEN', 137, 160024 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 105, 3, 32, 'OPEN', 137, 160024 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 56, 4, 56, 'OPEN', 138, 40033 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.165, 0.304, 'Y', 57, 4, 56, 'OPEN', 138, 40033 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 58, 4, 56, 'OPEN', 138, 40033 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 33, 4, 76, 'OPEN', 139, -10 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 34, 4, 76, 'OPEN', 139, -10 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 35, 4, 76, 'OPEN', 139, -10 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 75, 4, 83, 'OPEN', 140, 80051 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.253, 0.283, 'Y', 76, 4, 83, 'OPEN', 140, 80051 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 4, 83, 'OPEN', 140, 80051 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 109, 4, 83, 'OPEN', 141, 40173 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.650, 0.497, 'Y', 110, 4, 83, 'OPEN', 141, 40173 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 111, 4, 83, 'OPEN', 141, 40173 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 8, 4, 96, 'OPEN', 142, 70027 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.747, 0.131, 'Y', 9, 4, 96, 'OPEN', 142, 70027 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 10, 4, 96, 'OPEN', 142, 70027 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 74, 3, 98, 'OPEN', 143, -11 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 75, 3, 98, 'OPEN', 143, -11 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 76, 3, 98, 'OPEN', 143, -11 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 23, 4, 98, 'OPEN', 144, 90026 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.521, 0.204, 'Y', 24, 4, 98, 'OPEN', 144, 90026 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 25, 4, 98, 'OPEN', 144, 90026 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 94, 3, 102, 'OPEN', 145, 160273 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.358, 0.950, 'Y', 95, 3, 102, 'OPEN', 145, 160273 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 96, 3, 102, 'OPEN', 145, 160273 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 4, 103, 'OPEN', 146, 40020 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.196, 0.742, 'Y', 47, 4, 103, 'OPEN', 146, 40020 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 48, 4, 103, 'OPEN', 146, 40020 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 85, 4, 109, 'OPEN', 147, 160182 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.594, 0.115, 'Y', 86, 4, 109, 'OPEN', 147, 160182 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 4, 109, 'OPEN', 147, 160182 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 134, 4, 110, 'OPEN', 148, 160326 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.679, 0.297, 'Y', 135, 4, 110, 'OPEN', 148, 160326 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 136, 4, 110, 'OPEN', 148, 160326 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 29, 4, 113, 'OPEN', 149, 80075 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.553, 0.669, 'Y', 30, 4, 113, 'OPEN', 149, 80075 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 31, 4, 113, 'OPEN', 149, 80075 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 18, 4, 126, 'OPEN', 150, 80007 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.244, 0.456, 'Y', 19, 4, 126, 'OPEN', 150, 80007 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 20, 4, 126, 'OPEN', 150, 80007 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 98, 3, 132, 'OPEN', 151, 40065 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.302, 0.261, 'Y', 99, 3, 132, 'OPEN', 151, 40065 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 100, 3, 132, 'OPEN', 151, 40065 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 95, 4, 142, 'OPEN', 152, -12 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.500, 0.500, 'Y', 96, 4, 142, 'OPEN', 152, -12 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 97, 4, 142, 'OPEN', 152, -12 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 3, 165, 'OPEN', 153, 160168 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.841, 0.894, 'Y', 87, 3, 165, 'OPEN', 153, 160168 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 88, 3, 165, 'OPEN', 153, 160168 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 69, 4, 168, 'OPEN', 154, 160355 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.333, 0.673, 'Y', 70, 4, 168, 'OPEN', 154, 160355 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 71, 4, 168, 'OPEN', 154, 160355 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 37, 4, 170, 'OPEN', 155, 160260 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.713, 0.091, 'Y', 38, 4, 170, 'OPEN', 155, 160260 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 39, 4, 170, 'OPEN', 155, 160260 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.886, 0.104, 'Y', 154, 4, 176, 'OPEN', 156, 40196 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.177, 0.288, 'N', 155, 4, 176, 'OPEN', 156, 160173 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 156, 4, 176, 'OPEN', 156, 160173 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 140, 3, 188, 'OPEN', 157, 160170 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.379, 0.287, 'Y', 141, 3, 188, 'OPEN', 157, 160170 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 142, 3, 188, 'OPEN', 157, 160170 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 117, 4, 196, 'OPEN', 158, 160325 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.300, 0.712, 'Y', 118, 4, 196, 'OPEN', 158, 160325 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 119, 4, 196, 'OPEN', 158, 160325 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 149, 3, 197, 'OPEN', 159, 160123 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.695, 0.276, 'Y', 150, 3, 197, 'OPEN', 159, 160123 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 151, 3, 197, 'OPEN', 159, 160123 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 60, 4, 269, 'OPEN', 160, 160298 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.401, 0.160, 'Y', 61, 4, 269, 'OPEN', 160, 160298 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 4, 269, 'OPEN', 160, 160298 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 4, 290, 'OPEN', 161, 40036 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.789, 0.517, 'Y', 47, 4, 290, 'OPEN', 161, 40036 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 48, 4, 290, 'OPEN', 161, 40036 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 3, 292, 'OPEN', 162, 160150 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.595, 0.310, 'Y', 124, 3, 292, 'OPEN', 162, 160150 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 125, 3, 292, 'OPEN', 162, 160150 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 52, 4, 302, 'OPEN', 163, 150015 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.699, 0.322, 'Y', 53, 4, 302, 'OPEN', 163, 150015 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 54, 4, 302, 'OPEN', 163, 150015 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 3, 4, 316, 'OPEN', 164, 160236 ),
 ( 1, 83, 1, 2756, 1, 'N', 0.890, 0.520, 'Y', 4, 4, 316, 'OPEN', 164, 160236 ),
 ( 1, 83, 1, 2756, 1, 'Y', null, null, 'N', 5, 4, 316, 'OPEN', 164, 160236 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_metadata ( dither_point_index, msa_metadata_id, observation, program, visit, background, estimated_source_in_shutter_x, estimated_source_in_shutter_y, primary_source, shutter_column, shutter_quadrant, shutter_row, shutter_state, slitlet_id, source_id ) values
 ( 2, 83, 1, 2756, 1, 'N', 0.136, 0.623, 'Y', 130, 1, 12, 'OPEN', 84, 40092 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 131, 1, 12, 'OPEN', 84, 40092 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 132, 1, 12, 'OPEN', 84, 40092 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.656, 0.276, 'Y', 25, 2, 19, 'OPEN', 85, 160183 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 26, 2, 19, 'OPEN', 85, 160183 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 27, 2, 19, 'OPEN', 85, 160183 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.468, 0.506, 'Y', 156, 2, 34, 'OPEN', 86, 390022 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 157, 2, 34, 'OPEN', 86, 390022 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 158, 2, 34, 'OPEN', 86, 390022 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.632, 0.492, 'Y', 124, 1, 39, 'OPEN', 87, 320035 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 125, 1, 39, 'OPEN', 87, 320035 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 126, 1, 39, 'OPEN', 87, 320035 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.675, 0.623, 'Y', 114, 2, 40, 'OPEN', 88, 30001 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 115, 2, 40, 'OPEN', 88, 30001 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 116, 2, 40, 'OPEN', 88, 30001 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.542, 0.650, 'Y', 61, 1, 49, 'OPEN', 89, 40059 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 1, 49, 'OPEN', 89, 40059 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 63, 1, 49, 'OPEN', 89, 40059 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.834, 0.270, 'Y', 101, 1, 50, 'OPEN', 90, 40056 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 102, 1, 50, 'OPEN', 90, 40056 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 103, 1, 50, 'OPEN', 90, 40056 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.510, 0.485, 'Y', 152, 2, 50, 'OPEN', 91, -5 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 153, 2, 50, 'OPEN', 91, -5 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 154, 2, 50, 'OPEN', 91, -5 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.205, 0.787, 'Y', 90, 1, 59, 'OPEN', 92, 40202 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 91, 1, 59, 'OPEN', 92, 40202 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 92, 1, 59, 'OPEN', 92, 40202 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.140, 0.091, 'Y', 85, 1, 62, 'OPEN', 93, 40048 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 1, 62, 'OPEN', 93, 40048 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 1, 62, 'OPEN', 93, 40048 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.690, 0.690, 'Y', 154, 1, 69, 'OPEN', 94, 40087 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 155, 1, 69, 'OPEN', 94, 40087 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 156, 1, 69, 'OPEN', 94, 40087 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.357, 0.850, 'Y', 55, 1, 80, 'OPEN', 95, 160149 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 56, 1, 80, 'OPEN', 95, 160149 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 57, 1, 80, 'OPEN', 95, 160149 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.511, 0.496, 'Y', 13, 2, 81, 'OPEN', 96, -6 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 14, 2, 81, 'OPEN', 96, -6 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 15, 2, 81, 'OPEN', 96, -6 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.127, 0.849, 'Y', 37, 2, 81, 'OPEN', 97, 10018 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 38, 2, 81, 'OPEN', 97, 10018 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 39, 2, 81, 'OPEN', 97, 10018 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.635, 0.382, 'Y', 147, 2, 84, 'OPEN', 98, 100001 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 148, 2, 84, 'OPEN', 98, 100001 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 149, 2, 84, 'OPEN', 98, 100001 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.345, 0.286, 'Y', 53, 2, 85, 'OPEN', 99, 90012 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 54, 2, 85, 'OPEN', 99, 90012 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 55, 2, 85, 'OPEN', 99, 90012 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.409, 0.450, 'N', 77, 2, 104, 'OPEN', 100, 410005 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.416, 0.521, 'Y', 77, 2, 104, 'OPEN', 100, 101 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 104, 'OPEN', 100, 410005 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 104, 'OPEN', 100, 101 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 79, 2, 104, 'OPEN', 100, 410005 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 79, 2, 104, 'OPEN', 100, 101 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.510, 0.491, 'Y', 81, 2, 104, 'OPEN', 101, -7 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 104, 'OPEN', 101, -7 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 83, 2, 104, 'OPEN', 101, -7 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.526, 0.548, 'Y', 101, 2, 122, 'OPEN', 102, 90005 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 102, 2, 122, 'OPEN', 102, 90005 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 103, 2, 122, 'OPEN', 102, 90005 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.272, 0.724, 'Y', 90, 2, 124, 'OPEN', 103, 80095 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 91, 2, 124, 'OPEN', 103, 80095 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 92, 2, 124, 'OPEN', 103, 80095 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.169, 0.779, 'Y', 106, 2, 131, 'OPEN', 104, 80012 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 107, 2, 131, 'OPEN', 104, 80012 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 108, 2, 131, 'OPEN', 104, 80012 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.666, 0.754, 'Y', 45, 1, 136, 'OPEN', 105, 40067 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 1, 136, 'OPEN', 105, 40067 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 1, 136, 'OPEN', 105, 40067 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.428, 0.104, 'Y', 121, 2, 137, 'OPEN', 106, 80142 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 122, 2, 137, 'OPEN', 106, 80142 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 2, 137, 'OPEN', 106, 80142 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.206, 0.316, 'Y', 45, 2, 187, 'OPEN', 107, 70006 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 2, 187, 'OPEN', 107, 70006 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 2, 187, 'OPEN', 107, 70006 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.358, 0.526, 'Y', 126, 2, 190, 'OPEN', 108, 70023 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 127, 2, 190, 'OPEN', 108, 70023 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 128, 2, 190, 'OPEN', 108, 70023 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.264, 0.212, 'Y', 22, 2, 200, 'OPEN', 109, 20015 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 23, 2, 200, 'OPEN', 109, 20015 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 24, 2, 200, 'OPEN', 109, 20015 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.183, 0.440, 'Y', 33, 2, 237, 'OPEN', 110, 202 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 34, 2, 237, 'OPEN', 110, 202 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 35, 2, 237, 'OPEN', 110, 202 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.789, 0.498, 'Y', 140, 2, 238, 'OPEN', 111, 410069 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 141, 2, 238, 'OPEN', 111, 410069 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 142, 2, 238, 'OPEN', 111, 410069 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.659, 0.725, 'Y', 116, 1, 248, 'OPEN', 112, 160289 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 117, 1, 248, 'OPEN', 112, 160289 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 118, 1, 248, 'OPEN', 112, 160289 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.378, 0.468, 'Y', 65, 2, 249, 'OPEN', 113, 410044 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 66, 2, 249, 'OPEN', 113, 410044 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 67, 2, 249, 'OPEN', 113, 410044 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.418, 0.666, 'Y', 123, 1, 252, 'OPEN', 114, 50036 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 1, 252, 'OPEN', 114, 50036 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 125, 1, 252, 'OPEN', 114, 50036 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.287, 0.650, 'Y', 60, 2, 254, 'OPEN', 115, 410045 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 2, 254, 'OPEN', 115, 410045 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 2, 254, 'OPEN', 115, 410045 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.860, 0.782, 'Y', 111, 2, 256, 'OPEN', 116, 90031 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 112, 2, 256, 'OPEN', 116, 90031 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 113, 2, 256, 'OPEN', 116, 90031 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.765, 0.809, 'Y', 146, 1, 257, 'OPEN', 117, 160294 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 147, 1, 257, 'OPEN', 117, 160294 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 148, 1, 257, 'OPEN', 117, 160294 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.841, 0.896, 'Y', 164, 1, 264, 'OPEN', 118, 40090 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 165, 1, 264, 'OPEN', 118, 40090 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 166, 1, 264, 'OPEN', 118, 40090 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.383, 0.664, 'Y', 96, 2, 268, 'OPEN', 119, 80119 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 97, 2, 268, 'OPEN', 119, 80119 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 98, 2, 268, 'OPEN', 119, 80119 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.623, 0.788, 'Y', 61, 1, 269, 'OPEN', 120, 40066 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 1, 269, 'OPEN', 120, 40066 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 63, 1, 269, 'OPEN', 120, 40066 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.644, 0.758, 'Y', 93, 1, 271, 'OPEN', 121, 320028 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 94, 1, 271, 'OPEN', 121, 320028 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 95, 1, 271, 'OPEN', 121, 320028 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.869, 0.411, 'Y', 73, 2, 271, 'OPEN', 122, 110003 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 74, 2, 271, 'OPEN', 122, 110003 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 75, 2, 271, 'OPEN', 122, 110003 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.324, 0.623, 'Y', 66, 1, 276, 'OPEN', 123, 160158 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 67, 1, 276, 'OPEN', 123, 160158 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 68, 1, 276, 'OPEN', 123, 160158 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.259, 0.617, 'Y', 6, 2, 279, 'OPEN', 124, 80065 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 7, 2, 279, 'OPEN', 124, 80065 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 8, 2, 279, 'OPEN', 124, 80065 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.185, 0.321, 'Y', 86, 2, 282, 'OPEN', 125, 301 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 2, 282, 'OPEN', 125, 301 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 88, 2, 282, 'OPEN', 125, 301 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 56, 2, 290, 'OPEN', 126, 500002 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.528, 0.040, 'Y', 57, 2, 290, 'OPEN', 126, 500002 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 58, 2, 290, 'OPEN', 126, 500002 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.541, 0.502, 'Y', 135, 2, 290, 'OPEN', 127, 20025 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 136, 2, 290, 'OPEN', 127, 20025 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 137, 2, 290, 'OPEN', 127, 20025 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 291, 'OPEN', 128, 102 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 291, 'OPEN', 128, 102 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 79, 2, 291, 'OPEN', 128, 102 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.078, 0.364, 'Y', 80, 2, 291, 'OPEN', 128, 102 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 291, 'OPEN', 128, 102 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 291, 'OPEN', 128, 102 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.504, 0.503, 'Y', 169, 1, 318, 'OPEN', 129, -8 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 170, 1, 318, 'OPEN', 129, -8 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 171, 1, 318, 'OPEN', 129, -8 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.519, 0.284, 'Y', 106, 2, 327, 'OPEN', 130, 500001 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 107, 2, 327, 'OPEN', 130, 500001 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 108, 2, 327, 'OPEN', 130, 500001 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.289, 0.091, 'Y', 12, 2, 355, 'OPEN', 131, 500010 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 13, 2, 355, 'OPEN', 131, 500010 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 14, 2, 355, 'OPEN', 131, 500010 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.502, 0.484, 'Y', 151, 2, 359, 'OPEN', 132, -9 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 152, 2, 359, 'OPEN', 132, -9 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 153, 2, 359, 'OPEN', 132, -9 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.241, 0.408, 'Y', 112, 1, 361, 'OPEN', 133, 160281 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 113, 1, 361, 'OPEN', 133, 160281 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 114, 1, 361, 'OPEN', 133, 160281 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.517, 0.797, 'Y', 127, 3, 14, 'OPEN', 134, 160284 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 128, 3, 14, 'OPEN', 134, 160284 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 129, 3, 14, 'OPEN', 134, 160284 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.528, 0.211, 'Y', 122, 3, 28, 'OPEN', 135, 40050 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 3, 28, 'OPEN', 135, 40050 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 3, 28, 'OPEN', 135, 40050 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.801, 0.294, 'Y', 66, 3, 32, 'OPEN', 136, 10020 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 67, 3, 32, 'OPEN', 136, 10020 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 68, 3, 32, 'OPEN', 136, 10020 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.821, 0.508, 'Y', 103, 3, 32, 'OPEN', 137, 160024 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 104, 3, 32, 'OPEN', 137, 160024 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 105, 3, 32, 'OPEN', 137, 160024 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.163, 0.296, 'Y', 56, 4, 56, 'OPEN', 138, 40033 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 57, 4, 56, 'OPEN', 138, 40033 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 58, 4, 56, 'OPEN', 138, 40033 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.496, 0.494, 'Y', 33, 4, 76, 'OPEN', 139, -10 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 34, 4, 76, 'OPEN', 139, -10 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 35, 4, 76, 'OPEN', 139, -10 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.249, 0.274, 'Y', 75, 4, 83, 'OPEN', 140, 80051 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 76, 4, 83, 'OPEN', 140, 80051 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 4, 83, 'OPEN', 140, 80051 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.647, 0.484, 'Y', 109, 4, 83, 'OPEN', 141, 40173 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 110, 4, 83, 'OPEN', 141, 40173 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 111, 4, 83, 'OPEN', 141, 40173 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.743, 0.127, 'Y', 8, 4, 96, 'OPEN', 142, 70027 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 9, 4, 96, 'OPEN', 142, 70027 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 10, 4, 96, 'OPEN', 142, 70027 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.495, 0.512, 'Y', 74, 3, 98, 'OPEN', 143, -11 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 75, 3, 98, 'OPEN', 143, -11 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 76, 3, 98, 'OPEN', 143, -11 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.517, 0.199, 'Y', 23, 4, 98, 'OPEN', 144, 90026 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 24, 4, 98, 'OPEN', 144, 90026 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 25, 4, 98, 'OPEN', 144, 90026 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.353, 0.960, 'Y', 94, 3, 102, 'OPEN', 145, 160273 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 95, 3, 102, 'OPEN', 145, 160273 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 96, 3, 102, 'OPEN', 145, 160273 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.191, 0.735, 'Y', 46, 4, 103, 'OPEN', 146, 40020 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 4, 103, 'OPEN', 146, 40020 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 48, 4, 103, 'OPEN', 146, 40020 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.590, 0.105, 'Y', 85, 4, 109, 'OPEN', 147, 160182 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 4, 109, 'OPEN', 147, 160182 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 4, 109, 'OPEN', 147, 160182 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.675, 0.283, 'Y', 134, 4, 110, 'OPEN', 148, 160326 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 135, 4, 110, 'OPEN', 148, 160326 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 136, 4, 110, 'OPEN', 148, 160326 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.549, 0.663, 'Y', 29, 4, 113, 'OPEN', 149, 80075 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 30, 4, 113, 'OPEN', 149, 80075 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 31, 4, 113, 'OPEN', 149, 80075 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.238, 0.451, 'Y', 18, 4, 126, 'OPEN', 150, 80007 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 19, 4, 126, 'OPEN', 150, 80007 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 20, 4, 126, 'OPEN', 150, 80007 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.296, 0.271, 'Y', 98, 3, 132, 'OPEN', 151, 40065 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 99, 3, 132, 'OPEN', 151, 40065 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 100, 3, 132, 'OPEN', 151, 40065 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.494, 0.489, 'Y', 95, 4, 142, 'OPEN', 152, -12 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 96, 4, 142, 'OPEN', 152, -12 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 97, 4, 142, 'OPEN', 152, -12 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.833, 0.905, 'Y', 86, 3, 165, 'OPEN', 153, 160168 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 3, 165, 'OPEN', 153, 160168 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 88, 3, 165, 'OPEN', 153, 160168 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.327, 0.664, 'Y', 69, 4, 168, 'OPEN', 154, 160355 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 70, 4, 168, 'OPEN', 154, 160355 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 71, 4, 168, 'OPEN', 154, 160355 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.706, 0.085, 'Y', 37, 4, 170, 'OPEN', 155, 160260 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 38, 4, 170, 'OPEN', 155, 160260 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 39, 4, 170, 'OPEN', 155, 160260 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.171, 0.272, 'Y', 154, 4, 176, 'OPEN', 156, 160173 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 155, 4, 176, 'OPEN', 156, 160173 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 156, 4, 176, 'OPEN', 156, 160173 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.371, 0.293, 'Y', 140, 3, 188, 'OPEN', 157, 160170 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 141, 3, 188, 'OPEN', 157, 160170 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 142, 3, 188, 'OPEN', 157, 160170 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.293, 0.699, 'Y', 117, 4, 196, 'OPEN', 158, 160325 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 118, 4, 196, 'OPEN', 158, 160325 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 119, 4, 196, 'OPEN', 158, 160325 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.686, 0.282, 'Y', 149, 3, 197, 'OPEN', 159, 160123 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 150, 3, 197, 'OPEN', 159, 160123 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 151, 3, 197, 'OPEN', 159, 160123 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.392, 0.153, 'Y', 60, 4, 269, 'OPEN', 160, 160298 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 4, 269, 'OPEN', 160, 160298 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 4, 269, 'OPEN', 160, 160298 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.779, 0.511, 'Y', 46, 4, 290, 'OPEN', 161, 40036 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 4, 290, 'OPEN', 161, 40036 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 48, 4, 290, 'OPEN', 161, 40036 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.583, 0.318, 'Y', 123, 3, 292, 'OPEN', 162, 160150 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 3, 292, 'OPEN', 162, 160150 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 125, 3, 292, 'OPEN', 162, 160150 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.688, 0.315, 'Y', 52, 4, 302, 'OPEN', 163, 150015 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 53, 4, 302, 'OPEN', 163, 150015 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 54, 4, 302, 'OPEN', 163, 150015 ),
 ( 2, 83, 1, 2756, 1, 'N', 0.878, 0.517, 'Y', 3, 4, 316, 'OPEN', 164, 160236 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 4, 4, 316, 'OPEN', 164, 160236 ),
 ( 2, 83, 1, 2756, 1, 'Y', null, null, 'N', 5, 4, 316, 'OPEN', 164, 160236 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_metadata ( dither_point_index, msa_metadata_id, observation, program, visit, background, estimated_source_in_shutter_x, estimated_source_in_shutter_y, primary_source, shutter_column, shutter_quadrant, shutter_row, shutter_state, slitlet_id, source_id ) values
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 130, 1, 12, 'OPEN', 84, 40092 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 131, 1, 12, 'OPEN', 84, 40092 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.104, 0.609, 'Y', 132, 1, 12, 'OPEN', 84, 40092 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 25, 2, 19, 'OPEN', 85, 160183 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 26, 2, 19, 'OPEN', 85, 160183 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.629, 0.285, 'Y', 27, 2, 19, 'OPEN', 85, 160183 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 156, 2, 34, 'OPEN', 86, 390022 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 157, 2, 34, 'OPEN', 86, 390022 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.448, 0.536, 'Y', 158, 2, 34, 'OPEN', 86, 390022 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 1, 39, 'OPEN', 87, 320035 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 125, 1, 39, 'OPEN', 87, 320035 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.602, 0.477, 'Y', 126, 1, 39, 'OPEN', 87, 320035 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 114, 2, 40, 'OPEN', 88, 30001 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 115, 2, 40, 'OPEN', 88, 30001 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.653, 0.646, 'Y', 116, 2, 40, 'OPEN', 88, 30001 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 1, 49, 'OPEN', 89, 40059 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 1, 49, 'OPEN', 89, 40059 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.512, 0.624, 'Y', 63, 1, 49, 'OPEN', 89, 40059 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 101, 1, 50, 'OPEN', 90, 40056 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 102, 1, 50, 'OPEN', 90, 40056 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.804, 0.251, 'Y', 103, 1, 50, 'OPEN', 90, 40056 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 152, 2, 50, 'OPEN', 91, -5 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 153, 2, 50, 'OPEN', 91, -5 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.490, 0.515, 'Y', 154, 2, 50, 'OPEN', 91, -5 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 90, 1, 59, 'OPEN', 92, 40202 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 91, 1, 59, 'OPEN', 92, 40202 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.176, 0.766, 'Y', 92, 1, 59, 'OPEN', 92, 40202 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 85, 1, 62, 'OPEN', 93, 40048 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 1, 62, 'OPEN', 93, 40048 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.111, 0.069, 'Y', 87, 1, 62, 'OPEN', 93, 40048 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 154, 1, 69, 'OPEN', 94, 40087 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 155, 1, 69, 'OPEN', 94, 40087 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.664, 0.680, 'Y', 156, 1, 69, 'OPEN', 94, 40087 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 55, 1, 80, 'OPEN', 95, 160149 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 56, 1, 80, 'OPEN', 95, 160149 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.329, 0.823, 'Y', 57, 1, 80, 'OPEN', 95, 160149 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 13, 2, 81, 'OPEN', 96, -6 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 14, 2, 81, 'OPEN', 96, -6 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.489, 0.504, 'Y', 15, 2, 81, 'OPEN', 96, -6 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 37, 2, 81, 'OPEN', 97, 10018 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 38, 2, 81, 'OPEN', 97, 10018 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.105, 0.860, 'Y', 39, 2, 81, 'OPEN', 97, 10018 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 147, 2, 84, 'OPEN', 98, 100001 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 148, 2, 84, 'OPEN', 98, 100001 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.617, 0.411, 'Y', 149, 2, 84, 'OPEN', 98, 100001 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 53, 2, 85, 'OPEN', 99, 90012 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 54, 2, 85, 'OPEN', 99, 90012 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.324, 0.300, 'Y', 55, 2, 85, 'OPEN', 99, 90012 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 104, 'OPEN', 100, 410005 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 104, 'OPEN', 100, 101 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 104, 'OPEN', 100, 410005 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 104, 'OPEN', 100, 101 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.390, 0.469, 'N', 79, 2, 104, 'OPEN', 100, 410005 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.397, 0.540, 'Y', 79, 2, 104, 'OPEN', 100, 101 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 104, 'OPEN', 101, -7 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 82, 2, 104, 'OPEN', 101, -7 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.490, 0.510, 'Y', 83, 2, 104, 'OPEN', 101, -7 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 101, 2, 122, 'OPEN', 102, 90005 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 102, 2, 122, 'OPEN', 102, 90005 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.508, 0.571, 'Y', 103, 2, 122, 'OPEN', 102, 90005 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 90, 2, 124, 'OPEN', 103, 80095 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 91, 2, 124, 'OPEN', 103, 80095 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.254, 0.744, 'Y', 92, 2, 124, 'OPEN', 103, 80095 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 106, 2, 131, 'OPEN', 104, 80012 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 107, 2, 131, 'OPEN', 104, 80012 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.152, 0.802, 'Y', 108, 2, 131, 'OPEN', 104, 80012 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 45, 1, 136, 'OPEN', 105, 40067 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 1, 136, 'OPEN', 105, 40067 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.643, 0.725, 'Y', 47, 1, 136, 'OPEN', 105, 40067 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 121, 2, 137, 'OPEN', 106, 80142 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 122, 2, 137, 'OPEN', 106, 80142 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.412, 0.129, 'Y', 123, 2, 137, 'OPEN', 106, 80142 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 45, 2, 187, 'OPEN', 107, 70006 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 2, 187, 'OPEN', 107, 70006 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.190, 0.330, 'Y', 47, 2, 187, 'OPEN', 107, 70006 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 126, 2, 190, 'OPEN', 108, 70023 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 127, 2, 190, 'OPEN', 108, 70023 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.345, 0.553, 'Y', 128, 2, 190, 'OPEN', 108, 70023 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 22, 2, 200, 'OPEN', 109, 20015 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 23, 2, 200, 'OPEN', 109, 20015 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.249, 0.222, 'Y', 24, 2, 200, 'OPEN', 109, 20015 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 33, 2, 237, 'OPEN', 110, 202 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 34, 2, 237, 'OPEN', 110, 202 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.170, 0.452, 'Y', 35, 2, 237, 'OPEN', 110, 202 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 140, 2, 238, 'OPEN', 111, 410069 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 141, 2, 238, 'OPEN', 111, 410069 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.778, 0.528, 'Y', 142, 2, 238, 'OPEN', 111, 410069 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 116, 1, 248, 'OPEN', 112, 160289 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 117, 1, 248, 'OPEN', 112, 160289 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.644, 0.709, 'Y', 118, 1, 248, 'OPEN', 112, 160289 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 65, 2, 249, 'OPEN', 113, 410044 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 66, 2, 249, 'OPEN', 113, 410044 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.367, 0.485, 'Y', 67, 2, 249, 'OPEN', 113, 410044 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 1, 252, 'OPEN', 114, 50036 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 1, 252, 'OPEN', 114, 50036 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.404, 0.652, 'Y', 125, 1, 252, 'OPEN', 114, 50036 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 60, 2, 254, 'OPEN', 115, 410045 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 2, 254, 'OPEN', 115, 410045 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.277, 0.666, 'Y', 62, 2, 254, 'OPEN', 115, 410045 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 111, 2, 256, 'OPEN', 116, 90031 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 112, 2, 256, 'OPEN', 116, 90031 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.851, 0.807, 'Y', 113, 2, 256, 'OPEN', 116, 90031 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 146, 1, 257, 'OPEN', 117, 160294 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 147, 1, 257, 'OPEN', 117, 160294 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.752, 0.798, 'Y', 148, 1, 257, 'OPEN', 117, 160294 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 164, 1, 264, 'OPEN', 118, 40090 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 165, 1, 264, 'OPEN', 118, 40090 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.829, 0.889, 'Y', 166, 1, 264, 'OPEN', 118, 40090 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 96, 2, 268, 'OPEN', 119, 80119 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 97, 2, 268, 'OPEN', 119, 80119 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.374, 0.687, 'Y', 98, 2, 268, 'OPEN', 119, 80119 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 1, 269, 'OPEN', 120, 40066 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 62, 1, 269, 'OPEN', 120, 40066 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.610, 0.762, 'Y', 63, 1, 269, 'OPEN', 120, 40066 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 93, 1, 271, 'OPEN', 121, 320028 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 94, 1, 271, 'OPEN', 121, 320028 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.631, 0.738, 'Y', 95, 1, 271, 'OPEN', 121, 320028 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 73, 2, 271, 'OPEN', 122, 110003 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 74, 2, 271, 'OPEN', 122, 110003 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.860, 0.430, 'Y', 75, 2, 271, 'OPEN', 122, 110003 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 66, 1, 276, 'OPEN', 123, 160158 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 67, 1, 276, 'OPEN', 123, 160158 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.311, 0.598, 'Y', 68, 1, 276, 'OPEN', 123, 160158 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 6, 2, 279, 'OPEN', 124, 80065 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 7, 2, 279, 'OPEN', 124, 80065 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.249, 0.624, 'Y', 8, 2, 279, 'OPEN', 124, 80065 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 2, 282, 'OPEN', 125, 301 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 2, 282, 'OPEN', 125, 301 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.176, 0.342, 'Y', 88, 2, 282, 'OPEN', 125, 301 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 56, 2, 290, 'OPEN', 126, 0 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 57, 2, 290, 'OPEN', 126, 0 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 58, 2, 290, 'OPEN', 126, 0 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 135, 2, 290, 'OPEN', 127, 20025 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 136, 2, 290, 'OPEN', 127, 20025 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.533, 0.531, 'Y', 137, 2, 290, 'OPEN', 127, 20025 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 77, 2, 291, 'OPEN', 128, 102 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 78, 2, 291, 'OPEN', 128, 102 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 79, 2, 291, 'OPEN', 128, 102 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 80, 2, 291, 'OPEN', 128, 102 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 81, 2, 291, 'OPEN', 128, 102 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.070, 0.384, 'Y', 82, 2, 291, 'OPEN', 128, 102 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 169, 1, 318, 'OPEN', 129, -8 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 170, 1, 318, 'OPEN', 129, -8 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.496, 0.497, 'Y', 171, 1, 318, 'OPEN', 129, -8 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 106, 2, 327, 'OPEN', 130, 500001 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 107, 2, 327, 'OPEN', 130, 500001 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.514, 0.308, 'Y', 108, 2, 327, 'OPEN', 130, 500001 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 12, 2, 355, 'OPEN', 131, 500010 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 13, 2, 355, 'OPEN', 131, 500010 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.284, 0.099, 'Y', 14, 2, 355, 'OPEN', 131, 500010 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 151, 2, 359, 'OPEN', 132, -9 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 152, 2, 359, 'OPEN', 132, -9 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.498, 0.515, 'Y', 153, 2, 359, 'OPEN', 132, -9 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 112, 1, 361, 'OPEN', 133, 160281 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 113, 1, 361, 'OPEN', 133, 160281 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.235, 0.391, 'Y', 114, 1, 361, 'OPEN', 133, 160281 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 127, 3, 14, 'OPEN', 134, 160284 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 128, 3, 14, 'OPEN', 134, 160284 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.520, 0.783, 'Y', 129, 3, 14, 'OPEN', 134, 160284 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 122, 3, 28, 'OPEN', 135, 40050 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 3, 28, 'OPEN', 135, 40050 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.532, 0.196, 'Y', 124, 3, 28, 'OPEN', 135, 40050 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 66, 3, 32, 'OPEN', 136, 10020 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 67, 3, 32, 'OPEN', 136, 10020 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.806, 0.270, 'Y', 68, 3, 32, 'OPEN', 136, 10020 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 103, 3, 32, 'OPEN', 137, 160024 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 104, 3, 32, 'OPEN', 137, 160024 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.826, 0.490, 'Y', 105, 3, 32, 'OPEN', 137, 160024 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 56, 4, 56, 'OPEN', 138, 40033 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 57, 4, 56, 'OPEN', 138, 40033 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.168, 0.312, 'Y', 58, 4, 56, 'OPEN', 138, 40033 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 33, 4, 76, 'OPEN', 139, -10 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 34, 4, 76, 'OPEN', 139, -10 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.503, 0.506, 'Y', 35, 4, 76, 'OPEN', 139, -10 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 75, 4, 83, 'OPEN', 140, 80051 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 76, 4, 83, 'OPEN', 140, 80051 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.256, 0.293, 'Y', 77, 4, 83, 'OPEN', 140, 80051 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 109, 4, 83, 'OPEN', 141, 40173 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 110, 4, 83, 'OPEN', 141, 40173 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.654, 0.509, 'Y', 111, 4, 83, 'OPEN', 141, 40173 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 8, 4, 96, 'OPEN', 142, 70027 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 9, 4, 96, 'OPEN', 142, 70027 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.751, 0.135, 'Y', 10, 4, 96, 'OPEN', 142, 70027 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 74, 3, 98, 'OPEN', 143, -11 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 75, 3, 98, 'OPEN', 143, -11 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.505, 0.488, 'Y', 76, 3, 98, 'OPEN', 143, -11 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 23, 4, 98, 'OPEN', 144, 90026 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 24, 4, 98, 'OPEN', 144, 90026 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.525, 0.209, 'Y', 25, 4, 98, 'OPEN', 144, 90026 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 94, 3, 102, 'OPEN', 145, 160273 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 95, 3, 102, 'OPEN', 145, 160273 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.363, 0.940, 'Y', 96, 3, 102, 'OPEN', 145, 160273 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 4, 103, 'OPEN', 146, 40020 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 4, 103, 'OPEN', 146, 40020 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.200, 0.749, 'Y', 48, 4, 103, 'OPEN', 146, 40020 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 85, 4, 109, 'OPEN', 147, 160182 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 4, 109, 'OPEN', 147, 160182 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.598, 0.125, 'Y', 87, 4, 109, 'OPEN', 147, 160182 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 134, 4, 110, 'OPEN', 148, 160326 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 135, 4, 110, 'OPEN', 148, 160326 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.683, 0.311, 'Y', 136, 4, 110, 'OPEN', 148, 160326 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 29, 4, 113, 'OPEN', 149, 80075 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 30, 4, 113, 'OPEN', 149, 80075 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.558, 0.674, 'Y', 31, 4, 113, 'OPEN', 149, 80075 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 18, 4, 126, 'OPEN', 150, 80007 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 19, 4, 126, 'OPEN', 150, 80007 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.249, 0.460, 'Y', 20, 4, 126, 'OPEN', 150, 80007 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 98, 3, 132, 'OPEN', 151, 40065 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 99, 3, 132, 'OPEN', 151, 40065 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.308, 0.251, 'Y', 100, 3, 132, 'OPEN', 151, 40065 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 95, 4, 142, 'OPEN', 152, -12 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 96, 4, 142, 'OPEN', 152, -12 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.505, 0.511, 'Y', 97, 4, 142, 'OPEN', 152, -12 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 86, 3, 165, 'OPEN', 153, 160168 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 87, 3, 165, 'OPEN', 153, 160168 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.848, 0.883, 'Y', 88, 3, 165, 'OPEN', 153, 160168 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 69, 4, 168, 'OPEN', 154, 160355 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 70, 4, 168, 'OPEN', 154, 160355 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.339, 0.682, 'Y', 71, 4, 168, 'OPEN', 154, 160355 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 37, 4, 170, 'OPEN', 155, 160260 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 38, 4, 170, 'OPEN', 155, 160260 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.719, 0.097, 'Y', 39, 4, 170, 'OPEN', 155, 160260 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 154, 4, 176, 'OPEN', 156, 40196 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.892, 0.120, 'Y', 155, 4, 176, 'OPEN', 156, 40196 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.182, 0.303, 'N', 156, 4, 176, 'OPEN', 156, 160173 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 140, 3, 188, 'OPEN', 157, 160170 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 141, 3, 188, 'OPEN', 157, 160170 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.387, 0.281, 'Y', 142, 3, 188, 'OPEN', 157, 160170 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 117, 4, 196, 'OPEN', 158, 160325 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 118, 4, 196, 'OPEN', 158, 160325 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.307, 0.725, 'Y', 119, 4, 196, 'OPEN', 158, 160325 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 149, 3, 197, 'OPEN', 159, 160123 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 150, 3, 197, 'OPEN', 159, 160123 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.703, 0.271, 'Y', 151, 3, 197, 'OPEN', 159, 160123 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 60, 4, 269, 'OPEN', 160, 160298 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 61, 4, 269, 'OPEN', 160, 160298 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.411, 0.168, 'Y', 62, 4, 269, 'OPEN', 160, 160298 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 46, 4, 290, 'OPEN', 161, 40036 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 47, 4, 290, 'OPEN', 161, 40036 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.799, 0.524, 'Y', 48, 4, 290, 'OPEN', 161, 40036 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 123, 3, 292, 'OPEN', 162, 160150 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 124, 3, 292, 'OPEN', 162, 160150 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.607, 0.303, 'Y', 125, 3, 292, 'OPEN', 162, 160150 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 52, 4, 302, 'OPEN', 163, 150015 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 53, 4, 302, 'OPEN', 163, 150015 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.709, 0.328, 'Y', 54, 4, 302, 'OPEN', 163, 150015 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 3, 4, 316, 'OPEN', 164, 160236 ),
 ( 3, 83, 1, 2756, 1, 'Y', null, null, 'N', 4, 4, 316, 'OPEN', 164, 160236 ),
 ( 3, 83, 1, 2756, 1, 'N', 0.902, 0.523, 'Y', 5, 4, 316, 'OPEN', 164, 160236 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_at_exposure_spec ( exposure_spec_order_number, master_background_processing, msa_config_id, msa_default_state, msa_metadata_id, observation, program, visit ) values ( 2, 'N', 2, 'CLOSED', 83, 1, 2756, 1 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_target_acq ( data_volume_mib, filter, msa_config_id, msa_default_state, observation, order_number, program, readout_pattern, reference_star_flux, source_id, visit ) values ( 240.0, 'CLEAR', 3, 'CLOSED', 1, 1, 2756, 'NRSRAPID', 0.0, 0, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320049', -30.409550427735326, 22.31, 1, 2756, 3.57269639743274, 320049, '320049' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS1', 1652, 816, 1, 1, 2756, 320049, 329.55588162816093, -444.07044330257577, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320089', -30.38737602154032, 22.9, 1, 2756, 3.57026957434944, 320089, '320089' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS1', 1736, 49, 1, 2, 2756, 320089, 283.5324248575293, -378.4057419409237, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320073', -30.385645196591213, 21.66, 1, 2756, 3.60420399405066, 320073, '320073' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS2', 1448, 1818, 1, 3, 2756, 320073, 372.0639201704814, -320.89243166860797, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320030', -30.424365799999975, 22.94, 1, 2756, 3.5582499, 320030, '320030' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS1', 1122, 1223, 1, 4, 2756, 320030, 316.9470964785293, -512.6101363134694, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320026', -30.429608299999984, 22.94, 1, 2756, 3.6182682, 320026, '320026' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS2', 1362, 262, 1, 5, 2756, 320026, 488.2405314494703, -436.91562156254804, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320106', -30.421063984667402, 21.55, 1, 2756, 3.58120871344619, 320106, '320106' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS1', 1822, 1253, 1, 6, 2756, 320106, 373.0222237912148, -467.03458564104494, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320036', -30.41804289999999, 21.61, 1, 2756, 3.6062918, 320036, '320036' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS2', 1627, 714, 1, 7, 2756, 320036, 435.34162876042654, -419.08857303167224, 1 )
go
update #AOK set aok = aok+@@error
go

insert into target_acq_reference_stars ( catalog_name, dec, magnitude, observation, program, ra, reference_star, reference_star_name ) values ( '320045', -30.402225091232424, 23.07, 1, 2756, 3.59714381769489, 320045, '320045' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_reference_stars ( detector, extract_start_column, extract_start_row, observation, order_number, program, reference_star, v2, v3, visit ) values ( 'NRS2', 1781, 1298, 1, 8, 2756, 320045, 382.5047968713052, -383.6196408621845, 1 )
go
update #AOK set aok = aok+@@error
go

insert into special_requirements ( argument_1, argument_2, observation, program, special_requirement ) values ( '12-SEP-2022:00:00:00', '23-OCT-2022:00:00:00', 3, 2756, 'Between' )
go
update #AOK set aok = aok+@@error
go

insert into absolute_time_windows ( end_time, observation, program, start_time, visit ) values ( '2022-10-23T00:00:00Z', 3, 2756, '2022-09-12T00:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into special_requirements ( argument_1, argument_2, observation, program, special_requirement ) values ( '85', '0', 3, 2756, 'Offset' )
go
update #AOK set aok = aok+@@error
go

insert into special_requirements ( argument_1, observation, program, special_requirement ) values ( '40th percentile', 3, 2756, 'Background Limited' )
go
update #AOK set aok = aok+@@error
go

insert into special_requirements ( argument_1, argument_2, observation, program, special_requirement ) values ( '05-DEC-2022:00:00:00', '30-DEC-2022:00:00:00', 2, 2756, 'Between' )
go
update #AOK set aok = aok+@@error
go

insert into absolute_time_windows ( end_time, observation, program, start_time, visit ) values ( '2022-12-30T00:00:00Z', 2, 2756, '2022-12-05T00:00:00Z', 1 )
go
update #AOK set aok = aok+@@error
go

insert into special_requirements ( argument_1, argument_2, observation, program, special_requirement ) values ( '85', '0', 2, 2756, 'Offset' )
go
update #AOK set aok = aok+@@error
go

insert into apt_diagnostics ( diagnostic_id, diagnostic_text, explanation, program, severity ) values ( '4a618d8855f11679d51d90bda', 'All slew times are provisional until smart accounting has been run in the Visit Planner Tool.', 'Smart accounting is used to better estimate slew overheads for the entire program. In order to submit a proposal the smart accounting tool must be run so more accurate slew estimates are submitted. If it has not been run since the last edit, ''Run Smart Accounting'' can be initiated from the Proposal Information Form or in the Visit Planner.', 2756, 'WARNING' )
go
update #AOK set aok = aok+@@error
go

insert into apt_diagnostics ( diagnostic_id, diagnostic_text, explanation, program, severity ) values ( '969bcbe6f2d11447735e26824', 'The charged time of 9.67 hours exceeds the allocated time of 9.40 hours.', 'The charged time of 9.67 hours exceeds the allocated time of 9.40 hours.', 2756, 'ERROR' )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_config ( msa_config_id, observation, program, visit, shutter_column, shutter_quadrant, shutter_row ) values
 ( 1, 1, 2756, 1, 69, 1, 63 ),
 ( 1, 1, 2756, 1, 70, 1, 63 ),
 ( 1, 1, 2756, 1, 71, 1, 63 ),
 ( 1, 1, 2756, 1, 73, 2, 68 ),
 ( 1, 1, 2756, 1, 74, 2, 68 ),
 ( 1, 1, 2756, 1, 75, 2, 68 ),
 ( 1, 1, 2756, 1, 130, 2, 79 ),
 ( 1, 1, 2756, 1, 131, 2, 79 ),
 ( 1, 1, 2756, 1, 132, 2, 79 ),
 ( 1, 1, 2756, 1, 133, 1, 81 ),
 ( 1, 1, 2756, 1, 134, 1, 81 ),
 ( 1, 1, 2756, 1, 135, 1, 81 ),
 ( 1, 1, 2756, 1, 127, 1, 109 ),
 ( 1, 1, 2756, 1, 128, 1, 109 ),
 ( 1, 1, 2756, 1, 129, 1, 109 ),
 ( 1, 1, 2756, 1, 100, 2, 110 ),
 ( 1, 1, 2756, 1, 101, 2, 110 ),
 ( 1, 1, 2756, 1, 102, 2, 110 ),
 ( 1, 1, 2756, 1, 117, 2, 110 ),
 ( 1, 1, 2756, 1, 118, 2, 110 ),
 ( 1, 1, 2756, 1, 119, 2, 110 ),
 ( 1, 1, 2756, 1, 156, 2, 120 ),
 ( 1, 1, 2756, 1, 157, 2, 120 ),
 ( 1, 1, 2756, 1, 64, 1, 124 ),
 ( 1, 1, 2756, 1, 65, 1, 124 ),
 ( 1, 1, 2756, 1, 66, 1, 124 ),
 ( 1, 1, 2756, 1, 93, 1, 128 ),
 ( 1, 1, 2756, 1, 94, 1, 128 ),
 ( 1, 1, 2756, 1, 95, 1, 128 ),
 ( 1, 1, 2756, 1, 58, 1, 149 ),
 ( 1, 1, 2756, 1, 59, 1, 149 ),
 ( 1, 1, 2756, 1, 60, 1, 149 ),
 ( 1, 1, 2756, 1, 40, 2, 151 ),
 ( 1, 1, 2756, 1, 41, 2, 151 ),
 ( 1, 1, 2756, 1, 42, 2, 151 ),
 ( 1, 1, 2756, 1, 56, 2, 155 ),
 ( 1, 1, 2756, 1, 57, 2, 155 ),
 ( 1, 1, 2756, 1, 58, 2, 155 ),
 ( 1, 1, 2756, 1, 150, 2, 160 ),
 ( 1, 1, 2756, 1, 151, 2, 160 ),
 ( 1, 1, 2756, 1, 152, 2, 160 ),
 ( 1, 1, 2756, 1, 163, 1, 171 ),
 ( 1, 1, 2756, 1, 164, 1, 171 ),
 ( 1, 1, 2756, 1, 165, 1, 171 ),
 ( 1, 1, 2756, 1, 84, 2, 173 ),
 ( 1, 1, 2756, 1, 85, 2, 173 ),
 ( 1, 1, 2756, 1, 86, 2, 173 ),
 ( 1, 1, 2756, 1, 80, 2, 174 ),
 ( 1, 1, 2756, 1, 81, 2, 174 ),
 ( 1, 1, 2756, 1, 82, 2, 174 ),
 ( 1, 1, 2756, 1, 51, 2, 177 ),
 ( 1, 1, 2756, 1, 52, 2, 177 ),
 ( 1, 1, 2756, 1, 53, 2, 177 ),
 ( 1, 1, 2756, 1, 13, 2, 185 ),
 ( 1, 1, 2756, 1, 14, 2, 185 ),
 ( 1, 1, 2756, 1, 15, 2, 185 ),
 ( 1, 1, 2756, 1, 93, 2, 194 ),
 ( 1, 1, 2756, 1, 94, 2, 194 ),
 ( 1, 1, 2756, 1, 95, 2, 194 ),
 ( 1, 1, 2756, 1, 109, 2, 201 ),
 ( 1, 1, 2756, 1, 110, 2, 201 ),
 ( 1, 1, 2756, 1, 111, 2, 201 ),
 ( 1, 1, 2756, 1, 19, 1, 203 ),
 ( 1, 1, 2756, 1, 20, 1, 203 ),
 ( 1, 1, 2756, 1, 21, 1, 203 ),
 ( 1, 1, 2756, 1, 48, 1, 206 ),
 ( 1, 1, 2756, 1, 49, 1, 206 ),
 ( 1, 1, 2756, 1, 50, 1, 206 ),
 ( 1, 1, 2756, 1, 124, 2, 207 ),
 ( 1, 1, 2756, 1, 125, 2, 207 ),
 ( 1, 1, 2756, 1, 126, 2, 207 ),
 ( 1, 1, 2756, 1, 146, 2, 230 ),
 ( 1, 1, 2756, 1, 147, 2, 230 ),
 ( 1, 1, 2756, 1, 148, 2, 230 ),
 ( 1, 1, 2756, 1, 145, 1, 243 ),
 ( 1, 1, 2756, 1, 146, 1, 243 ),
 ( 1, 1, 2756, 1, 147, 1, 243 ),
 ( 1, 1, 2756, 1, 135, 2, 253 ),
 ( 1, 1, 2756, 1, 136, 2, 253 ),
 ( 1, 1, 2756, 1, 137, 2, 253 ),
 ( 1, 1, 2756, 1, 25, 2, 270 ),
 ( 1, 1, 2756, 1, 26, 2, 270 ),
 ( 1, 1, 2756, 1, 27, 2, 270 ),
 ( 1, 1, 2756, 1, 169, 1, 290 ),
 ( 1, 1, 2756, 1, 170, 1, 290 ),
 ( 1, 1, 2756, 1, 171, 1, 290 ),
 ( 1, 1, 2756, 1, 36, 2, 307 ),
 ( 1, 1, 2756, 1, 37, 2, 307 ),
 ( 1, 1, 2756, 1, 38, 2, 307 ),
 ( 1, 1, 2756, 1, 68, 2, 319 ),
 ( 1, 1, 2756, 1, 69, 2, 319 ),
 ( 1, 1, 2756, 1, 70, 2, 319 ),
 ( 1, 1, 2756, 1, 126, 1, 322 ),
 ( 1, 1, 2756, 1, 127, 1, 322 ),
 ( 1, 1, 2756, 1, 128, 1, 322 ),
 ( 1, 1, 2756, 1, 63, 2, 324 ),
 ( 1, 1, 2756, 1, 64, 2, 324 ),
 ( 1, 1, 2756, 1, 65, 2, 324 ),
 ( 1, 1, 2756, 1, 149, 1, 327 ),
 ( 1, 1, 2756, 1, 150, 1, 327 ),
 ( 1, 1, 2756, 1, 151, 1, 327 ),
 ( 1, 1, 2756, 1, 99, 2, 338 ),
 ( 1, 1, 2756, 1, 100, 2, 338 ),
 ( 1, 1, 2756, 1, 101, 2, 338 ),
 ( 1, 1, 2756, 1, 76, 2, 342 ),
 ( 1, 1, 2756, 1, 77, 2, 342 ),
 ( 1, 1, 2756, 1, 78, 2, 342 ),
 ( 1, 1, 2756, 1, 140, 2, 348 ),
 ( 1, 1, 2756, 1, 141, 2, 348 ),
 ( 1, 1, 2756, 1, 142, 2, 348 ),
 ( 1, 1, 2756, 1, 9, 2, 349 ),
 ( 1, 1, 2756, 1, 10, 2, 349 ),
 ( 1, 1, 2756, 1, 11, 2, 349 ),
 ( 1, 1, 2756, 1, 32, 2, 351 ),
 ( 1, 1, 2756, 1, 33, 2, 351 ),
 ( 1, 1, 2756, 1, 34, 2, 351 ),
 ( 1, 1, 2756, 1, 89, 2, 352 ),
 ( 1, 1, 2756, 1, 90, 2, 352 ),
 ( 1, 1, 2756, 1, 91, 2, 352 ),
 ( 1, 1, 2756, 1, 98, 1, 359 ),
 ( 1, 1, 2756, 1, 99, 1, 359 ),
 ( 1, 1, 2756, 1, 100, 1, 359 ),
 ( 1, 1, 2756, 1, 59, 2, 360 ),
 ( 1, 1, 2756, 1, 60, 2, 360 ),
 ( 1, 1, 2756, 1, 61, 2, 360 ),
 ( 1, 1, 2756, 1, 80, 2, 361 ),
 ( 1, 1, 2756, 1, 81, 2, 361 ),
 ( 1, 1, 2756, 1, 82, 2, 361 ),
 ( 1, 1, 2756, 1, 83, 2, 361 ),
 ( 1, 1, 2756, 1, 84, 2, 361 ),
 ( 1, 1, 2756, 1, 85, 2, 361 ),
 ( 1, 1, 2756, 1, 93, 3, 43 ),
 ( 1, 1, 2756, 1, 94, 3, 43 ),
 ( 1, 1, 2756, 1, 95, 3, 43 ),
 ( 1, 1, 2756, 1, 106, 4, 44 ),
 ( 1, 1, 2756, 1, 107, 4, 44 ),
 ( 1, 1, 2756, 1, 108, 4, 44 ),
 ( 1, 1, 2756, 1, 55, 4, 51 ),
 ( 1, 1, 2756, 1, 56, 4, 51 ),
 ( 1, 1, 2756, 1, 57, 4, 51 ),
 ( 1, 1, 2756, 1, 51, 4, 68 ),
 ( 1, 1, 2756, 1, 52, 4, 68 ),
 ( 1, 1, 2756, 1, 53, 4, 68 ),
 ( 1, 1, 2756, 1, 135, 4, 68 ),
 ( 1, 1, 2756, 1, 136, 4, 68 ),
 ( 1, 1, 2756, 1, 137, 4, 68 ),
 ( 1, 1, 2756, 1, 128, 4, 69 ),
 ( 1, 1, 2756, 1, 129, 4, 69 ),
 ( 1, 1, 2756, 1, 130, 4, 69 ),
 ( 1, 1, 2756, 1, 72, 3, 72 ),
 ( 1, 1, 2756, 1, 73, 3, 72 ),
 ( 1, 1, 2756, 1, 74, 3, 72 ),
 ( 1, 1, 2756, 1, 4, 4, 76 ),
 ( 1, 1, 2756, 1, 5, 4, 76 ),
 ( 1, 1, 2756, 1, 6, 4, 76 ),
 ( 1, 1, 2756, 1, 130, 3, 84 ),
 ( 1, 1, 2756, 1, 131, 3, 84 ),
 ( 1, 1, 2756, 1, 132, 3, 84 ),
 ( 1, 1, 2756, 1, 137, 3, 88 ),
 ( 1, 1, 2756, 1, 138, 3, 88 ),
 ( 1, 1, 2756, 1, 139, 3, 88 ),
 ( 1, 1, 2756, 1, 110, 3, 89 ),
 ( 1, 1, 2756, 1, 111, 3, 89 ),
 ( 1, 1, 2756, 1, 112, 3, 89 ),
 ( 1, 1, 2756, 1, 145, 4, 91 ),
 ( 1, 1, 2756, 1, 146, 4, 91 ),
 ( 1, 1, 2756, 1, 147, 4, 91 ),
 ( 1, 1, 2756, 1, 150, 4, 94 ),
 ( 1, 1, 2756, 1, 151, 4, 94 ),
 ( 1, 1, 2756, 1, 152, 4, 94 ),
 ( 1, 1, 2756, 1, 166, 3, 97 ),
 ( 1, 1, 2756, 1, 167, 3, 97 ),
 ( 1, 1, 2756, 1, 168, 3, 97 ),
 ( 1, 1, 2756, 1, 125, 3, 98 ),
 ( 1, 1, 2756, 1, 126, 3, 98 ),
 ( 1, 1, 2756, 1, 127, 3, 98 ),
 ( 1, 1, 2756, 1, 65, 3, 108 ),
 ( 1, 1, 2756, 1, 66, 3, 108 ),
 ( 1, 1, 2756, 1, 67, 3, 108 ),
 ( 1, 1, 2756, 1, 39, 4, 117 ),
 ( 1, 1, 2756, 1, 40, 4, 117 ),
 ( 1, 1, 2756, 1, 41, 4, 117 ),
 ( 1, 1, 2756, 1, 59, 4, 126 ),
 ( 1, 1, 2756, 1, 60, 4, 126 ),
 ( 1, 1, 2756, 1, 61, 4, 126 ),
 ( 1, 1, 2756, 1, 68, 4, 135 ),
 ( 1, 1, 2756, 1, 69, 4, 135 ),
 ( 1, 1, 2756, 1, 70, 4, 135 ),
 ( 1, 1, 2756, 1, 118, 3, 137 ),
 ( 1, 1, 2756, 1, 119, 3, 137 ),
 ( 1, 1, 2756, 1, 120, 3, 137 ),
 ( 1, 1, 2756, 1, 46, 4, 148 ),
 ( 1, 1, 2756, 1, 47, 4, 148 ),
 ( 1, 1, 2756, 1, 48, 4, 148 ),
 ( 1, 1, 2756, 1, 78, 4, 153 ),
 ( 1, 1, 2756, 1, 79, 4, 153 ),
 ( 1, 1, 2756, 1, 80, 4, 153 ),
 ( 1, 1, 2756, 1, 11, 4, 166 ),
 ( 1, 1, 2756, 1, 12, 4, 166 ),
 ( 1, 1, 2756, 1, 13, 4, 166 ),
 ( 1, 1, 2756, 1, 26, 4, 168 ),
 ( 1, 1, 2756, 1, 27, 4, 168 ),
 ( 1, 1, 2756, 1, 28, 4, 168 ),
 ( 1, 1, 2756, 1, 88, 4, 179 ),
 ( 1, 1, 2756, 1, 89, 4, 179 ),
 ( 1, 1, 2756, 1, 90, 4, 179 ),
 ( 1, 1, 2756, 1, 32, 4, 183 ),
 ( 1, 1, 2756, 1, 33, 4, 183 ),
 ( 1, 1, 2756, 1, 34, 4, 183 ),
 ( 1, 1, 2756, 1, 21, 4, 196 ),
 ( 1, 1, 2756, 1, 22, 4, 196 ),
 ( 1, 1, 2756, 1, 23, 4, 196 ),
 ( 1, 1, 2756, 1, 108, 4, 237 ),
 ( 1, 1, 2756, 1, 109, 4, 237 ),
 ( 1, 1, 2756, 1, 110, 4, 237 ),
 ( 1, 1, 2756, 1, 72, 4, 238 ),
 ( 1, 1, 2756, 1, 73, 4, 238 ),
 ( 1, 1, 2756, 1, 74, 4, 238 ),
 ( 1, 1, 2756, 1, 156, 4, 247 ),
 ( 1, 1, 2756, 1, 157, 4, 247 ),
 ( 1, 1, 2756, 1, 158, 4, 247 ),
 ( 1, 1, 2756, 1, 143, 3, 258 ),
 ( 1, 1, 2756, 1, 144, 3, 258 ),
 ( 1, 1, 2756, 1, 145, 3, 258 ),
 ( 1, 1, 2756, 1, 120, 4, 266 ),
 ( 1, 1, 2756, 1, 121, 4, 266 ),
 ( 1, 1, 2756, 1, 122, 4, 266 ),
 ( 1, 1, 2756, 1, 93, 4, 285 ),
 ( 1, 1, 2756, 1, 94, 4, 285 ),
 ( 1, 1, 2756, 1, 95, 4, 285 ),
 ( 1, 1, 2756, 1, 110, 3, 317 ),
 ( 1, 1, 2756, 1, 111, 3, 317 ),
 ( 1, 1, 2756, 1, 112, 3, 317 ),
 ( 1, 1, 2756, 1, 66, 4, 343 ),
 ( 1, 1, 2756, 1, 67, 4, 343 ),
 ( 1, 1, 2756, 1, 68, 4, 343 ),
 ( 1, 1, 2756, 1, 152, 3, 345 ),
 ( 1, 1, 2756, 1, 153, 3, 345 ),
 ( 1, 1, 2756, 1, 154, 3, 345 ),
 ( 1, 1, 2756, 1, 3, 4, 352 ),
 ( 1, 1, 2756, 1, 4, 4, 352 ),
 ( 1, 1, 2756, 1, 5, 4, 352 ),
 ( 1, 1, 2756, 1, 25, 4, 355 ),
 ( 1, 1, 2756, 1, 26, 4, 355 ),
 ( 1, 1, 2756, 1, 27, 4, 355 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_config ( msa_config_id, observation, program, visit, shutter_column, shutter_quadrant, shutter_row ) values
 ( 2, 1, 2756, 1, 130, 1, 12 ),
 ( 2, 1, 2756, 1, 131, 1, 12 ),
 ( 2, 1, 2756, 1, 132, 1, 12 ),
 ( 2, 1, 2756, 1, 25, 2, 19 ),
 ( 2, 1, 2756, 1, 26, 2, 19 ),
 ( 2, 1, 2756, 1, 27, 2, 19 ),
 ( 2, 1, 2756, 1, 156, 2, 34 ),
 ( 2, 1, 2756, 1, 157, 2, 34 ),
 ( 2, 1, 2756, 1, 158, 2, 34 ),
 ( 2, 1, 2756, 1, 124, 1, 39 ),
 ( 2, 1, 2756, 1, 125, 1, 39 ),
 ( 2, 1, 2756, 1, 126, 1, 39 ),
 ( 2, 1, 2756, 1, 114, 2, 40 ),
 ( 2, 1, 2756, 1, 115, 2, 40 ),
 ( 2, 1, 2756, 1, 116, 2, 40 ),
 ( 2, 1, 2756, 1, 61, 1, 49 ),
 ( 2, 1, 2756, 1, 62, 1, 49 ),
 ( 2, 1, 2756, 1, 63, 1, 49 ),
 ( 2, 1, 2756, 1, 101, 1, 50 ),
 ( 2, 1, 2756, 1, 102, 1, 50 ),
 ( 2, 1, 2756, 1, 103, 1, 50 ),
 ( 2, 1, 2756, 1, 152, 2, 50 ),
 ( 2, 1, 2756, 1, 153, 2, 50 ),
 ( 2, 1, 2756, 1, 154, 2, 50 ),
 ( 2, 1, 2756, 1, 90, 1, 59 ),
 ( 2, 1, 2756, 1, 91, 1, 59 ),
 ( 2, 1, 2756, 1, 92, 1, 59 ),
 ( 2, 1, 2756, 1, 85, 1, 62 ),
 ( 2, 1, 2756, 1, 86, 1, 62 ),
 ( 2, 1, 2756, 1, 87, 1, 62 ),
 ( 2, 1, 2756, 1, 154, 1, 69 ),
 ( 2, 1, 2756, 1, 155, 1, 69 ),
 ( 2, 1, 2756, 1, 156, 1, 69 ),
 ( 2, 1, 2756, 1, 55, 1, 80 ),
 ( 2, 1, 2756, 1, 56, 1, 80 ),
 ( 2, 1, 2756, 1, 57, 1, 80 ),
 ( 2, 1, 2756, 1, 13, 2, 81 ),
 ( 2, 1, 2756, 1, 14, 2, 81 ),
 ( 2, 1, 2756, 1, 15, 2, 81 ),
 ( 2, 1, 2756, 1, 37, 2, 81 ),
 ( 2, 1, 2756, 1, 38, 2, 81 ),
 ( 2, 1, 2756, 1, 39, 2, 81 ),
 ( 2, 1, 2756, 1, 147, 2, 84 ),
 ( 2, 1, 2756, 1, 148, 2, 84 ),
 ( 2, 1, 2756, 1, 149, 2, 84 ),
 ( 2, 1, 2756, 1, 53, 2, 85 ),
 ( 2, 1, 2756, 1, 54, 2, 85 ),
 ( 2, 1, 2756, 1, 55, 2, 85 ),
 ( 2, 1, 2756, 1, 77, 2, 104 ),
 ( 2, 1, 2756, 1, 78, 2, 104 ),
 ( 2, 1, 2756, 1, 79, 2, 104 ),
 ( 2, 1, 2756, 1, 81, 2, 104 ),
 ( 2, 1, 2756, 1, 82, 2, 104 ),
 ( 2, 1, 2756, 1, 83, 2, 104 ),
 ( 2, 1, 2756, 1, 101, 2, 122 ),
 ( 2, 1, 2756, 1, 102, 2, 122 ),
 ( 2, 1, 2756, 1, 103, 2, 122 ),
 ( 2, 1, 2756, 1, 90, 2, 124 ),
 ( 2, 1, 2756, 1, 91, 2, 124 ),
 ( 2, 1, 2756, 1, 92, 2, 124 ),
 ( 2, 1, 2756, 1, 106, 2, 131 ),
 ( 2, 1, 2756, 1, 107, 2, 131 ),
 ( 2, 1, 2756, 1, 108, 2, 131 ),
 ( 2, 1, 2756, 1, 45, 1, 136 ),
 ( 2, 1, 2756, 1, 46, 1, 136 ),
 ( 2, 1, 2756, 1, 47, 1, 136 ),
 ( 2, 1, 2756, 1, 121, 2, 137 ),
 ( 2, 1, 2756, 1, 122, 2, 137 ),
 ( 2, 1, 2756, 1, 123, 2, 137 ),
 ( 2, 1, 2756, 1, 45, 2, 187 ),
 ( 2, 1, 2756, 1, 46, 2, 187 ),
 ( 2, 1, 2756, 1, 47, 2, 187 ),
 ( 2, 1, 2756, 1, 126, 2, 190 ),
 ( 2, 1, 2756, 1, 127, 2, 190 ),
 ( 2, 1, 2756, 1, 128, 2, 190 ),
 ( 2, 1, 2756, 1, 22, 2, 200 ),
 ( 2, 1, 2756, 1, 23, 2, 200 ),
 ( 2, 1, 2756, 1, 24, 2, 200 ),
 ( 2, 1, 2756, 1, 33, 2, 237 ),
 ( 2, 1, 2756, 1, 34, 2, 237 ),
 ( 2, 1, 2756, 1, 35, 2, 237 ),
 ( 2, 1, 2756, 1, 140, 2, 238 ),
 ( 2, 1, 2756, 1, 141, 2, 238 ),
 ( 2, 1, 2756, 1, 142, 2, 238 ),
 ( 2, 1, 2756, 1, 116, 1, 248 ),
 ( 2, 1, 2756, 1, 117, 1, 248 ),
 ( 2, 1, 2756, 1, 118, 1, 248 ),
 ( 2, 1, 2756, 1, 65, 2, 249 ),
 ( 2, 1, 2756, 1, 66, 2, 249 ),
 ( 2, 1, 2756, 1, 67, 2, 249 ),
 ( 2, 1, 2756, 1, 123, 1, 252 ),
 ( 2, 1, 2756, 1, 124, 1, 252 ),
 ( 2, 1, 2756, 1, 125, 1, 252 ),
 ( 2, 1, 2756, 1, 60, 2, 254 ),
 ( 2, 1, 2756, 1, 61, 2, 254 ),
 ( 2, 1, 2756, 1, 62, 2, 254 ),
 ( 2, 1, 2756, 1, 111, 2, 256 ),
 ( 2, 1, 2756, 1, 112, 2, 256 ),
 ( 2, 1, 2756, 1, 113, 2, 256 ),
 ( 2, 1, 2756, 1, 146, 1, 257 ),
 ( 2, 1, 2756, 1, 147, 1, 257 ),
 ( 2, 1, 2756, 1, 148, 1, 257 ),
 ( 2, 1, 2756, 1, 164, 1, 264 ),
 ( 2, 1, 2756, 1, 165, 1, 264 ),
 ( 2, 1, 2756, 1, 166, 1, 264 ),
 ( 2, 1, 2756, 1, 96, 2, 268 ),
 ( 2, 1, 2756, 1, 97, 2, 268 ),
 ( 2, 1, 2756, 1, 98, 2, 268 ),
 ( 2, 1, 2756, 1, 61, 1, 269 ),
 ( 2, 1, 2756, 1, 62, 1, 269 ),
 ( 2, 1, 2756, 1, 63, 1, 269 ),
 ( 2, 1, 2756, 1, 93, 1, 271 ),
 ( 2, 1, 2756, 1, 94, 1, 271 ),
 ( 2, 1, 2756, 1, 95, 1, 271 ),
 ( 2, 1, 2756, 1, 73, 2, 271 ),
 ( 2, 1, 2756, 1, 74, 2, 271 ),
 ( 2, 1, 2756, 1, 75, 2, 271 ),
 ( 2, 1, 2756, 1, 66, 1, 276 ),
 ( 2, 1, 2756, 1, 67, 1, 276 ),
 ( 2, 1, 2756, 1, 68, 1, 276 ),
 ( 2, 1, 2756, 1, 6, 2, 279 ),
 ( 2, 1, 2756, 1, 7, 2, 279 ),
 ( 2, 1, 2756, 1, 8, 2, 279 ),
 ( 2, 1, 2756, 1, 86, 2, 282 ),
 ( 2, 1, 2756, 1, 87, 2, 282 ),
 ( 2, 1, 2756, 1, 88, 2, 282 ),
 ( 2, 1, 2756, 1, 56, 2, 290 ),
 ( 2, 1, 2756, 1, 57, 2, 290 ),
 ( 2, 1, 2756, 1, 58, 2, 290 ),
 ( 2, 1, 2756, 1, 135, 2, 290 ),
 ( 2, 1, 2756, 1, 136, 2, 290 ),
 ( 2, 1, 2756, 1, 137, 2, 290 ),
 ( 2, 1, 2756, 1, 77, 2, 291 ),
 ( 2, 1, 2756, 1, 78, 2, 291 ),
 ( 2, 1, 2756, 1, 79, 2, 291 ),
 ( 2, 1, 2756, 1, 80, 2, 291 ),
 ( 2, 1, 2756, 1, 81, 2, 291 ),
 ( 2, 1, 2756, 1, 82, 2, 291 ),
 ( 2, 1, 2756, 1, 169, 1, 318 ),
 ( 2, 1, 2756, 1, 170, 1, 318 ),
 ( 2, 1, 2756, 1, 171, 1, 318 ),
 ( 2, 1, 2756, 1, 106, 2, 327 ),
 ( 2, 1, 2756, 1, 107, 2, 327 ),
 ( 2, 1, 2756, 1, 108, 2, 327 ),
 ( 2, 1, 2756, 1, 12, 2, 355 ),
 ( 2, 1, 2756, 1, 13, 2, 355 ),
 ( 2, 1, 2756, 1, 14, 2, 355 ),
 ( 2, 1, 2756, 1, 151, 2, 359 ),
 ( 2, 1, 2756, 1, 152, 2, 359 ),
 ( 2, 1, 2756, 1, 153, 2, 359 ),
 ( 2, 1, 2756, 1, 112, 1, 361 ),
 ( 2, 1, 2756, 1, 113, 1, 361 ),
 ( 2, 1, 2756, 1, 114, 1, 361 ),
 ( 2, 1, 2756, 1, 127, 3, 14 ),
 ( 2, 1, 2756, 1, 128, 3, 14 ),
 ( 2, 1, 2756, 1, 129, 3, 14 ),
 ( 2, 1, 2756, 1, 122, 3, 28 ),
 ( 2, 1, 2756, 1, 123, 3, 28 ),
 ( 2, 1, 2756, 1, 124, 3, 28 ),
 ( 2, 1, 2756, 1, 66, 3, 32 ),
 ( 2, 1, 2756, 1, 67, 3, 32 ),
 ( 2, 1, 2756, 1, 68, 3, 32 ),
 ( 2, 1, 2756, 1, 103, 3, 32 ),
 ( 2, 1, 2756, 1, 104, 3, 32 ),
 ( 2, 1, 2756, 1, 105, 3, 32 ),
 ( 2, 1, 2756, 1, 56, 4, 56 ),
 ( 2, 1, 2756, 1, 57, 4, 56 ),
 ( 2, 1, 2756, 1, 58, 4, 56 ),
 ( 2, 1, 2756, 1, 33, 4, 76 ),
 ( 2, 1, 2756, 1, 34, 4, 76 ),
 ( 2, 1, 2756, 1, 35, 4, 76 ),
 ( 2, 1, 2756, 1, 75, 4, 83 ),
 ( 2, 1, 2756, 1, 76, 4, 83 ),
 ( 2, 1, 2756, 1, 77, 4, 83 ),
 ( 2, 1, 2756, 1, 109, 4, 83 ),
 ( 2, 1, 2756, 1, 110, 4, 83 ),
 ( 2, 1, 2756, 1, 111, 4, 83 ),
 ( 2, 1, 2756, 1, 8, 4, 96 ),
 ( 2, 1, 2756, 1, 9, 4, 96 ),
 ( 2, 1, 2756, 1, 10, 4, 96 ),
 ( 2, 1, 2756, 1, 74, 3, 98 ),
 ( 2, 1, 2756, 1, 75, 3, 98 ),
 ( 2, 1, 2756, 1, 76, 3, 98 ),
 ( 2, 1, 2756, 1, 23, 4, 98 ),
 ( 2, 1, 2756, 1, 24, 4, 98 ),
 ( 2, 1, 2756, 1, 25, 4, 98 ),
 ( 2, 1, 2756, 1, 94, 3, 102 ),
 ( 2, 1, 2756, 1, 95, 3, 102 ),
 ( 2, 1, 2756, 1, 96, 3, 102 ),
 ( 2, 1, 2756, 1, 46, 4, 103 ),
 ( 2, 1, 2756, 1, 47, 4, 103 ),
 ( 2, 1, 2756, 1, 48, 4, 103 ),
 ( 2, 1, 2756, 1, 85, 4, 109 ),
 ( 2, 1, 2756, 1, 86, 4, 109 ),
 ( 2, 1, 2756, 1, 87, 4, 109 ),
 ( 2, 1, 2756, 1, 134, 4, 110 ),
 ( 2, 1, 2756, 1, 135, 4, 110 ),
 ( 2, 1, 2756, 1, 136, 4, 110 ),
 ( 2, 1, 2756, 1, 29, 4, 113 ),
 ( 2, 1, 2756, 1, 30, 4, 113 ),
 ( 2, 1, 2756, 1, 31, 4, 113 ),
 ( 2, 1, 2756, 1, 18, 4, 126 ),
 ( 2, 1, 2756, 1, 19, 4, 126 ),
 ( 2, 1, 2756, 1, 20, 4, 126 ),
 ( 2, 1, 2756, 1, 98, 3, 132 ),
 ( 2, 1, 2756, 1, 99, 3, 132 ),
 ( 2, 1, 2756, 1, 100, 3, 132 ),
 ( 2, 1, 2756, 1, 95, 4, 142 ),
 ( 2, 1, 2756, 1, 96, 4, 142 ),
 ( 2, 1, 2756, 1, 97, 4, 142 ),
 ( 2, 1, 2756, 1, 86, 3, 165 ),
 ( 2, 1, 2756, 1, 87, 3, 165 ),
 ( 2, 1, 2756, 1, 88, 3, 165 ),
 ( 2, 1, 2756, 1, 69, 4, 168 ),
 ( 2, 1, 2756, 1, 70, 4, 168 ),
 ( 2, 1, 2756, 1, 71, 4, 168 ),
 ( 2, 1, 2756, 1, 37, 4, 170 ),
 ( 2, 1, 2756, 1, 38, 4, 170 ),
 ( 2, 1, 2756, 1, 39, 4, 170 ),
 ( 2, 1, 2756, 1, 154, 4, 176 ),
 ( 2, 1, 2756, 1, 155, 4, 176 ),
 ( 2, 1, 2756, 1, 156, 4, 176 ),
 ( 2, 1, 2756, 1, 140, 3, 188 ),
 ( 2, 1, 2756, 1, 141, 3, 188 ),
 ( 2, 1, 2756, 1, 142, 3, 188 ),
 ( 2, 1, 2756, 1, 117, 4, 196 ),
 ( 2, 1, 2756, 1, 118, 4, 196 ),
 ( 2, 1, 2756, 1, 119, 4, 196 ),
 ( 2, 1, 2756, 1, 149, 3, 197 ),
 ( 2, 1, 2756, 1, 150, 3, 197 ),
 ( 2, 1, 2756, 1, 151, 3, 197 ),
 ( 2, 1, 2756, 1, 60, 4, 269 ),
 ( 2, 1, 2756, 1, 61, 4, 269 ),
 ( 2, 1, 2756, 1, 62, 4, 269 ),
 ( 2, 1, 2756, 1, 46, 4, 290 ),
 ( 2, 1, 2756, 1, 47, 4, 290 ),
 ( 2, 1, 2756, 1, 48, 4, 290 ),
 ( 2, 1, 2756, 1, 123, 3, 292 ),
 ( 2, 1, 2756, 1, 124, 3, 292 ),
 ( 2, 1, 2756, 1, 125, 3, 292 ),
 ( 2, 1, 2756, 1, 52, 4, 302 ),
 ( 2, 1, 2756, 1, 53, 4, 302 ),
 ( 2, 1, 2756, 1, 54, 4, 302 ),
 ( 2, 1, 2756, 1, 3, 4, 316 ),
 ( 2, 1, 2756, 1, 4, 4, 316 ),
 ( 2, 1, 2756, 1, 5, 4, 316 )
go
update #AOK set aok = aok+@@error
go

insert into nirspec_msa_config ( msa_config_id, observation, program, visit, shutter_column, shutter_quadrant, shutter_row ) values
 ( 3, 1, 2756, 1, 56, 1, 117 ),
 ( 3, 1, 2756, 1, 57, 1, 117 ),
 ( 3, 1, 2756, 1, 58, 1, 117 ),
 ( 3, 1, 2756, 1, 59, 1, 117 ),
 ( 3, 1, 2756, 1, 60, 1, 117 ),
 ( 3, 1, 2756, 1, 61, 1, 117 ),
 ( 3, 1, 2756, 1, 62, 1, 117 ),
 ( 3, 1, 2756, 1, 56, 1, 118 ),
 ( 3, 1, 2756, 1, 57, 1, 118 ),
 ( 3, 1, 2756, 1, 58, 1, 118 ),
 ( 3, 1, 2756, 1, 59, 1, 118 ),
 ( 3, 1, 2756, 1, 60, 1, 118 ),
 ( 3, 1, 2756, 1, 61, 1, 118 ),
 ( 3, 1, 2756, 1, 62, 1, 118 ),
 ( 3, 1, 2756, 1, 56, 1, 119 ),
 ( 3, 1, 2756, 1, 57, 1, 119 ),
 ( 3, 1, 2756, 1, 58, 1, 119 ),
 ( 3, 1, 2756, 1, 59, 1, 119 ),
 ( 3, 1, 2756, 1, 60, 1, 119 ),
 ( 3, 1, 2756, 1, 61, 1, 119 ),
 ( 3, 1, 2756, 1, 62, 1, 119 ),
 ( 3, 1, 2756, 1, 56, 1, 120 ),
 ( 3, 1, 2756, 1, 57, 1, 120 ),
 ( 3, 1, 2756, 1, 58, 1, 120 ),
 ( 3, 1, 2756, 1, 59, 1, 120 ),
 ( 3, 1, 2756, 1, 60, 1, 120 ),
 ( 3, 1, 2756, 1, 61, 1, 120 ),
 ( 3, 1, 2756, 1, 62, 1, 120 ),
 ( 3, 1, 2756, 1, 56, 1, 121 ),
 ( 3, 1, 2756, 1, 57, 1, 121 ),
 ( 3, 1, 2756, 1, 58, 1, 121 ),
 ( 3, 1, 2756, 1, 59, 1, 121 ),
 ( 3, 1, 2756, 1, 60, 1, 121 ),
 ( 3, 1, 2756, 1, 61, 1, 121 ),
 ( 3, 1, 2756, 1, 62, 1, 121 ),
 ( 3, 1, 2756, 1, 56, 1, 122 ),
 ( 3, 1, 2756, 1, 57, 1, 122 ),
 ( 3, 1, 2756, 1, 58, 1, 122 ),
 ( 3, 1, 2756, 1, 59, 1, 122 ),
 ( 3, 1, 2756, 1, 60, 1, 122 ),
 ( 3, 1, 2756, 1, 61, 1, 122 ),
 ( 3, 1, 2756, 1, 62, 1, 122 ),
 ( 3, 1, 2756, 1, 56, 1, 123 ),
 ( 3, 1, 2756, 1, 57, 1, 123 ),
 ( 3, 1, 2756, 1, 58, 1, 123 ),
 ( 3, 1, 2756, 1, 59, 1, 123 ),
 ( 3, 1, 2756, 1, 60, 1, 123 ),
 ( 3, 1, 2756, 1, 61, 1, 123 ),
 ( 3, 1, 2756, 1, 62, 1, 123 ),
 ( 3, 1, 2756, 1, 56, 1, 124 ),
 ( 3, 1, 2756, 1, 57, 1, 124 ),
 ( 3, 1, 2756, 1, 58, 1, 124 ),
 ( 3, 1, 2756, 1, 59, 1, 124 ),
 ( 3, 1, 2756, 1, 60, 1, 124 ),
 ( 3, 1, 2756, 1, 61, 1, 124 ),
 ( 3, 1, 2756, 1, 62, 1, 124 ),
 ( 3, 1, 2756, 1, 56, 1, 125 ),
 ( 3, 1, 2756, 1, 57, 1, 125 ),
 ( 3, 1, 2756, 1, 58, 1, 125 ),
 ( 3, 1, 2756, 1, 59, 1, 125 ),
 ( 3, 1, 2756, 1, 60, 1, 125 ),
 ( 3, 1, 2756, 1, 61, 1, 125 ),
 ( 3, 1, 2756, 1, 62, 1, 125 ),
 ( 3, 1, 2756, 1, 56, 1, 126 ),
 ( 3, 1, 2756, 1, 57, 1, 126 ),
 ( 3, 1, 2756, 1, 58, 1, 126 ),
 ( 3, 1, 2756, 1, 59, 1, 126 ),
 ( 3, 1, 2756, 1, 60, 1, 126 ),
 ( 3, 1, 2756, 1, 61, 1, 126 ),
 ( 3, 1, 2756, 1, 62, 1, 126 ),
 ( 3, 1, 2756, 1, 56, 1, 127 ),
 ( 3, 1, 2756, 1, 57, 1, 127 ),
 ( 3, 1, 2756, 1, 58, 1, 127 ),
 ( 3, 1, 2756, 1, 59, 1, 127 ),
 ( 3, 1, 2756, 1, 60, 1, 127 ),
 ( 3, 1, 2756, 1, 61, 1, 127 ),
 ( 3, 1, 2756, 1, 62, 1, 127 ),
 ( 3, 1, 2756, 1, 56, 1, 128 ),
 ( 3, 1, 2756, 1, 57, 1, 128 ),
 ( 3, 1, 2756, 1, 58, 1, 128 ),
 ( 3, 1, 2756, 1, 59, 1, 128 ),
 ( 3, 1, 2756, 1, 60, 1, 128 ),
 ( 3, 1, 2756, 1, 61, 1, 128 ),
 ( 3, 1, 2756, 1, 62, 1, 128 ),
 ( 3, 1, 2756, 1, 56, 1, 129 ),
 ( 3, 1, 2756, 1, 57, 1, 129 ),
 ( 3, 1, 2756, 1, 58, 1, 129 ),
 ( 3, 1, 2756, 1, 59, 1, 129 ),
 ( 3, 1, 2756, 1, 60, 1, 129 ),
 ( 3, 1, 2756, 1, 61, 1, 129 ),
 ( 3, 1, 2756, 1, 62, 1, 129 ),
 ( 3, 1, 2756, 1, 124, 2, 154 ),
 ( 3, 1, 2756, 1, 125, 2, 154 ),
 ( 3, 1, 2756, 1, 126, 2, 154 ),
 ( 3, 1, 2756, 1, 127, 2, 154 ),
 ( 3, 1, 2756, 1, 128, 2, 154 ),
 ( 3, 1, 2756, 1, 129, 2, 154 ),
 ( 3, 1, 2756, 1, 130, 2, 154 ),
 ( 3, 1, 2756, 1, 124, 2, 155 ),
 ( 3, 1, 2756, 1, 125, 2, 155 ),
 ( 3, 1, 2756, 1, 126, 2, 155 ),
 ( 3, 1, 2756, 1, 127, 2, 155 ),
 ( 3, 1, 2756, 1, 128, 2, 155 ),
 ( 3, 1, 2756, 1, 129, 2, 155 ),
 ( 3, 1, 2756, 1, 130, 2, 155 ),
 ( 3, 1, 2756, 1, 124, 2, 156 ),
 ( 3, 1, 2756, 1, 125, 2, 156 ),
 ( 3, 1, 2756, 1, 126, 2, 156 ),
 ( 3, 1, 2756, 1, 127, 2, 156 ),
 ( 3, 1, 2756, 1, 128, 2, 156 ),
 ( 3, 1, 2756, 1, 129, 2, 156 ),
 ( 3, 1, 2756, 1, 130, 2, 156 ),
 ( 3, 1, 2756, 1, 124, 2, 157 ),
 ( 3, 1, 2756, 1, 125, 2, 157 ),
 ( 3, 1, 2756, 1, 126, 2, 157 ),
 ( 3, 1, 2756, 1, 127, 2, 157 ),
 ( 3, 1, 2756, 1, 128, 2, 157 ),
 ( 3, 1, 2756, 1, 129, 2, 157 ),
 ( 3, 1, 2756, 1, 130, 2, 157 ),
 ( 3, 1, 2756, 1, 124, 2, 158 ),
 ( 3, 1, 2756, 1, 125, 2, 158 ),
 ( 3, 1, 2756, 1, 126, 2, 158 ),
 ( 3, 1, 2756, 1, 127, 2, 158 ),
 ( 3, 1, 2756, 1, 128, 2, 158 ),
 ( 3, 1, 2756, 1, 129, 2, 158 ),
 ( 3, 1, 2756, 1, 130, 2, 158 ),
 ( 3, 1, 2756, 1, 124, 2, 159 ),
 ( 3, 1, 2756, 1, 125, 2, 159 ),
 ( 3, 1, 2756, 1, 126, 2, 159 ),
 ( 3, 1, 2756, 1, 127, 2, 159 ),
 ( 3, 1, 2756, 1, 128, 2, 159 ),
 ( 3, 1, 2756, 1, 129, 2, 159 ),
 ( 3, 1, 2756, 1, 130, 2, 159 ),
 ( 3, 1, 2756, 1, 124, 2, 160 ),
 ( 3, 1, 2756, 1, 125, 2, 160 ),
 ( 3, 1, 2756, 1, 126, 2, 160 ),
 ( 3, 1, 2756, 1, 127, 2, 160 ),
 ( 3, 1, 2756, 1, 128, 2, 160 ),
 ( 3, 1, 2756, 1, 129, 2, 160 ),
 ( 3, 1, 2756, 1, 130, 2, 160 ),
 ( 3, 1, 2756, 1, 124, 2, 161 ),
 ( 3, 1, 2756, 1, 125, 2, 161 ),
 ( 3, 1, 2756, 1, 126, 2, 161 ),
 ( 3, 1, 2756, 1, 127, 2, 161 ),
 ( 3, 1, 2756, 1, 128, 2, 161 ),
 ( 3, 1, 2756, 1, 129, 2, 161 ),
 ( 3, 1, 2756, 1, 130, 2, 161 ),
 ( 3, 1, 2756, 1, 124, 2, 162 ),
 ( 3, 1, 2756, 1, 125, 2, 162 ),
 ( 3, 1, 2756, 1, 126, 2, 162 ),
 ( 3, 1, 2756, 1, 127, 2, 162 ),
 ( 3, 1, 2756, 1, 128, 2, 162 ),
 ( 3, 1, 2756, 1, 129, 2, 162 ),
 ( 3, 1, 2756, 1, 130, 2, 162 ),
 ( 3, 1, 2756, 1, 124, 2, 163 ),
 ( 3, 1, 2756, 1, 125, 2, 163 ),
 ( 3, 1, 2756, 1, 126, 2, 163 ),
 ( 3, 1, 2756, 1, 127, 2, 163 ),
 ( 3, 1, 2756, 1, 128, 2, 163 ),
 ( 3, 1, 2756, 1, 129, 2, 163 ),
 ( 3, 1, 2756, 1, 130, 2, 163 ),
 ( 3, 1, 2756, 1, 124, 2, 164 ),
 ( 3, 1, 2756, 1, 125, 2, 164 ),
 ( 3, 1, 2756, 1, 126, 2, 164 ),
 ( 3, 1, 2756, 1, 127, 2, 164 ),
 ( 3, 1, 2756, 1, 128, 2, 164 ),
 ( 3, 1, 2756, 1, 129, 2, 164 ),
 ( 3, 1, 2756, 1, 130, 2, 164 ),
 ( 3, 1, 2756, 1, 124, 2, 165 ),
 ( 3, 1, 2756, 1, 125, 2, 165 ),
 ( 3, 1, 2756, 1, 126, 2, 165 ),
 ( 3, 1, 2756, 1, 127, 2, 165 ),
 ( 3, 1, 2756, 1, 128, 2, 165 ),
 ( 3, 1, 2756, 1, 129, 2, 165 ),
 ( 3, 1, 2756, 1, 130, 2, 165 ),
 ( 3, 1, 2756, 1, 124, 2, 166 ),
 ( 3, 1, 2756, 1, 125, 2, 166 ),
 ( 3, 1, 2756, 1, 126, 2, 166 ),
 ( 3, 1, 2756, 1, 127, 2, 166 ),
 ( 3, 1, 2756, 1, 128, 2, 166 ),
 ( 3, 1, 2756, 1, 129, 2, 166 ),
 ( 3, 1, 2756, 1, 130, 2, 166 ),
 ( 3, 1, 2756, 1, 146, 1, 220 ),
 ( 3, 1, 2756, 1, 147, 1, 220 ),
 ( 3, 1, 2756, 1, 148, 1, 220 ),
 ( 3, 1, 2756, 1, 149, 1, 220 ),
 ( 3, 1, 2756, 1, 150, 1, 220 ),
 ( 3, 1, 2756, 1, 151, 1, 220 ),
 ( 3, 1, 2756, 1, 152, 1, 220 ),
 ( 3, 1, 2756, 1, 146, 1, 221 ),
 ( 3, 1, 2756, 1, 147, 1, 221 ),
 ( 3, 1, 2756, 1, 148, 1, 221 ),
 ( 3, 1, 2756, 1, 149, 1, 221 ),
 ( 3, 1, 2756, 1, 150, 1, 221 ),
 ( 3, 1, 2756, 1, 151, 1, 221 ),
 ( 3, 1, 2756, 1, 152, 1, 221 ),
 ( 3, 1, 2756, 1, 146, 1, 222 ),
 ( 3, 1, 2756, 1, 147, 1, 222 ),
 ( 3, 1, 2756, 1, 148, 1, 222 ),
 ( 3, 1, 2756, 1, 149, 1, 222 ),
 ( 3, 1, 2756, 1, 150, 1, 222 ),
 ( 3, 1, 2756, 1, 151, 1, 222 ),
 ( 3, 1, 2756, 1, 152, 1, 222 ),
 ( 3, 1, 2756, 1, 146, 1, 223 ),
 ( 3, 1, 2756, 1, 147, 1, 223 ),
 ( 3, 1, 2756, 1, 148, 1, 223 ),
 ( 3, 1, 2756, 1, 149, 1, 223 ),
 ( 3, 1, 2756, 1, 150, 1, 223 ),
 ( 3, 1, 2756, 1, 151, 1, 223 ),
 ( 3, 1, 2756, 1, 152, 1, 223 ),
 ( 3, 1, 2756, 1, 146, 1, 224 ),
 ( 3, 1, 2756, 1, 147, 1, 224 ),
 ( 3, 1, 2756, 1, 148, 1, 224 ),
 ( 3, 1, 2756, 1, 149, 1, 224 ),
 ( 3, 1, 2756, 1, 150, 1, 224 ),
 ( 3, 1, 2756, 1, 151, 1, 224 ),
 ( 3, 1, 2756, 1, 152, 1, 224 ),
 ( 3, 1, 2756, 1, 146, 1, 225 ),
 ( 3, 1, 2756, 1, 147, 1, 225 ),
 ( 3, 1, 2756, 1, 148, 1, 225 ),
 ( 3, 1, 2756, 1, 149, 1, 225 ),
 ( 3, 1, 2756, 1, 150, 1, 225 ),
 ( 3, 1, 2756, 1, 151, 1, 225 ),
 ( 3, 1, 2756, 1, 152, 1, 225 ),
 ( 3, 1, 2756, 1, 146, 1, 226 ),
 ( 3, 1, 2756, 1, 147, 1, 226 ),
 ( 3, 1, 2756, 1, 148, 1, 226 ),
 ( 3, 1, 2756, 1, 149, 1, 226 ),
 ( 3, 1, 2756, 1, 150, 1, 226 ),
 ( 3, 1, 2756, 1, 151, 1, 226 ),
 ( 3, 1, 2756, 1, 152, 1, 226 ),
 ( 3, 1, 2756, 1, 146, 1, 227 ),
 ( 3, 1, 2756, 1, 147, 1, 227 ),
 ( 3, 1, 2756, 1, 148, 1, 227 ),
 ( 3, 1, 2756, 1, 149, 1, 227 ),
 ( 3, 1, 2756, 1, 150, 1, 227 ),
 ( 3, 1, 2756, 1, 151, 1, 227 ),
 ( 3, 1, 2756, 1, 152, 1, 227 ),
 ( 3, 1, 2756, 1, 146, 1, 228 ),
 ( 3, 1, 2756, 1, 147, 1, 228 ),
 ( 3, 1, 2756, 1, 148, 1, 228 ),
 ( 3, 1, 2756, 1, 149, 1, 228 ),
 ( 3, 1, 2756, 1, 150, 1, 228 ),
 ( 3, 1, 2756, 1, 151, 1, 228 ),
 ( 3, 1, 2756, 1, 152, 1, 228 ),
 ( 3, 1, 2756, 1, 146, 1, 229 ),
 ( 3, 1, 2756, 1, 147, 1, 229 ),
 ( 3, 1, 2756, 1, 148, 1, 229 ),
 ( 3, 1, 2756, 1, 149, 1, 229 ),
 ( 3, 1, 2756, 1, 150, 1, 229 ),
 ( 3, 1, 2756, 1, 151, 1, 229 ),
 ( 3, 1, 2756, 1, 152, 1, 229 ),
 ( 3, 1, 2756, 1, 146, 1, 230 ),
 ( 3, 1, 2756, 1, 147, 1, 230 ),
 ( 3, 1, 2756, 1, 148, 1, 230 ),
 ( 3, 1, 2756, 1, 149, 1, 230 ),
 ( 3, 1, 2756, 1, 150, 1, 230 ),
 ( 3, 1, 2756, 1, 151, 1, 230 ),
 ( 3, 1, 2756, 1, 152, 1, 230 ),
 ( 3, 1, 2756, 1, 146, 1, 231 ),
 ( 3, 1, 2756, 1, 147, 1, 231 ),
 ( 3, 1, 2756, 1, 148, 1, 231 ),
 ( 3, 1, 2756, 1, 149, 1, 231 ),
 ( 3, 1, 2756, 1, 150, 1, 231 ),
 ( 3, 1, 2756, 1, 151, 1, 231 ),
 ( 3, 1, 2756, 1, 152, 1, 231 ),
 ( 3, 1, 2756, 1, 146, 1, 232 ),
 ( 3, 1, 2756, 1, 147, 1, 232 ),
 ( 3, 1, 2756, 1, 148, 1, 232 ),
 ( 3, 1, 2756, 1, 149, 1, 232 ),
 ( 3, 1, 2756, 1, 150, 1, 232 ),
 ( 3, 1, 2756, 1, 151, 1, 232 ),
 ( 3, 1, 2756, 1, 152, 1, 232 ),
 ( 3, 1, 2756, 1, 21, 2, 281 ),
 ( 3, 1, 2756, 1, 22, 2, 281 ),
 ( 3, 1, 2756, 1, 23, 2, 281 ),
 ( 3, 1, 2756, 1, 24, 2, 281 ),
 ( 3, 1, 2756, 1, 25, 2, 281 ),
 ( 3, 1, 2756, 1, 26, 2, 281 ),
 ( 3, 1, 2756, 1, 27, 2, 281 ),
 ( 3, 1, 2756, 1, 21, 2, 282 ),
 ( 3, 1, 2756, 1, 22, 2, 282 ),
 ( 3, 1, 2756, 1, 23, 2, 282 ),
 ( 3, 1, 2756, 1, 24, 2, 282 ),
 ( 3, 1, 2756, 1, 25, 2, 282 ),
 ( 3, 1, 2756, 1, 26, 2, 282 ),
 ( 3, 1, 2756, 1, 27, 2, 282 ),
 ( 3, 1, 2756, 1, 21, 2, 283 ),
 ( 3, 1, 2756, 1, 22, 2, 283 ),
 ( 3, 1, 2756, 1, 23, 2, 283 ),
 ( 3, 1, 2756, 1, 24, 2, 283 ),
 ( 3, 1, 2756, 1, 25, 2, 283 ),
 ( 3, 1, 2756, 1, 26, 2, 283 ),
 ( 3, 1, 2756, 1, 27, 2, 283 ),
 ( 3, 1, 2756, 1, 21, 2, 284 ),
 ( 3, 1, 2756, 1, 22, 2, 284 ),
 ( 3, 1, 2756, 1, 23, 2, 284 ),
 ( 3, 1, 2756, 1, 24, 2, 284 ),
 ( 3, 1, 2756, 1, 25, 2, 284 ),
 ( 3, 1, 2756, 1, 26, 2, 284 ),
 ( 3, 1, 2756, 1, 27, 2, 284 ),
 ( 3, 1, 2756, 1, 21, 2, 285 ),
 ( 3, 1, 2756, 1, 22, 2, 285 ),
 ( 3, 1, 2756, 1, 23, 2, 285 ),
 ( 3, 1, 2756, 1, 24, 2, 285 ),
 ( 3, 1, 2756, 1, 25, 2, 285 ),
 ( 3, 1, 2756, 1, 26, 2, 285 ),
 ( 3, 1, 2756, 1, 27, 2, 285 ),
 ( 3, 1, 2756, 1, 21, 2, 286 ),
 ( 3, 1, 2756, 1, 22, 2, 286 ),
 ( 3, 1, 2756, 1, 23, 2, 286 ),
 ( 3, 1, 2756, 1, 24, 2, 286 ),
 ( 3, 1, 2756, 1, 25, 2, 286 ),
 ( 3, 1, 2756, 1, 26, 2, 286 ),
 ( 3, 1, 2756, 1, 27, 2, 286 ),
 ( 3, 1, 2756, 1, 21, 2, 287 ),
 ( 3, 1, 2756, 1, 22, 2, 287 ),
 ( 3, 1, 2756, 1, 23, 2, 287 ),
 ( 3, 1, 2756, 1, 24, 2, 287 ),
 ( 3, 1, 2756, 1, 25, 2, 287 ),
 ( 3, 1, 2756, 1, 26, 2, 287 ),
 ( 3, 1, 2756, 1, 27, 2, 287 ),
 ( 3, 1, 2756, 1, 21, 2, 288 ),
 ( 3, 1, 2756, 1, 22, 2, 288 ),
 ( 3, 1, 2756, 1, 23, 2, 288 ),
 ( 3, 1, 2756, 1, 24, 2, 288 ),
 ( 3, 1, 2756, 1, 25, 2, 288 ),
 ( 3, 1, 2756, 1, 26, 2, 288 ),
 ( 3, 1, 2756, 1, 27, 2, 288 ),
 ( 3, 1, 2756, 1, 21, 2, 289 ),
 ( 3, 1, 2756, 1, 22, 2, 289 ),
 ( 3, 1, 2756, 1, 23, 2, 289 ),
 ( 3, 1, 2756, 1, 24, 2, 289 ),
 ( 3, 1, 2756, 1, 25, 2, 289 ),
 ( 3, 1, 2756, 1, 26, 2, 289 ),
 ( 3, 1, 2756, 1, 27, 2, 289 ),
 ( 3, 1, 2756, 1, 21, 2, 290 ),
 ( 3, 1, 2756, 1, 22, 2, 290 ),
 ( 3, 1, 2756, 1, 23, 2, 290 ),
 ( 3, 1, 2756, 1, 24, 2, 290 ),
 ( 3, 1, 2756, 1, 25, 2, 290 ),
 ( 3, 1, 2756, 1, 26, 2, 290 ),
 ( 3, 1, 2756, 1, 27, 2, 290 ),
 ( 3, 1, 2756, 1, 21, 2, 291 ),
 ( 3, 1, 2756, 1, 22, 2, 291 ),
 ( 3, 1, 2756, 1, 23, 2, 291 ),
 ( 3, 1, 2756, 1, 24, 2, 291 ),
 ( 3, 1, 2756, 1, 25, 2, 291 ),
 ( 3, 1, 2756, 1, 26, 2, 291 ),
 ( 3, 1, 2756, 1, 27, 2, 291 ),
 ( 3, 1, 2756, 1, 21, 2, 292 ),
 ( 3, 1, 2756, 1, 22, 2, 292 ),
 ( 3, 1, 2756, 1, 23, 2, 292 ),
 ( 3, 1, 2756, 1, 24, 2, 292 ),
 ( 3, 1, 2756, 1, 25, 2, 292 ),
 ( 3, 1, 2756, 1, 26, 2, 292 ),
 ( 3, 1, 2756, 1, 27, 2, 292 ),
 ( 3, 1, 2756, 1, 21, 2, 293 ),
 ( 3, 1, 2756, 1, 22, 2, 293 ),
 ( 3, 1, 2756, 1, 23, 2, 293 ),
 ( 3, 1, 2756, 1, 24, 2, 293 ),
 ( 3, 1, 2756, 1, 25, 2, 293 ),
 ( 3, 1, 2756, 1, 26, 2, 293 ),
 ( 3, 1, 2756, 1, 27, 2, 293 ),
 ( 3, 1, 2756, 1, 156, 3, 62 ),
 ( 3, 1, 2756, 1, 157, 3, 62 ),
 ( 3, 1, 2756, 1, 158, 3, 62 ),
 ( 3, 1, 2756, 1, 159, 3, 62 ),
 ( 3, 1, 2756, 1, 160, 3, 62 ),
 ( 3, 1, 2756, 1, 161, 3, 62 ),
 ( 3, 1, 2756, 1, 162, 3, 62 ),
 ( 3, 1, 2756, 1, 156, 3, 63 ),
 ( 3, 1, 2756, 1, 157, 3, 63 ),
 ( 3, 1, 2756, 1, 158, 3, 63 ),
 ( 3, 1, 2756, 1, 159, 3, 63 ),
 ( 3, 1, 2756, 1, 160, 3, 63 ),
 ( 3, 1, 2756, 1, 161, 3, 63 ),
 ( 3, 1, 2756, 1, 162, 3, 63 ),
 ( 3, 1, 2756, 1, 156, 3, 64 ),
 ( 3, 1, 2756, 1, 157, 3, 64 ),
 ( 3, 1, 2756, 1, 158, 3, 64 ),
 ( 3, 1, 2756, 1, 159, 3, 64 ),
 ( 3, 1, 2756, 1, 160, 3, 64 ),
 ( 3, 1, 2756, 1, 161, 3, 64 ),
 ( 3, 1, 2756, 1, 162, 3, 64 ),
 ( 3, 1, 2756, 1, 156, 3, 65 ),
 ( 3, 1, 2756, 1, 157, 3, 65 ),
 ( 3, 1, 2756, 1, 158, 3, 65 ),
 ( 3, 1, 2756, 1, 159, 3, 65 ),
 ( 3, 1, 2756, 1, 160, 3, 65 ),
 ( 3, 1, 2756, 1, 161, 3, 65 ),
 ( 3, 1, 2756, 1, 162, 3, 65 ),
 ( 3, 1, 2756, 1, 156, 3, 66 ),
 ( 3, 1, 2756, 1, 157, 3, 66 ),
 ( 3, 1, 2756, 1, 158, 3, 66 ),
 ( 3, 1, 2756, 1, 159, 3, 66 ),
 ( 3, 1, 2756, 1, 160, 3, 66 ),
 ( 3, 1, 2756, 1, 161, 3, 66 ),
 ( 3, 1, 2756, 1, 162, 3, 66 ),
 ( 3, 1, 2756, 1, 156, 3, 67 ),
 ( 3, 1, 2756, 1, 157, 3, 67 ),
 ( 3, 1, 2756, 1, 158, 3, 67 ),
 ( 3, 1, 2756, 1, 159, 3, 67 ),
 ( 3, 1, 2756, 1, 160, 3, 67 ),
 ( 3, 1, 2756, 1, 161, 3, 67 ),
 ( 3, 1, 2756, 1, 162, 3, 67 ),
 ( 3, 1, 2756, 1, 156, 3, 68 ),
 ( 3, 1, 2756, 1, 157, 3, 68 ),
 ( 3, 1, 2756, 1, 158, 3, 68 ),
 ( 3, 1, 2756, 1, 159, 3, 68 ),
 ( 3, 1, 2756, 1, 160, 3, 68 ),
 ( 3, 1, 2756, 1, 161, 3, 68 ),
 ( 3, 1, 2756, 1, 162, 3, 68 ),
 ( 3, 1, 2756, 1, 156, 3, 69 ),
 ( 3, 1, 2756, 1, 157, 3, 69 ),
 ( 3, 1, 2756, 1, 158, 3, 69 ),
 ( 3, 1, 2756, 1, 159, 3, 69 ),
 ( 3, 1, 2756, 1, 160, 3, 69 ),
 ( 3, 1, 2756, 1, 161, 3, 69 ),
 ( 3, 1, 2756, 1, 162, 3, 69 ),
 ( 3, 1, 2756, 1, 156, 3, 70 ),
 ( 3, 1, 2756, 1, 157, 3, 70 ),
 ( 3, 1, 2756, 1, 158, 3, 70 ),
 ( 3, 1, 2756, 1, 159, 3, 70 ),
 ( 3, 1, 2756, 1, 160, 3, 70 ),
 ( 3, 1, 2756, 1, 161, 3, 70 ),
 ( 3, 1, 2756, 1, 162, 3, 70 ),
 ( 3, 1, 2756, 1, 156, 3, 71 ),
 ( 3, 1, 2756, 1, 157, 3, 71 ),
 ( 3, 1, 2756, 1, 158, 3, 71 ),
 ( 3, 1, 2756, 1, 159, 3, 71 ),
 ( 3, 1, 2756, 1, 160, 3, 71 ),
 ( 3, 1, 2756, 1, 161, 3, 71 ),
 ( 3, 1, 2756, 1, 162, 3, 71 ),
 ( 3, 1, 2756, 1, 156, 3, 72 ),
 ( 3, 1, 2756, 1, 157, 3, 72 ),
 ( 3, 1, 2756, 1, 158, 3, 72 ),
 ( 3, 1, 2756, 1, 159, 3, 72 ),
 ( 3, 1, 2756, 1, 160, 3, 72 ),
 ( 3, 1, 2756, 1, 161, 3, 72 ),
 ( 3, 1, 2756, 1, 162, 3, 72 ),
 ( 3, 1, 2756, 1, 156, 3, 73 ),
 ( 3, 1, 2756, 1, 157, 3, 73 ),
 ( 3, 1, 2756, 1, 158, 3, 73 ),
 ( 3, 1, 2756, 1, 159, 3, 73 ),
 ( 3, 1, 2756, 1, 160, 3, 73 ),
 ( 3, 1, 2756, 1, 161, 3, 73 ),
 ( 3, 1, 2756, 1, 162, 3, 73 ),
 ( 3, 1, 2756, 1, 156, 3, 74 ),
 ( 3, 1, 2756, 1, 157, 3, 74 ),
 ( 3, 1, 2756, 1, 158, 3, 74 ),
 ( 3, 1, 2756, 1, 159, 3, 74 ),
 ( 3, 1, 2756, 1, 160, 3, 74 ),
 ( 3, 1, 2756, 1, 161, 3, 74 ),
 ( 3, 1, 2756, 1, 162, 3, 74 ),
 ( 3, 1, 2756, 1, 154, 4, 95 ),
 ( 3, 1, 2756, 1, 155, 4, 95 ),
 ( 3, 1, 2756, 1, 156, 4, 95 ),
 ( 3, 1, 2756, 1, 157, 4, 95 ),
 ( 3, 1, 2756, 1, 158, 4, 95 ),
 ( 3, 1, 2756, 1, 159, 4, 95 ),
 ( 3, 1, 2756, 1, 160, 4, 95 ),
 ( 3, 1, 2756, 1, 154, 4, 96 ),
 ( 3, 1, 2756, 1, 155, 4, 96 ),
 ( 3, 1, 2756, 1, 156, 4, 96 ),
 ( 3, 1, 2756, 1, 157, 4, 96 ),
 ( 3, 1, 2756, 1, 158, 4, 96 ),
 ( 3, 1, 2756, 1, 159, 4, 96 ),
 ( 3, 1, 2756, 1, 160, 4, 96 ),
 ( 3, 1, 2756, 1, 154, 4, 97 ),
 ( 3, 1, 2756, 1, 155, 4, 97 ),
 ( 3, 1, 2756, 1, 156, 4, 97 ),
 ( 3, 1, 2756, 1, 157, 4, 97 ),
 ( 3, 1, 2756, 1, 158, 4, 97 ),
 ( 3, 1, 2756, 1, 159, 4, 97 ),
 ( 3, 1, 2756, 1, 160, 4, 97 ),
 ( 3, 1, 2756, 1, 154, 4, 98 ),
 ( 3, 1, 2756, 1, 155, 4, 98 ),
 ( 3, 1, 2756, 1, 156, 4, 98 ),
 ( 3, 1, 2756, 1, 157, 4, 98 ),
 ( 3, 1, 2756, 1, 158, 4, 98 ),
 ( 3, 1, 2756, 1, 159, 4, 98 ),
 ( 3, 1, 2756, 1, 160, 4, 98 ),
 ( 3, 1, 2756, 1, 154, 4, 99 ),
 ( 3, 1, 2756, 1, 155, 4, 99 ),
 ( 3, 1, 2756, 1, 156, 4, 99 ),
 ( 3, 1, 2756, 1, 157, 4, 99 ),
 ( 3, 1, 2756, 1, 158, 4, 99 ),
 ( 3, 1, 2756, 1, 159, 4, 99 ),
 ( 3, 1, 2756, 1, 160, 4, 99 ),
 ( 3, 1, 2756, 1, 154, 4, 100 ),
 ( 3, 1, 2756, 1, 155, 4, 100 ),
 ( 3, 1, 2756, 1, 156, 4, 100 ),
 ( 3, 1, 2756, 1, 157, 4, 100 ),
 ( 3, 1, 2756, 1, 158, 4, 100 ),
 ( 3, 1, 2756, 1, 159, 4, 100 ),
 ( 3, 1, 2756, 1, 160, 4, 100 ),
 ( 3, 1, 2756, 1, 154, 4, 101 ),
 ( 3, 1, 2756, 1, 155, 4, 101 ),
 ( 3, 1, 2756, 1, 156, 4, 101 ),
 ( 3, 1, 2756, 1, 157, 4, 101 ),
 ( 3, 1, 2756, 1, 158, 4, 101 ),
 ( 3, 1, 2756, 1, 159, 4, 101 ),
 ( 3, 1, 2756, 1, 160, 4, 101 ),
 ( 3, 1, 2756, 1, 154, 4, 102 ),
 ( 3, 1, 2756, 1, 155, 4, 102 ),
 ( 3, 1, 2756, 1, 156, 4, 102 ),
 ( 3, 1, 2756, 1, 157, 4, 102 ),
 ( 3, 1, 2756, 1, 158, 4, 102 ),
 ( 3, 1, 2756, 1, 159, 4, 102 ),
 ( 3, 1, 2756, 1, 160, 4, 102 ),
 ( 3, 1, 2756, 1, 154, 4, 103 ),
 ( 3, 1, 2756, 1, 155, 4, 103 ),
 ( 3, 1, 2756, 1, 156, 4, 103 ),
 ( 3, 1, 2756, 1, 157, 4, 103 ),
 ( 3, 1, 2756, 1, 158, 4, 103 ),
 ( 3, 1, 2756, 1, 159, 4, 103 ),
 ( 3, 1, 2756, 1, 160, 4, 103 ),
 ( 3, 1, 2756, 1, 154, 4, 104 ),
 ( 3, 1, 2756, 1, 155, 4, 104 ),
 ( 3, 1, 2756, 1, 156, 4, 104 ),
 ( 3, 1, 2756, 1, 157, 4, 104 ),
 ( 3, 1, 2756, 1, 158, 4, 104 ),
 ( 3, 1, 2756, 1, 159, 4, 104 ),
 ( 3, 1, 2756, 1, 160, 4, 104 ),
 ( 3, 1, 2756, 1, 154, 4, 105 ),
 ( 3, 1, 2756, 1, 155, 4, 105 ),
 ( 3, 1, 2756, 1, 156, 4, 105 ),
 ( 3, 1, 2756, 1, 157, 4, 105 ),
 ( 3, 1, 2756, 1, 158, 4, 105 ),
 ( 3, 1, 2756, 1, 159, 4, 105 ),
 ( 3, 1, 2756, 1, 160, 4, 105 ),
 ( 3, 1, 2756, 1, 154, 4, 106 ),
 ( 3, 1, 2756, 1, 155, 4, 106 ),
 ( 3, 1, 2756, 1, 156, 4, 106 ),
 ( 3, 1, 2756, 1, 157, 4, 106 ),
 ( 3, 1, 2756, 1, 158, 4, 106 ),
 ( 3, 1, 2756, 1, 159, 4, 106 ),
 ( 3, 1, 2756, 1, 160, 4, 106 ),
 ( 3, 1, 2756, 1, 154, 4, 107 ),
 ( 3, 1, 2756, 1, 155, 4, 107 ),
 ( 3, 1, 2756, 1, 156, 4, 107 ),
 ( 3, 1, 2756, 1, 157, 4, 107 ),
 ( 3, 1, 2756, 1, 158, 4, 107 ),
 ( 3, 1, 2756, 1, 159, 4, 107 ),
 ( 3, 1, 2756, 1, 160, 4, 107 ),
 ( 3, 1, 2756, 1, 2, 4, 128 ),
 ( 3, 1, 2756, 1, 3, 4, 128 ),
 ( 3, 1, 2756, 1, 4, 4, 128 ),
 ( 3, 1, 2756, 1, 5, 4, 128 ),
 ( 3, 1, 2756, 1, 6, 4, 128 ),
 ( 3, 1, 2756, 1, 7, 4, 128 ),
 ( 3, 1, 2756, 1, 8, 4, 128 ),
 ( 3, 1, 2756, 1, 2, 4, 129 ),
 ( 3, 1, 2756, 1, 3, 4, 129 ),
 ( 3, 1, 2756, 1, 4, 4, 129 ),
 ( 3, 1, 2756, 1, 5, 4, 129 ),
 ( 3, 1, 2756, 1, 6, 4, 129 ),
 ( 3, 1, 2756, 1, 7, 4, 129 ),
 ( 3, 1, 2756, 1, 8, 4, 129 ),
 ( 3, 1, 2756, 1, 2, 4, 130 ),
 ( 3, 1, 2756, 1, 3, 4, 130 ),
 ( 3, 1, 2756, 1, 4, 4, 130 ),
 ( 3, 1, 2756, 1, 5, 4, 130 ),
 ( 3, 1, 2756, 1, 6, 4, 130 ),
 ( 3, 1, 2756, 1, 7, 4, 130 ),
 ( 3, 1, 2756, 1, 8, 4, 130 ),
 ( 3, 1, 2756, 1, 2, 4, 131 ),
 ( 3, 1, 2756, 1, 3, 4, 131 ),
 ( 3, 1, 2756, 1, 4, 4, 131 ),
 ( 3, 1, 2756, 1, 5, 4, 131 ),
 ( 3, 1, 2756, 1, 6, 4, 131 ),
 ( 3, 1, 2756, 1, 7, 4, 131 ),
 ( 3, 1, 2756, 1, 8, 4, 131 ),
 ( 3, 1, 2756, 1, 2, 4, 132 ),
 ( 3, 1, 2756, 1, 3, 4, 132 ),
 ( 3, 1, 2756, 1, 4, 4, 132 ),
 ( 3, 1, 2756, 1, 5, 4, 132 ),
 ( 3, 1, 2756, 1, 6, 4, 132 ),
 ( 3, 1, 2756, 1, 7, 4, 132 ),
 ( 3, 1, 2756, 1, 8, 4, 132 ),
 ( 3, 1, 2756, 1, 2, 4, 133 ),
 ( 3, 1, 2756, 1, 3, 4, 133 ),
 ( 3, 1, 2756, 1, 4, 4, 133 ),
 ( 3, 1, 2756, 1, 5, 4, 133 ),
 ( 3, 1, 2756, 1, 6, 4, 133 ),
 ( 3, 1, 2756, 1, 7, 4, 133 ),
 ( 3, 1, 2756, 1, 8, 4, 133 ),
 ( 3, 1, 2756, 1, 2, 4, 134 ),
 ( 3, 1, 2756, 1, 3, 4, 134 ),
 ( 3, 1, 2756, 1, 4, 4, 134 ),
 ( 3, 1, 2756, 1, 5, 4, 134 ),
 ( 3, 1, 2756, 1, 6, 4, 134 ),
 ( 3, 1, 2756, 1, 7, 4, 134 ),
 ( 3, 1, 2756, 1, 8, 4, 134 ),
 ( 3, 1, 2756, 1, 2, 4, 135 ),
 ( 3, 1, 2756, 1, 3, 4, 135 ),
 ( 3, 1, 2756, 1, 4, 4, 135 ),
 ( 3, 1, 2756, 1, 5, 4, 135 ),
 ( 3, 1, 2756, 1, 6, 4, 135 ),
 ( 3, 1, 2756, 1, 7, 4, 135 ),
 ( 3, 1, 2756, 1, 8, 4, 135 ),
 ( 3, 1, 2756, 1, 2, 4, 136 ),
 ( 3, 1, 2756, 1, 3, 4, 136 ),
 ( 3, 1, 2756, 1, 4, 4, 136 ),
 ( 3, 1, 2756, 1, 5, 4, 136 ),
 ( 3, 1, 2756, 1, 6, 4, 136 ),
 ( 3, 1, 2756, 1, 7, 4, 136 ),
 ( 3, 1, 2756, 1, 8, 4, 136 ),
 ( 3, 1, 2756, 1, 2, 4, 137 ),
 ( 3, 1, 2756, 1, 3, 4, 137 ),
 ( 3, 1, 2756, 1, 4, 4, 137 ),
 ( 3, 1, 2756, 1, 5, 4, 137 ),
 ( 3, 1, 2756, 1, 6, 4, 137 ),
 ( 3, 1, 2756, 1, 7, 4, 137 ),
 ( 3, 1, 2756, 1, 8, 4, 137 ),
 ( 3, 1, 2756, 1, 2, 4, 138 ),
 ( 3, 1, 2756, 1, 3, 4, 138 ),
 ( 3, 1, 2756, 1, 4, 4, 138 ),
 ( 3, 1, 2756, 1, 5, 4, 138 ),
 ( 3, 1, 2756, 1, 6, 4, 138 ),
 ( 3, 1, 2756, 1, 7, 4, 138 ),
 ( 3, 1, 2756, 1, 8, 4, 138 ),
 ( 3, 1, 2756, 1, 2, 4, 139 ),
 ( 3, 1, 2756, 1, 3, 4, 139 ),
 ( 3, 1, 2756, 1, 4, 4, 139 ),
 ( 3, 1, 2756, 1, 5, 4, 139 ),
 ( 3, 1, 2756, 1, 6, 4, 139 ),
 ( 3, 1, 2756, 1, 7, 4, 139 ),
 ( 3, 1, 2756, 1, 8, 4, 139 ),
 ( 3, 1, 2756, 1, 2, 4, 140 ),
 ( 3, 1, 2756, 1, 3, 4, 140 ),
 ( 3, 1, 2756, 1, 4, 4, 140 ),
 ( 3, 1, 2756, 1, 5, 4, 140 ),
 ( 3, 1, 2756, 1, 6, 4, 140 ),
 ( 3, 1, 2756, 1, 7, 4, 140 ),
 ( 3, 1, 2756, 1, 8, 4, 140 ),
 ( 3, 1, 2756, 1, 162, 3, 331 ),
 ( 3, 1, 2756, 1, 163, 3, 331 ),
 ( 3, 1, 2756, 1, 164, 3, 331 ),
 ( 3, 1, 2756, 1, 165, 3, 331 ),
 ( 3, 1, 2756, 1, 166, 3, 331 ),
 ( 3, 1, 2756, 1, 167, 3, 331 ),
 ( 3, 1, 2756, 1, 168, 3, 331 ),
 ( 3, 1, 2756, 1, 162, 3, 332 ),
 ( 3, 1, 2756, 1, 163, 3, 332 ),
 ( 3, 1, 2756, 1, 164, 3, 332 ),
 ( 3, 1, 2756, 1, 165, 3, 332 ),
 ( 3, 1, 2756, 1, 166, 3, 332 ),
 ( 3, 1, 2756, 1, 167, 3, 332 ),
 ( 3, 1, 2756, 1, 168, 3, 332 ),
 ( 3, 1, 2756, 1, 162, 3, 333 ),
 ( 3, 1, 2756, 1, 163, 3, 333 ),
 ( 3, 1, 2756, 1, 164, 3, 333 ),
 ( 3, 1, 2756, 1, 165, 3, 333 ),
 ( 3, 1, 2756, 1, 166, 3, 333 ),
 ( 3, 1, 2756, 1, 167, 3, 333 ),
 ( 3, 1, 2756, 1, 168, 3, 333 ),
 ( 3, 1, 2756, 1, 162, 3, 334 ),
 ( 3, 1, 2756, 1, 163, 3, 334 ),
 ( 3, 1, 2756, 1, 164, 3, 334 ),
 ( 3, 1, 2756, 1, 165, 3, 334 ),
 ( 3, 1, 2756, 1, 166, 3, 334 ),
 ( 3, 1, 2756, 1, 167, 3, 334 ),
 ( 3, 1, 2756, 1, 168, 3, 334 ),
 ( 3, 1, 2756, 1, 162, 3, 335 ),
 ( 3, 1, 2756, 1, 163, 3, 335 ),
 ( 3, 1, 2756, 1, 164, 3, 335 ),
 ( 3, 1, 2756, 1, 165, 3, 335 ),
 ( 3, 1, 2756, 1, 166, 3, 335 ),
 ( 3, 1, 2756, 1, 167, 3, 335 ),
 ( 3, 1, 2756, 1, 168, 3, 335 ),
 ( 3, 1, 2756, 1, 162, 3, 336 ),
 ( 3, 1, 2756, 1, 163, 3, 336 ),
 ( 3, 1, 2756, 1, 164, 3, 336 ),
 ( 3, 1, 2756, 1, 165, 3, 336 ),
 ( 3, 1, 2756, 1, 166, 3, 336 ),
 ( 3, 1, 2756, 1, 167, 3, 336 ),
 ( 3, 1, 2756, 1, 168, 3, 336 ),
 ( 3, 1, 2756, 1, 162, 3, 337 ),
 ( 3, 1, 2756, 1, 163, 3, 337 ),
 ( 3, 1, 2756, 1, 164, 3, 337 ),
 ( 3, 1, 2756, 1, 165, 3, 337 ),
 ( 3, 1, 2756, 1, 166, 3, 337 ),
 ( 3, 1, 2756, 1, 167, 3, 337 ),
 ( 3, 1, 2756, 1, 168, 3, 337 ),
 ( 3, 1, 2756, 1, 162, 3, 338 ),
 ( 3, 1, 2756, 1, 163, 3, 338 ),
 ( 3, 1, 2756, 1, 164, 3, 338 ),
 ( 3, 1, 2756, 1, 165, 3, 338 ),
 ( 3, 1, 2756, 1, 166, 3, 338 ),
 ( 3, 1, 2756, 1, 167, 3, 338 ),
 ( 3, 1, 2756, 1, 168, 3, 338 ),
 ( 3, 1, 2756, 1, 162, 3, 339 ),
 ( 3, 1, 2756, 1, 163, 3, 339 ),
 ( 3, 1, 2756, 1, 164, 3, 339 ),
 ( 3, 1, 2756, 1, 165, 3, 339 ),
 ( 3, 1, 2756, 1, 166, 3, 339 ),
 ( 3, 1, 2756, 1, 167, 3, 339 ),
 ( 3, 1, 2756, 1, 168, 3, 339 ),
 ( 3, 1, 2756, 1, 162, 3, 340 ),
 ( 3, 1, 2756, 1, 163, 3, 340 ),
 ( 3, 1, 2756, 1, 164, 3, 340 ),
 ( 3, 1, 2756, 1, 165, 3, 340 ),
 ( 3, 1, 2756, 1, 166, 3, 340 ),
 ( 3, 1, 2756, 1, 167, 3, 340 ),
 ( 3, 1, 2756, 1, 168, 3, 340 ),
 ( 3, 1, 2756, 1, 162, 3, 341 ),
 ( 3, 1, 2756, 1, 163, 3, 341 ),
 ( 3, 1, 2756, 1, 164, 3, 341 ),
 ( 3, 1, 2756, 1, 165, 3, 341 ),
 ( 3, 1, 2756, 1, 166, 3, 341 ),
 ( 3, 1, 2756, 1, 167, 3, 341 ),
 ( 3, 1, 2756, 1, 168, 3, 341 ),
 ( 3, 1, 2756, 1, 162, 3, 342 ),
 ( 3, 1, 2756, 1, 163, 3, 342 ),
 ( 3, 1, 2756, 1, 164, 3, 342 ),
 ( 3, 1, 2756, 1, 165, 3, 342 ),
 ( 3, 1, 2756, 1, 166, 3, 342 ),
 ( 3, 1, 2756, 1, 167, 3, 342 ),
 ( 3, 1, 2756, 1, 168, 3, 342 ),
 ( 3, 1, 2756, 1, 162, 3, 343 ),
 ( 3, 1, 2756, 1, 163, 3, 343 ),
 ( 3, 1, 2756, 1, 164, 3, 343 ),
 ( 3, 1, 2756, 1, 165, 3, 343 ),
 ( 3, 1, 2756, 1, 166, 3, 343 ),
 ( 3, 1, 2756, 1, 167, 3, 343 ),
 ( 3, 1, 2756, 1, 168, 3, 343 )
go
update #AOK set aok = aok+@@error
go

declare @aok int
select @aok = aok from #AOK
if @aok = 0
   begin
      commit transaction
      print 'No SQL Errors occurred...The transaction has been committed.'
   end
else
   begin
      rollback transaction
      raiserror('>>> There were SQL Errors for proposal 2756...The transaction has been rolled back.', 10, 1)
   end
go
drop table #AOK
go
