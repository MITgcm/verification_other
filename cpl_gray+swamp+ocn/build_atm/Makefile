# Multithreaded + multi-processing makefile for:
#    Linux c082 4.11.9-100.fc24.x86_64 #1 SMP Wed Jul 5 16:34:07 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
# This makefile was generated automatically on
#    Tue Oct  5 09:37:03 EDT 2021
# by the command:
#    /home/ptuckman/MITgcm/tools/genmake2 -mpi -rootdir /home/ptuckman/MITgcm -optfile /home/ptuckman/MITgcm/tools/build_options/linux_amd64_ifort
# executed by:
#    ptuckman@c082:/home/ptuckman/BrianCode/atm_gray_cpl_dd/build_atm
#
# OPTFILE="/home/ptuckman/MITgcm/tools/build_options/linux_amd64_ifort"
#
# BUILDDIR     : Directory where object files are written
# SOURCEDIRS   : Directories containing the source (.F) files
# INCLUDEDIRS  : Directories containing the header-source (.h) files
# EXEDIR       : Directory where executable that is generated is written
# EXECUTABLE   : Full path of executable binary
#
# CPP          : C-preprocessor command
# INCLUDES     : Directories searched for header files
# DEFINES      : Macro definitions for CPP
# MAKEDEPEND   : Dependency generator
# FC           : Fortran compiler command
# FFLAGS       : Configuration/debugging options for FC
# FOPTIM       : Optimization options for FC
# LINK         : Command for link editor program
# LIBS         : Library flags /or/ additional optimization/debugging flags

ROOTDIR     = /home/ptuckman/MITgcm
BUILDDIR    = .
SOURCEDIRS  =  ../../code_atm ../../shared_code $(ROOTDIR)/pkg/atm_compon_interf $(ROOTDIR)/pkg/atm_phys $(ROOTDIR)/pkg/compon_communic $(ROOTDIR)/pkg/debug $(ROOTDIR)/pkg/diagnostics $(ROOTDIR)/pkg/exch2 $(ROOTDIR)/pkg/generic_advdiff $(ROOTDIR)/pkg/mdsio $(ROOTDIR)/pkg/mnc $(ROOTDIR)/pkg/mom_common $(ROOTDIR)/pkg/mom_fluxform $(ROOTDIR)/pkg/mom_vecinv $(ROOTDIR)/pkg/monitor $(ROOTDIR)/pkg/rw $(ROOTDIR)/pkg/shap_filt $(ROOTDIR)/pkg/timeave $(ROOTDIR)/eesupp/src $(ROOTDIR)/model/src
INCLUDEDIRS =  ../../code_atm ../../shared_code $(ROOTDIR)/pkg/atm_compon_interf $(ROOTDIR)/pkg/atm_phys $(ROOTDIR)/pkg/compon_communic $(ROOTDIR)/pkg/debug $(ROOTDIR)/pkg/diagnostics $(ROOTDIR)/pkg/exch2 $(ROOTDIR)/pkg/generic_advdiff $(ROOTDIR)/pkg/mdsio $(ROOTDIR)/pkg/mnc $(ROOTDIR)/pkg/mom_common $(ROOTDIR)/pkg/mom_fluxform $(ROOTDIR)/pkg/mom_vecinv $(ROOTDIR)/pkg/monitor $(ROOTDIR)/pkg/rw $(ROOTDIR)/pkg/shap_filt $(ROOTDIR)/pkg/timeave $(ROOTDIR)/eesupp/inc $(ROOTDIR)/model/inc
EXEDIR      = .
EXECUTABLE  = $(EXEDIR)/mitgcmuv
TOOLSDIR    = $(ROOTDIR)/tools
OADTOOLS    = 

#eh3  new defines for the adjoint work
AUTODIFF    = $(ROOTDIR)/pkg/autodiff
EXE_AD      = mitgcmuv_ad
EXE_FTL     = mitgcmuv_ftl
EXE_SVD     = mitgcmuv_svd

ENABLED_PACKAGES =  -DALLOW_ATM_COMPON_INTERF -DALLOW_ATM_PHYS -DALLOW_COMPON_COMMUNIC -DALLOW_DEBUG -DALLOW_DIAGNOSTICS -DALLOW_EXCH2 -DALLOW_GENERIC_ADVDIFF -DALLOW_MDSIO -DALLOW_MNC -DALLOW_MOM_COMMON -DALLOW_MOM_FLUXFORM -DALLOW_MOM_VECINV -DALLOW_MONITOR -DALLOW_RW -DALLOW_SHAP_FILT -DALLOW_TIMEAVE
DISABLED_PACKAGES =  -UALLOW_ADMTLM -UALLOW_AIM_V23 -UALLOW_ATM2D -UALLOW_ATM_COMMON -UALLOW_ATM_OCN_COUPLER -UALLOW_AUTODIFF -UALLOW_BBL -UALLOW_BLING -UALLOW_BULK_FORCE -UALLOW_CAL -UALLOW_CD_CODE -UALLOW_CFC -UALLOW_CHEAPAML -UALLOW_CHRONOS -UALLOW_COST -UALLOW_CTRL -UALLOW_DIC -UALLOW_DOWN_SLOPE -UALLOW_EBM -UALLOW_ECCO -UALLOW_EMBED_FILES -UALLOW_EXF -UALLOW_FIZHI -UALLOW_FLT -UALLOW_FRAZIL -UALLOW_GCHEM -UALLOW_GGL90 -UALLOW_GMREDI -UALLOW_GRDCHK -UALLOW_GRIDALT -UALLOW_ICEFRONT -UALLOW_KL10 -UALLOW_KPP -UALLOW_LAND -UALLOW_LAYERS -UALLOW_LONGSTEP -UALLOW_MATRIX -UALLOW_MY82 -UALLOW_MYPACKAGE -UALLOW_OBCS -UALLOW_OCN_COMPON_INTERF -UALLOW_OFFLINE -UALLOW_OPENAD -UALLOW_OPPS -UALLOW_PP81 -UALLOW_PROFILES -UALLOW_PTRACERS -UALLOW_RBCS -UALLOW_REGRID -UALLOW_RUNCLOCK -UALLOW_SALT_PLUME -UALLOW_SBO -UALLOW_SEAICE -UALLOW_SHELFICE -UALLOW_SHOWFLOPS -UALLOW_SMOOTH -UALLOW_SPHERE -UALLOW_STREAMICE -UALLOW_THSICE -UALLOW_ZONAL_FILT

# These files are created by Makefile
SPECIAL_FILES = PACKAGES_CONFIG.h AD_CONFIG.h FC_NAMEMANGLE.h BUILD_INFO.h
EMBEDDED_FILES = 
# Unix ln (link)
LN = ln -s
# Dependency generator
MAKEDEPEND = $(TOOLSDIR)/xmakedepend
# Special preprocessor (KAP on DECs, FPP on Crays)
KPP = 
# Fortran compiler
FC = ifort
# Fortran compiler
F90C = mpif90
# C compiler
CC = icc
# Link editor
LINK = mpif90 -shared-intel -no-ipo 

# Defines for CPP
DEFINES = -DWORDLENGTH=4 -DALLOW_USE_MPI -DHAVE_SYSTEM -DHAVE_FDATE -DHAVE_ETIME_FCT -DHAVE_CLOC -DHAVE_SETRLSTK -DHAVE_SIGREG -DHAVE_STAT -DHAVE_NETCDF -DHAVE_FLUSH 
# Includes for CPP
INCLUDES = 
# default CPP includes for makedepend
CPPINCLUDES =  -I/home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include -I/home/software/intel/intel-2017.0.1/include -I/usr/lib/gcc/x86_64-redhat-linux/6.3.1/include -I/usr/local/include -I/usr/include
# Flags for KPP
KFLAGS1 = 
KFLAGS2 = 
# Optim./debug for FC
FFLAGS = -r8 -m64 -convert big_endian -assume byterecl -mcmodel=medium
FOPTIM = -O2 -align -ip -fp-model source -xHost 
# Optim./debug for FC
F90FLAGS = -r8 -m64 -convert big_endian -assume byterecl -mcmodel=medium
F90OPTIM = -O2 -align -ip -fp-model source -xHost
F90FIXEDFORMAT = -fixed -Tf
# Flags for CC
CFLAGS = -O0 -ip -m64 -xHost -mcmodel=medium
# Files that should not be optimized
NOOPTFILES = 
NOOPTFLAGS = -O0 -g
# Flags and libraries needed for linking
LIBS =  -lnetcdff -lnetcdf
# Name of the makefile
MAKEFILE = Makefile
# Name of the make program
MAKE = make

F77_SRC_FILES =  \
 atm_apply_import.F \
 atm_get_atmconfig.F \
 atm_check_cplconfig.F \
 atm_cpl_read_pickup.F \
 atm_export_atmconfig.F \
 atm_export_fields.F \
 atm_export_fld.F \
 atm_import_fields.F \
 atm_import_ocnconfig.F \
 atm_store_aim_fields.F \
 atm_store_aim_wndstr.F \
 atm_store_dynvars.F \
 atm_store_land.F \
 atm_store_my_data.F \
 atm_store_surfflux.F \
 atm_store_thsice.F \
 cpl_diagnostics_fill.F \
 cpl_diagnostics_init.F \
 cpl_exch_configs.F \
 cpl_export_import_data.F \
 cpl_import_cplparms.F \
 cpl_init.F \
 cpl_init_fixed.F \
 cpl_ini_vars.F \
 cpl_output.F \
 cpl_readparms.F \
 cpl_register.F \
 cpl_write_pickup.F \
 atm_phys_check.F \
 atm_phys_diagnostics_init.F \
 atm_phys_driver.F \
 atm_phys_dyn2phys.F \
 atm_phys_init_fixed.F \
 atm_phys_init_varia.F \
 atm_phys_readparms.F \
 atm_phys_read_pickup.F \
 atm_phys_tendency_apply.F \
 atm_phys_write_pickup.F \
 comprecv_i4vec.F \
 comprecv_r4.F \
 comprecv_r4tiles.F \
 comprecv_r8.F \
 comprecv_r8tiles.F \
 compsend_i4vec.F \
 compsend_r4.F \
 compsend_r4tiles.F \
 compsend_r8.F \
 compsend_r8tiles.F \
 couprecv_i4vec.F \
 couprecv_r4.F \
 couprecv_r4tiles.F \
 couprecv_r8.F \
 couprecv_r8tiles.F \
 coupsend_i4vec.F \
 coupsend_r4.F \
 coupsend_r4tiles.F \
 coupsend_r8.F \
 coupsend_r8tiles.F \
 generate_tag.F \
 mitcomponent_init.F \
 mitcomponent_register.F \
 mitcomponent_tile_register.F \
 mitcoupler_init.F \
 mitcoupler_register.F \
 mitcoupler_tile_register.F \
 mitcplr_all_check.F \
 mitcplr_char2dbl.F \
 mitcplr_char2int.F \
 mitcplr_char2real.F \
 mitcplr_dbl2char.F \
 mitcplr_init1.F \
 mitcplr_init2a.F \
 mitcplr_init2b.F \
 mitcplr_initcomp.F \
 mitcplr_int2char.F \
 mitcplr_match_comp.F \
 mitcplr_real2char.F \
 mitcplr_sortranks.F \
 chksum_tiled.F \
 debug_call.F \
 debug_cs_corner_uv.F \
 debug_enter.F \
 debug_fld_stats_rl.F \
 debug_fld_stats_rs.F \
 debug_leave.F \
 debug_msg.F \
 debug_stats_rl.F \
 debug_stats_rs.F \
 fill_in_corners_rl.F \
 write_fullarray_rl.F \
 write_fullarray_rs.F \
 diag_calc_psivel.F \
 diag_cg2d.F \
 diagnostics_addtolist.F \
 diagnostics_calc_phivel.F \
 diagnostics_check.F \
 diagnostics_clear.F \
 diagnostics_fill.F \
 diagnostics_fill_field.F \
 diagnostics_fill_rs.F \
 diagnostics_fill_state.F \
 diagnostics_fract_fill.F \
 diagnostics_ini_io.F \
 diagnostics_init_early.F \
 diagnostics_init_fixed.F \
 diagnostics_init_varia.F \
 diagnostics_interp_p2p.F \
 diagnostics_interp_vert.F \
 diagnostics_is_on.F \
 diagnostics_list_check.F \
 diagnostics_main_init.F \
 diagnostics_mnc_out.F \
 diagnostics_out.F \
 diagnostics_readparms.F \
 diagnostics_read_pickup.F \
 diagnostics_scale_fill.F \
 diagnostics_scale_fill_rs.F \
 diagnostics_set_calc.F \
 diagnostics_setdiag.F \
 diagnostics_set_levels.F \
 diagnostics_set_pointers.F \
 diagnostics_status_error.F \
 diagnostics_sum_levels.F \
 diagnostics_summary.F \
 diagnostics_switch_onoff.F \
 diagnostics_utils.F \
 diagnostics_write_adj.F \
 diagnostics_write.F \
 diagnostics_write_pickup.F \
 diagstats_ascii_out.F \
 diagstats_calc.F \
 diagstats_clear.F \
 diagstats_close_io.F \
 diagstats_fill.F \
 diagstats_global.F \
 diagstats_ini_io.F \
 diagstats_local.F \
 diagstats_mnc_out.F \
 diagstats_others_calc.F \
 diagstats_output.F \
 diagstats_setdiag.F \
 diagstats_set_pointers.F \
 diagstats_set_regions.F \
 diag_vegtile_fill.F \
 exch2_3d_r4.F \
 exch2_3d_r8.F \
 exch2_3d_rl.F \
 exch2_3d_rs.F \
 exch2_ad_get_r41.F \
 exch2_ad_get_r42.F \
 exch2_ad_get_r81.F \
 exch2_ad_get_r82.F \
 exch2_ad_get_rl1.F \
 exch2_ad_get_rl2.F \
 exch2_ad_get_rs1.F \
 exch2_ad_get_rs2.F \
 exch2_ad_put_r41.F \
 exch2_ad_put_r42.F \
 exch2_ad_put_r81.F \
 exch2_ad_put_r82.F \
 exch2_ad_put_rl1.F \
 exch2_ad_put_rl2.F \
 exch2_ad_put_rs1.F \
 exch2_ad_put_rs2.F \
 exch2_check_depths.F \
 exch2_get_r41.F \
 exch2_get_r42.F \
 exch2_get_r81.F \
 exch2_get_r82.F \
 exch2_get_rl1.F \
 exch2_get_rl2.F \
 exch2_get_rs1.F \
 exch2_get_rs2.F \
 exch2_get_scal_bounds.F \
 exch2_get_uv_bounds.F \
 exch2_put_r41.F \
 exch2_put_r42.F \
 exch2_put_r81.F \
 exch2_put_r82.F \
 exch2_put_rl1.F \
 exch2_put_rl2.F \
 exch2_put_rs1.F \
 exch2_put_rs2.F \
 exch2_r41_cube_ad.F \
 exch2_r41_cube.F \
 exch2_r42_cube_ad.F \
 exch2_r42_cube.F \
 exch2_r81_cube_ad.F \
 exch2_r81_cube.F \
 exch2_r82_cube_ad.F \
 exch2_r82_cube.F \
 exch2_recv_r41.F \
 exch2_recv_r42.F \
 exch2_recv_r81.F \
 exch2_recv_r82.F \
 exch2_recv_rl1.F \
 exch2_recv_rl2.F \
 exch2_recv_rs1.F \
 exch2_recv_rs2.F \
 exch2_rl1_cube_ad.F \
 exch2_rl1_cube.F \
 exch2_rl2_cube_ad.F \
 exch2_rl2_cube.F \
 exch2_rs1_cube_ad.F \
 exch2_rs1_cube.F \
 exch2_rs2_cube_ad.F \
 exch2_rs2_cube.F \
 exch2_s3d_r4.F \
 exch2_s3d_r8.F \
 exch2_s3d_rl.F \
 exch2_s3d_rs.F \
 exch2_send_r41.F \
 exch2_send_r42.F \
 exch2_send_r81.F \
 exch2_send_r82.F \
 exch2_send_rl1.F \
 exch2_send_rl2.F \
 exch2_send_rs1.F \
 exch2_send_rs2.F \
 exch2_sm_3d_r4.F \
 exch2_sm_3d_r8.F \
 exch2_sm_3d_rl.F \
 exch2_sm_3d_rs.F \
 exch2_uv_3d_r4.F \
 exch2_uv_3d_r8.F \
 exch2_uv_3d_rl.F \
 exch2_uv_3d_rs.F \
 exch2_uv_agrid_3d_r4.F \
 exch2_uv_agrid_3d_r8.F \
 exch2_uv_agrid_3d_rl.F \
 exch2_uv_agrid_3d_rs.F \
 exch2_uv_bgrid_3d_r4.F \
 exch2_uv_bgrid_3d_r8.F \
 exch2_uv_bgrid_3d_rl.F \
 exch2_uv_bgrid_3d_rs.F \
 exch2_uv_cgrid_3d_r4.F \
 exch2_uv_cgrid_3d_r8.F \
 exch2_uv_cgrid_3d_rl.F \
 exch2_uv_cgrid_3d_rs.F \
 exch2_uv_dgrid_3d_r4.F \
 exch2_uv_dgrid_3d_r8.F \
 exch2_uv_dgrid_3d_rl.F \
 exch2_uv_dgrid_3d_rs.F \
 exch2_z_3d_r4.F \
 exch2_z_3d_r8.F \
 exch2_z_3d_rl.F \
 exch2_z_3d_rs.F \
 w2_cumulsum_z_tile.F \
 w2_e2setup.F \
 w2_eeboot.F \
 w2_map_procs.F \
 w2_print_comm_sequence.F \
 w2_print_e2setup.F \
 w2_readparms.F \
 w2_set_cs6_facets.F \
 w2_set_f2f_index.F \
 w2_set_gen_facets.F \
 w2_set_map_cumsum.F \
 w2_set_map_tiles.F \
 w2_set_myown_facets.F \
 w2_set_single_facet.F \
 w2_set_tile2tiles.F \
 gad_advection.F \
 gad_advscheme.F \
 gad_biharm_r.F \
 gad_biharm_x.F \
 gad_biharm_y.F \
 gad_c2_adv_r.F \
 gad_c2_adv_x.F \
 gad_c2_adv_y.F \
 gad_c2_impl_r.F \
 gad_c4_adv_r.F \
 gad_c4_adv_x.F \
 gad_c4_adv_y.F \
 gad_calc_rhs.F \
 gad_check.F \
 gad_del2.F \
 gad_diagnostics_init.F \
 gad_diagnostics_state.F \
 gad_diff_r.F \
 gad_diff_x.F \
 gad_diff_y.F \
 gad_dst2u1_adv_r.F \
 gad_dst2u1_adv_x.F \
 gad_dst2u1_adv_y.F \
 gad_dst2u1_impl_r.F \
 gad_dst3_adv_r.F \
 gad_dst3_adv_x.F \
 gad_dst3_adv_y.F \
 gad_dst3fl_adv_r.F \
 gad_dst3fl_adv_x.F \
 gad_dst3fl_adv_y.F \
 gad_dst3fl_impl_r.F \
 gad_exch_som.F \
 gad_fluxlimit_adv_r.F \
 gad_fluxlimit_adv_x.F \
 gad_fluxlimit_adv_y.F \
 gad_fluxlimit_impl_r.F \
 gad_grad_x.F \
 gad_grad_y.F \
 gad_implicit_r.F \
 gad_init_fixed.F \
 gad_init_varia.F \
 gad_os7mp_adv_r.F \
 gad_os7mp_adv_x.F \
 gad_os7mp_adv_y.F \
 gad_osc_hat_r.F \
 gad_osc_hat_x.F \
 gad_osc_hat_y.F \
 gad_osc_mul_r.F \
 gad_osc_mul_x.F \
 gad_osc_mul_y.F \
 gad_plm_fun.F \
 gad_ppm_adv_r.F \
 gad_ppm_adv_x.F \
 gad_ppm_adv_y.F \
 gad_ppm_flx_r.F \
 gad_ppm_flx_x.F \
 gad_ppm_flx_y.F \
 gad_ppm_fun.F \
 gad_ppm_hat_r.F \
 gad_ppm_hat_x.F \
 gad_ppm_hat_y.F \
 gad_ppm_p3e_r.F \
 gad_ppm_p3e_x.F \
 gad_ppm_p3e_y.F \
 gad_pqm_adv_r.F \
 gad_pqm_adv_x.F \
 gad_pqm_adv_y.F \
 gad_pqm_flx_r.F \
 gad_pqm_flx_x.F \
 gad_pqm_flx_y.F \
 gad_pqm_fun.F \
 gad_pqm_hat_r.F \
 gad_pqm_hat_x.F \
 gad_pqm_hat_y.F \
 gad_pqm_p5e_r.F \
 gad_pqm_p5e_x.F \
 gad_pqm_p5e_y.F \
 gad_read_pickup.F \
 gad_som_advect.F \
 gad_som_adv_r.F \
 gad_som_adv_x.F \
 gad_som_adv_y.F \
 gad_som_exchanges.F \
 gad_som_fill_cs_corner.F \
 gad_som_lim_r.F \
 gad_som_prep_cs_corner.F \
 gad_u3_adv_r.F \
 gad_u3_adv_x.F \
 gad_u3_adv_y.F \
 gad_u3c4_impl_r.F \
 gad_write_pickup.F \
 salt_fill.F \
 mdsio_buffertorl.F \
 mdsio_buffertors.F \
 mdsio_check4file.F \
 mdsio_facef_read.F \
 mdsio_gl.F \
 mdsio_gl_slice.F \
 mdsio_pass_r4torl.F \
 mdsio_pass_r4tors.F \
 mdsio_pass_r8torl.F \
 mdsio_pass_r8tors.F \
 mdsio_rd_rec_rl.F \
 mdsio_rd_rec_rs.F \
 mdsio_read_field.F \
 mdsio_read_meta.F \
 mdsio_read_section.F \
 mdsio_read_tape.F \
 mdsio_readvec_loc.F \
 mdsio_read_whalos.F \
 mdsio_rw_field.F \
 mdsio_rw_slice.F \
 mdsio_seg4torl.F \
 mdsio_seg4tors.F \
 mdsio_seg8torl.F \
 mdsio_seg8tors.F \
 mdsio_segxtorx_2d.F \
 mdsio_write_field.F \
 mdsio_writelocal.F \
 mdsio_write_meta.F \
 mdsio_write_section.F \
 mdsio_write_tape.F \
 mdsio_writevec_loc.F \
 mdsio_write_whalos.F \
 mdsio_wr_metafiles.F \
 mdsio_wr_rec_rl.F \
 mdsio_wr_rec_rs.F \
 mnc_cw_citer.F \
 mnc_cw_cvars.F \
 mnc_cw_init.F \
 mnc_cw_missingvals.F \
 mnc_cw_model_attr.F \
 mnc_cwrapper.F \
 MNC_CW_READWRITE_I.F \
 MNC_CW_READWRITE_RL.F \
 MNC_CW_READWRITE_RS.F \
 mnc_cw_udim.F \
 mnc_cw_write_grid_info.F \
 mnc_dim.F \
 mnc_dump.F \
 mnc_file.F \
 mnc_grid.F \
 mnc_init.F \
 mnc_readparms.F \
 mnc_update_time.F \
 mnc_utils.F \
 mnc_var.F \
 mom_calc_3d_strain.F \
 mom_calc_absvort3.F \
 mom_calc_hdiv.F \
 mom_calc_hfacz.F \
 mom_calc_ke.F \
 mom_calc_relvort3.F \
 mom_calc_smag_3d.F \
 mom_calc_strain.F \
 mom_calc_tension.F \
 mom_calc_visc.F \
 mom_diagnostics_init.F \
 mom_hdissip.F \
 mom_init_fixed.F \
 mom_quasihydrostatic.F \
 mom_u_botdrag_coeff.F \
 mom_u_coriolis_nh.F \
 mom_u_implicit_r.F \
 mom_u_metric_nh.F \
 mom_u_rviscflux.F \
 mom_u_sidedrag.F \
 mom_uv_smag_3d.F \
 mom_v_botdrag_coeff.F \
 mom_v_coriolis_nh.F \
 mom_v_implicit_r.F \
 mom_visc_qgl_limit.F \
 mom_visc_qgl_stretch.F \
 mom_v_metric_nh.F \
 mom_v_rviscflux.F \
 mom_v_sidedrag.F \
 mom_w_coriolis_nh.F \
 mom_w_metric_nh.F \
 mom_w_sidedrag.F \
 mom_w_smag_3d.F \
 mom_calc_rtrans.F \
 mom_fluxform.F \
 mom_u_adv_uu.F \
 mom_u_adv_vu.F \
 mom_u_adv_wu.F \
 mom_u_coriolis.F \
 mom_u_del2u.F \
 mom_u_metric_cylinder.F \
 mom_u_metric_sphere.F \
 mom_uv_boundary.F \
 mom_u_xviscflux.F \
 mom_u_yviscflux.F \
 mom_v_adv_uv.F \
 mom_v_adv_vv.F \
 mom_v_adv_wv.F \
 mom_v_coriolis.F \
 mom_v_del2v.F \
 mom_v_metric_cylinder.F \
 mom_v_metric_sphere.F \
 mom_v_xviscflux.F \
 mom_v_yviscflux.F \
 mom_vecinv.F \
 mom_vi_coriolis.F \
 mom_vi_del2uv.F \
 mom_vi_hdissip.F \
 mom_vi_u_coriolis_c4.F \
 mom_vi_u_coriolis.F \
 mom_vi_u_grad_ke.F \
 mom_vi_u_vertshear.F \
 mom_vi_v_coriolis_c4.F \
 mom_vi_v_coriolis.F \
 mom_vi_v_grad_ke.F \
 mom_vi_v_vertshear.F \
 mon_advcfl.F \
 mon_advcflw2.F \
 mon_advcflw.F \
 mon_calc_advcfl.F \
 mon_calc_stats_rl.F \
 mon_calc_stats_rs.F \
 mon_init.F \
 monitor_ad.F \
 monitor.F \
 monitor_g.F \
 mon_ke.F \
 mon_out.F \
 mon_printstats_rl.F \
 mon_printstats_rs.F \
 mon_set_iounit.F \
 mon_set_pref.F \
 mon_solution.F \
 mon_stats_latbnd_rl.F \
 mon_stats_rl.F \
 mon_stats_rs.F \
 mon_surfcor.F \
 mon_vort3.F \
 mon_writestats_rl.F \
 mon_writestats_rs.F \
 get_write_global_fld.F \
 read_fld_xy_rl.F \
 read_fld_xy_rs.F \
 read_fld_xyz_rl.F \
 read_fld_xyz_rs.F \
 read_glvec_rl.F \
 read_glvec_rs.F \
 read_mflds.F \
 read_rec.F \
 rw_get_suffix.F \
 set_write_global_fld.F \
 write_fld_3d_rl.F \
 write_fld_3d_rs.F \
 write_fld_s3d_rl.F \
 write_fld_s3d_rs.F \
 write_fld_xy_rl.F \
 write_fld_xy_rs.F \
 write_fld_xyz_rl.F \
 write_fld_xyz_rs.F \
 write_glvec_rl.F \
 write_glvec_rs.F \
 write_local_rl.F \
 write_local_rs.F \
 write_rec.F \
 shap_filt_apply_ts.F \
 shap_filt_apply_uv.F \
 shap_filt_computvort.F \
 shap_filt_diagnostics_init.F \
 shap_filt_init_fixed.F \
 shap_filt_readparms.F \
 shap_filt_relvort3.F \
 shap_filt_tracerold.F \
 shap_filt_tracer_s1.F \
 shap_filt_tracer_s2.F \
 shap_filt_tracer_s4.F \
 shap_filt_u.F \
 shap_filt_uv_s1.F \
 shap_filt_uv_s2c.F \
 shap_filt_uv_s2.F \
 shap_filt_uv_s4.F \
 shap_filt_v.F \
 timeave_cumul_1k1t.F \
 timeave_cumul_1t.F \
 timeave_cumul_1vfc.F \
 timeave_cumul_2v.F \
 timeave_cumul_2vfc.F \
 timeave_cumulate.F \
 timeave_cumul_dif_1t.F \
 timeave_init_fixed.F \
 timeave_norma_2v.F \
 timeave_normalize.F \
 timeave_reset.F \
 timeave_statvars.F \
 timeave_statv_write.F \
 timeave_surf_flux.F \
 all_proc_die.F \
 bar2.F \
 bar_check.F \
 barrier.F \
 check_threads.F \
 comm_stats.F \
 cumulsum_z_tile.F \
 different_multiple.F \
 diff_phase_multiple.F \
 eeboot.F \
 eeboot_minimal.F \
 eedata_example.F \
 eedie.F \
 eeintro_msg.F \
 eeset_parms.F \
 eewrite_eeenv.F \
 exch0_r4.F \
 exch0_r8.F \
 exch0_rl.F \
 exch0_rs.F \
 exch1_bg_r4_cube.F \
 exch1_bg_r8_cube.F \
 exch1_bg_rl_cube.F \
 exch1_bg_rs_cube.F \
 exch1_r4_cube.F \
 exch1_r4.F \
 exch1_r8_cube.F \
 exch1_r8.F \
 exch1_rl_ad.F \
 exch1_rl_cube_ad.F \
 exch1_rl_cube.F \
 exch1_rl.F \
 exch1_rs_ad.F \
 exch1_rs_cube_ad.F \
 exch1_rs_cube.F \
 exch1_rs.F \
 exch1_uv_r4_cube.F \
 exch1_uv_r8_cube.F \
 exch1_uv_rl_cube.F \
 exch1_uv_rs_cube.F \
 exch1_z_r4_cube.F \
 exch1_z_r8_cube.F \
 exch1_z_rl_cube.F \
 exch1_z_rs_cube.F \
 exch_3d_r4.F \
 exch_3d_r8.F \
 exch_3d_rl.F \
 exch_3d_rs.F \
 exch_cycle_ebl.F \
 exch_init.F \
 exch_r4_recv_get_x.F \
 exch_r4_recv_get_y.F \
 exch_r4_send_put_x.F \
 exch_r4_send_put_y.F \
 exch_r8_recv_get_x.F \
 exch_r8_recv_get_y.F \
 exch_r8_send_put_x.F \
 exch_r8_send_put_y.F \
 exch_rl_recv_get_x.F \
 exch_rl_recv_get_y.F \
 exch_rl_send_put_x.F \
 exch_rl_send_put_y.F \
 exch_rs_recv_get_x.F \
 exch_rs_recv_get_y.F \
 exch_rs_send_put_x.F \
 exch_rs_send_put_y.F \
 exch_s3d_r4.F \
 exch_s3d_r8.F \
 exch_s3d_rl.F \
 exch_s3d_rs.F \
 exch_sm_3d_r4.F \
 exch_sm_3d_r8.F \
 exch_sm_3d_rl.F \
 exch_sm_3d_rs.F \
 exch_uv_3d_r4.F \
 exch_uv_3d_r8.F \
 exch_uv_3d_rl.F \
 exch_uv_3d_rs.F \
 exch_uv_agrid_3d_r4.F \
 exch_uv_agrid_3d_r8.F \
 exch_uv_agrid_3d_rl.F \
 exch_uv_agrid_3d_rs.F \
 exch_uv_bgrid_3d_r4.F \
 exch_uv_bgrid_3d_r8.F \
 exch_uv_bgrid_3d_rl.F \
 exch_uv_bgrid_3d_rs.F \
 exch_uv_dgrid_3d_r4.F \
 exch_uv_dgrid_3d_r8.F \
 exch_uv_dgrid_3d_rl.F \
 exch_uv_dgrid_3d_rs.F \
 exch_uv_xy_r4.F \
 exch_uv_xy_r8.F \
 exch_uv_xy_rl.F \
 exch_uv_xy_rs.F \
 exch_uv_xyz_r4.F \
 exch_uv_xyz_r8.F \
 exch_uv_xyz_rl.F \
 exch_uv_xyz_rs.F \
 exch_xy_r4.F \
 exch_xy_r8.F \
 exch_xy_rl.F \
 exch_xy_rs.F \
 exch_xyz_r4.F \
 exch_xyz_r8.F \
 exch_xyz_rl.F \
 exch_xyz_rs.F \
 exch_z_3d_r4.F \
 exch_z_3d_r8.F \
 exch_z_3d_rl.F \
 exch_z_3d_rs.F \
 fill_cs_corner_ag_rl.F \
 fill_cs_corner_tr_rl.F \
 fill_cs_corner_uv_rl.F \
 fill_cs_corner_uv_rs.F \
 fool_the_compiler.F \
 gather_2d_r4.F \
 gather_2d_r8.F \
 gather_2d_wh_r4.F \
 gather_2d_wh_r8.F \
 gather_vec_r4.F \
 gather_vec_r8.F \
 gather_xz.F \
 gather_yz.F \
 get_periodic_interval.F \
 global_max.F \
 global_sum.F \
 global_sum_singlecpu.F \
 global_sum_tile.F \
 global_vec_sum.F \
 gsum.F \
 ini_communication_patterns.F \
 ini_procs.F \
 ini_threading_environment.F \
 lef_zero.F \
 main.F \
 master_cpu_io.F \
 master_cpu_thread.F \
 mds_byteswapi4.F \
 mds_byteswapr4.F \
 mds_byteswapr8.F \
 mdsfindunit.F \
 mds_flush.F \
 mds_reclen.F \
 memsync.F \
 nml_change_syntax.F \
 nml_set_terminator.F \
 open_copy_data_file.F \
 print.F \
 reset_halo.F \
 scatter_2d_r4.F \
 scatter_2d_r8.F \
 scatter_2d_wh_r4.F \
 scatter_2d_wh_r8.F \
 scatter_vec_r4.F \
 scatter_vec_r8.F \
 scatter_xz.F \
 scatter_yz.F \
 stop_if_error.F \
 timers.F \
 utils.F \
 write_utils.F \
 adams_bashforth2.F \
 adams_bashforth3.F \
 add_walls2masks.F \
 apply_forcing.F \
 calc_3d_diffusivity.F \
 calc_adv_flow.F \
 calc_div_ghat.F \
 calc_eddy_stress.F \
 calc_grad_phi_fv.F \
 calc_grad_phi_hyd.F \
 calc_grad_phi_surf.F \
 calc_grid_angles.F \
 calc_gw.F \
 calc_ivdc.F \
 calc_oce_mxlayer.F \
 calc_phi_hyd.F \
 calc_r_star.F \
 calc_surf_dr.F \
 calc_viscosity.F \
 calc_wsurf_tr.F \
 cg2d_ex0.F \
 cg2d.F \
 cg2d_nsa.F \
 cg2d_sr.F \
 cg3d_ex0.F \
 cg3d.F \
 check_pickup.F \
 config_check.F \
 config_summary.F \
 convective_adjustment.F \
 convective_adjustment_ini.F \
 convectively_mixtracer.F \
 convective_weights.F \
 correction_step.F \
 cycle_ab_tracer.F \
 cycle_tracer.F \
 diags_oceanic_surf_flux.F \
 diags_phi_hyd.F \
 diags_phi_rlow.F \
 diags_rho.F \
 diags_sound_speed.F \
 do_atmospheric_phys.F \
 do_fields_blocking_exchanges.F \
 do_oceanic_phys.F \
 do_stagger_fields_exchanges.F \
 do_statevars_diags.F \
 do_statevars_tave.F \
 do_the_model_io.F \
 do_write_pickup.F \
 dynamics.F \
 external_fields_load.F \
 external_forcing.F \
 external_forcing_surf.F \
 find_alpha.F \
 find_hyd_press_1d.F \
 find_rho.F \
 forcing_surf_relax.F \
 forward_step.F \
 freesurf_rescale_g.F \
 freeze_surface.F \
 grad_sigma.F \
 gsw_teos10.F \
 impldiff.F \
 ini_cartesian_grid.F \
 ini_cg2d.F \
 ini_cg3d.F \
 ini_cori.F \
 ini_curvilinear_grid.F \
 ini_cylinder_grid.F \
 ini_depths.F \
 ini_dynvars.F \
 ini_eos.F \
 ini_ffields.F \
 ini_fields.F \
 ini_forcing.F \
 ini_global_domain.F \
 ini_grid.F \
 ini_linear_phisurf.F \
 ini_local_grid.F \
 ini_masks_etc.F \
 ini_mixing.F \
 ini_mnc_vars.F \
 ini_model_io.F \
 ini_nh_fields.F \
 ini_nh_vars.F \
 ini_nlfs_vars.F \
 ini_parms.F \
 ini_p_ground.F \
 ini_pressure.F \
 ini_psurf.F \
 ini_salt.F \
 ini_sigma_hfac.F \
 ini_spherical_polar_grid.F \
 ini_theta.F \
 initialise_fixed.F \
 initialise_varia.F \
 ini_vel.F \
 ini_vertical_grid.F \
 integrate_for_w.F \
 integr_continuity.F \
 load_fields_driver.F \
 load_grid_spacing.F \
 load_ref_files.F \
 main_do_loop.F \
 momentum_correction_step.F \
 packages_boot.F \
 packages_check.F \
 packages_error_msg.F \
 packages_init_fixed.F \
 packages_init_variables.F \
 packages_print_msg.F \
 packages_readparms.F \
 packages_unused_msg.F \
 packages_write_pickup.F \
 plot_field.F \
 port_rand.F \
 post_cg3d.F \
 pre_cg3d.F \
 pressure_for_eos.F \
 read_pickup.F \
 remove_mean.F \
 reset_nlfs_vars.F \
 rotate_spherical_polar_grid.F \
 rotate_uv2en.F \
 salt_integrate.F \
 seawater.F \
 set_defaults.F \
 set_grid_factors.F \
 set_parms.F \
 set_ref_state.F \
 solve_for_pressure.F \
 solve_pentadiagonal.F \
 solve_tridiagonal.F \
 solve_uv_tridiago.F \
 state_summary.F \
 swfrac.F \
 taueddy_init_varia.F \
 taueddy_tendency_apply.F \
 temp_integrate.F \
 the_main_loop.F \
 the_model_main.F \
 thermodynamics.F \
 timestep.F \
 timestep_tracer.F \
 timestep_wvel.F \
 tracers_correction_step.F \
 tracers_iigw_correction.F \
 turnoff_model_io.F \
 update_cg2d.F \
 update_etah.F \
 update_etaws.F \
 update_masks_etc.F \
 update_r_star.F \
 update_sigma.F \
 update_surf_dr.F \
 write_grid.F \
 write_pickup.F \
 write_state.F
NON_AD_F77_SRC_FILES =  \
 atm_apply_import.F \
 atm_get_atmconfig.F \
 atm_check_cplconfig.F \
 atm_cpl_read_pickup.F \
 atm_export_atmconfig.F \
 atm_export_fields.F \
 atm_export_fld.F \
 atm_import_fields.F \
 atm_import_ocnconfig.F \
 atm_store_aim_fields.F \
 atm_store_aim_wndstr.F \
 atm_store_dynvars.F \
 atm_store_land.F \
 atm_store_my_data.F \
 atm_store_surfflux.F \
 atm_store_thsice.F \
 cpl_diagnostics_fill.F \
 cpl_diagnostics_init.F \
 cpl_exch_configs.F \
 cpl_export_import_data.F \
 cpl_import_cplparms.F \
 cpl_init.F \
 cpl_init_fixed.F \
 cpl_ini_vars.F \
 cpl_output.F \
 cpl_readparms.F \
 cpl_register.F \
 cpl_write_pickup.F \
 atm_phys_check.F \
 atm_phys_diagnostics_init.F \
 atm_phys_driver.F \
 atm_phys_dyn2phys.F \
 atm_phys_init_fixed.F \
 atm_phys_init_varia.F \
 atm_phys_readparms.F \
 atm_phys_read_pickup.F \
 atm_phys_tendency_apply.F \
 atm_phys_write_pickup.F \
 comprecv_i4vec.F \
 comprecv_r4.F \
 comprecv_r4tiles.F \
 comprecv_r8.F \
 comprecv_r8tiles.F \
 compsend_i4vec.F \
 compsend_r4.F \
 compsend_r4tiles.F \
 compsend_r8.F \
 compsend_r8tiles.F \
 couprecv_i4vec.F \
 couprecv_r4.F \
 couprecv_r4tiles.F \
 couprecv_r8.F \
 couprecv_r8tiles.F \
 coupsend_i4vec.F \
 coupsend_r4.F \
 coupsend_r4tiles.F \
 coupsend_r8.F \
 coupsend_r8tiles.F \
 generate_tag.F \
 mitcomponent_init.F \
 mitcomponent_register.F \
 mitcomponent_tile_register.F \
 mitcoupler_init.F \
 mitcoupler_register.F \
 mitcoupler_tile_register.F \
 mitcplr_all_check.F \
 mitcplr_char2dbl.F \
 mitcplr_char2int.F \
 mitcplr_char2real.F \
 mitcplr_dbl2char.F \
 mitcplr_init1.F \
 mitcplr_init2a.F \
 mitcplr_init2b.F \
 mitcplr_initcomp.F \
 mitcplr_int2char.F \
 mitcplr_match_comp.F \
 mitcplr_real2char.F \
 mitcplr_sortranks.F \
 chksum_tiled.F \
 debug_call.F \
 debug_cs_corner_uv.F \
 debug_enter.F \
 debug_fld_stats_rl.F \
 debug_fld_stats_rs.F \
 debug_leave.F \
 debug_msg.F \
 debug_stats_rl.F \
 debug_stats_rs.F \
 fill_in_corners_rl.F \
 write_fullarray_rl.F \
 write_fullarray_rs.F \
 diag_calc_psivel.F \
 diag_cg2d.F \
 diagnostics_addtolist.F \
 diagnostics_calc_phivel.F \
 diagnostics_check.F \
 diagnostics_clear.F \
 diagnostics_fill.F \
 diagnostics_fill_field.F \
 diagnostics_fill_rs.F \
 diagnostics_fill_state.F \
 diagnostics_fract_fill.F \
 diagnostics_ini_io.F \
 diagnostics_init_early.F \
 diagnostics_init_fixed.F \
 diagnostics_init_varia.F \
 diagnostics_interp_p2p.F \
 diagnostics_interp_vert.F \
 diagnostics_list_check.F \
 diagnostics_main_init.F \
 diagnostics_mnc_out.F \
 diagnostics_out.F \
 diagnostics_readparms.F \
 diagnostics_read_pickup.F \
 diagnostics_scale_fill.F \
 diagnostics_scale_fill_rs.F \
 diagnostics_set_calc.F \
 diagnostics_setdiag.F \
 diagnostics_set_levels.F \
 diagnostics_set_pointers.F \
 diagnostics_status_error.F \
 diagnostics_sum_levels.F \
 diagnostics_summary.F \
 diagnostics_switch_onoff.F \
 diagnostics_utils.F \
 diagnostics_write_adj.F \
 diagnostics_write.F \
 diagnostics_write_pickup.F \
 diagstats_ascii_out.F \
 diagstats_calc.F \
 diagstats_clear.F \
 diagstats_close_io.F \
 diagstats_fill.F \
 diagstats_global.F \
 diagstats_ini_io.F \
 diagstats_local.F \
 diagstats_mnc_out.F \
 diagstats_others_calc.F \
 diagstats_output.F \
 diagstats_setdiag.F \
 diagstats_set_pointers.F \
 diagstats_set_regions.F \
 diag_vegtile_fill.F \
 exch2_3d_r4.F \
 exch2_3d_r8.F \
 exch2_ad_get_r41.F \
 exch2_ad_get_r42.F \
 exch2_ad_get_r81.F \
 exch2_ad_get_r82.F \
 exch2_ad_get_rl1.F \
 exch2_ad_get_rl2.F \
 exch2_ad_get_rs1.F \
 exch2_ad_get_rs2.F \
 exch2_ad_put_r41.F \
 exch2_ad_put_r42.F \
 exch2_ad_put_r81.F \
 exch2_ad_put_r82.F \
 exch2_ad_put_rl1.F \
 exch2_ad_put_rl2.F \
 exch2_ad_put_rs1.F \
 exch2_ad_put_rs2.F \
 exch2_check_depths.F \
 exch2_get_r41.F \
 exch2_get_r42.F \
 exch2_get_r81.F \
 exch2_get_r82.F \
 exch2_get_rl1.F \
 exch2_get_rl2.F \
 exch2_get_rs1.F \
 exch2_get_rs2.F \
 exch2_get_scal_bounds.F \
 exch2_get_uv_bounds.F \
 exch2_put_r41.F \
 exch2_put_r42.F \
 exch2_put_r81.F \
 exch2_put_r82.F \
 exch2_put_rl1.F \
 exch2_put_rl2.F \
 exch2_put_rs1.F \
 exch2_put_rs2.F \
 exch2_r41_cube_ad.F \
 exch2_r41_cube.F \
 exch2_r42_cube_ad.F \
 exch2_r42_cube.F \
 exch2_r81_cube_ad.F \
 exch2_r81_cube.F \
 exch2_r82_cube_ad.F \
 exch2_r82_cube.F \
 exch2_recv_r41.F \
 exch2_recv_r42.F \
 exch2_recv_r81.F \
 exch2_recv_r82.F \
 exch2_recv_rl1.F \
 exch2_recv_rl2.F \
 exch2_recv_rs1.F \
 exch2_recv_rs2.F \
 exch2_rl1_cube_ad.F \
 exch2_rl1_cube.F \
 exch2_rl2_cube_ad.F \
 exch2_rl2_cube.F \
 exch2_rs1_cube_ad.F \
 exch2_rs1_cube.F \
 exch2_rs2_cube_ad.F \
 exch2_rs2_cube.F \
 exch2_s3d_r4.F \
 exch2_s3d_r8.F \
 exch2_s3d_rl.F \
 exch2_s3d_rs.F \
 exch2_send_r41.F \
 exch2_send_r42.F \
 exch2_send_r81.F \
 exch2_send_r82.F \
 exch2_send_rl1.F \
 exch2_send_rl2.F \
 exch2_send_rs1.F \
 exch2_send_rs2.F \
 exch2_sm_3d_r4.F \
 exch2_sm_3d_r8.F \
 exch2_sm_3d_rs.F \
 exch2_uv_3d_r4.F \
 exch2_uv_3d_r8.F \
 exch2_uv_agrid_3d_r4.F \
 exch2_uv_agrid_3d_r8.F \
 exch2_uv_bgrid_3d_r4.F \
 exch2_uv_bgrid_3d_r8.F \
 exch2_uv_bgrid_3d_rl.F \
 exch2_uv_bgrid_3d_rs.F \
 exch2_uv_cgrid_3d_r4.F \
 exch2_uv_cgrid_3d_r8.F \
 exch2_uv_cgrid_3d_rl.F \
 exch2_uv_cgrid_3d_rs.F \
 exch2_uv_dgrid_3d_r4.F \
 exch2_uv_dgrid_3d_r8.F \
 exch2_z_3d_r4.F \
 exch2_z_3d_r8.F \
 exch2_z_3d_rl.F \
 exch2_z_3d_rs.F \
 w2_cumulsum_z_tile.F \
 w2_e2setup.F \
 w2_eeboot.F \
 w2_map_procs.F \
 w2_print_comm_sequence.F \
 w2_print_e2setup.F \
 w2_readparms.F \
 w2_set_cs6_facets.F \
 w2_set_f2f_index.F \
 w2_set_gen_facets.F \
 w2_set_map_cumsum.F \
 w2_set_map_tiles.F \
 w2_set_myown_facets.F \
 w2_set_single_facet.F \
 w2_set_tile2tiles.F \
 gad_advscheme.F \
 gad_check.F \
 gad_diagnostics_init.F \
 gad_diagnostics_state.F \
 gad_init_fixed.F \
 gad_osc_hat_r.F \
 gad_osc_hat_x.F \
 gad_osc_hat_y.F \
 gad_osc_mul_r.F \
 gad_osc_mul_x.F \
 gad_osc_mul_y.F \
 gad_plm_fun.F \
 gad_ppm_adv_r.F \
 gad_ppm_adv_x.F \
 gad_ppm_adv_y.F \
 gad_ppm_flx_r.F \
 gad_ppm_flx_x.F \
 gad_ppm_flx_y.F \
 gad_ppm_fun.F \
 gad_ppm_hat_r.F \
 gad_ppm_hat_x.F \
 gad_ppm_hat_y.F \
 gad_ppm_p3e_r.F \
 gad_ppm_p3e_x.F \
 gad_ppm_p3e_y.F \
 gad_pqm_adv_r.F \
 gad_pqm_adv_x.F \
 gad_pqm_adv_y.F \
 gad_pqm_flx_r.F \
 gad_pqm_flx_x.F \
 gad_pqm_flx_y.F \
 gad_pqm_fun.F \
 gad_pqm_hat_r.F \
 gad_pqm_hat_x.F \
 gad_pqm_hat_y.F \
 gad_pqm_p5e_r.F \
 gad_pqm_p5e_x.F \
 gad_pqm_p5e_y.F \
 gad_write_pickup.F \
 salt_fill.F \
 mdsio_buffertorl.F \
 mdsio_buffertors.F \
 mdsio_check4file.F \
 mdsio_facef_read.F \
 mdsio_gl.F \
 mdsio_gl_slice.F \
 mdsio_pass_r4torl.F \
 mdsio_pass_r4tors.F \
 mdsio_pass_r8torl.F \
 mdsio_pass_r8tors.F \
 mdsio_rd_rec_rl.F \
 mdsio_rd_rec_rs.F \
 mdsio_read_field.F \
 mdsio_read_meta.F \
 mdsio_read_section.F \
 mdsio_read_tape.F \
 mdsio_readvec_loc.F \
 mdsio_read_whalos.F \
 mdsio_rw_field.F \
 mdsio_rw_slice.F \
 mdsio_seg4torl.F \
 mdsio_seg4tors.F \
 mdsio_seg8torl.F \
 mdsio_seg8tors.F \
 mdsio_segxtorx_2d.F \
 mdsio_write_field.F \
 mdsio_writelocal.F \
 mdsio_write_meta.F \
 mdsio_write_section.F \
 mdsio_write_tape.F \
 mdsio_writevec_loc.F \
 mdsio_write_whalos.F \
 mdsio_wr_metafiles.F \
 mdsio_wr_rec_rl.F \
 mdsio_wr_rec_rs.F \
 mnc_cw_citer.F \
 mnc_cw_cvars.F \
 mnc_cw_init.F \
 mnc_cw_missingvals.F \
 mnc_cw_model_attr.F \
 mnc_cwrapper.F \
 MNC_CW_READWRITE_I.F \
 MNC_CW_READWRITE_RL.F \
 MNC_CW_READWRITE_RS.F \
 mnc_cw_udim.F \
 mnc_cw_write_grid_info.F \
 mnc_dim.F \
 mnc_dump.F \
 mnc_file.F \
 mnc_grid.F \
 mnc_init.F \
 mnc_readparms.F \
 mnc_update_time.F \
 mnc_utils.F \
 mnc_var.F \
 mom_calc_3d_strain.F \
 mom_calc_smag_3d.F \
 mom_diagnostics_init.F \
 mom_init_fixed.F \
 mom_u_implicit_r.F \
 mom_uv_smag_3d.F \
 mom_v_implicit_r.F \
 mom_w_coriolis_nh.F \
 mom_w_metric_nh.F \
 mom_w_sidedrag.F \
 mom_w_smag_3d.F \
 mom_uv_boundary.F \
 mon_advcfl.F \
 mon_advcflw2.F \
 mon_advcflw.F \
 mon_calc_advcfl.F \
 mon_calc_stats_rl.F \
 mon_calc_stats_rs.F \
 mon_init.F \
 monitor_ad.F \
 monitor.F \
 monitor_g.F \
 mon_ke.F \
 mon_out.F \
 mon_printstats_rl.F \
 mon_printstats_rs.F \
 mon_set_iounit.F \
 mon_set_pref.F \
 mon_solution.F \
 mon_stats_latbnd_rl.F \
 mon_stats_rl.F \
 mon_stats_rs.F \
 mon_surfcor.F \
 mon_vort3.F \
 mon_writestats_rl.F \
 mon_writestats_rs.F \
 get_write_global_fld.F \
 read_glvec_rl.F \
 read_glvec_rs.F \
 read_mflds.F \
 rw_get_suffix.F \
 set_write_global_fld.F \
 write_fld_3d_rl.F \
 write_fld_3d_rs.F \
 write_fld_s3d_rl.F \
 write_fld_s3d_rs.F \
 write_fld_xy_rl.F \
 write_fld_xy_rs.F \
 write_fld_xyz_rl.F \
 write_fld_xyz_rs.F \
 write_glvec_rl.F \
 write_glvec_rs.F \
 write_local_rl.F \
 write_local_rs.F \
 write_rec.F \
 shap_filt_diagnostics_init.F \
 shap_filt_init_fixed.F \
 shap_filt_readparms.F \
 shap_filt_tracerold.F \
 shap_filt_u.F \
 shap_filt_v.F \
 timeave_init_fixed.F \
 all_proc_die.F \
 bar2.F \
 bar_check.F \
 barrier.F \
 check_threads.F \
 comm_stats.F \
 cumulsum_z_tile.F \
 diff_phase_multiple.F \
 eeboot.F \
 eeboot_minimal.F \
 eedata_example.F \
 eedie.F \
 eeintro_msg.F \
 eeset_parms.F \
 eewrite_eeenv.F \
 exch0_r4.F \
 exch0_r8.F \
 exch0_rl.F \
 exch0_rs.F \
 exch1_bg_r4_cube.F \
 exch1_bg_r8_cube.F \
 exch1_bg_rl_cube.F \
 exch1_bg_rs_cube.F \
 exch1_r4_cube.F \
 exch1_r4.F \
 exch1_r8_cube.F \
 exch1_r8.F \
 exch1_rl_ad.F \
 exch1_rl_cube_ad.F \
 exch1_rl_cube.F \
 exch1_rl.F \
 exch1_rs_ad.F \
 exch1_rs_cube_ad.F \
 exch1_rs_cube.F \
 exch1_rs.F \
 exch1_uv_r4_cube.F \
 exch1_uv_r8_cube.F \
 exch1_uv_rl_cube.F \
 exch1_uv_rs_cube.F \
 exch1_z_r4_cube.F \
 exch1_z_r8_cube.F \
 exch1_z_rl_cube.F \
 exch1_z_rs_cube.F \
 exch_3d_r4.F \
 exch_3d_r8.F \
 exch_cycle_ebl.F \
 exch_init.F \
 exch_r4_recv_get_x.F \
 exch_r4_recv_get_y.F \
 exch_r4_send_put_x.F \
 exch_r4_send_put_y.F \
 exch_r8_recv_get_x.F \
 exch_r8_recv_get_y.F \
 exch_r8_send_put_x.F \
 exch_r8_send_put_y.F \
 exch_rl_recv_get_x.F \
 exch_rl_recv_get_y.F \
 exch_rl_send_put_x.F \
 exch_rl_send_put_y.F \
 exch_rs_recv_get_x.F \
 exch_rs_recv_get_y.F \
 exch_rs_send_put_x.F \
 exch_rs_send_put_y.F \
 exch_s3d_r4.F \
 exch_s3d_r8.F \
 exch_s3d_rl.F \
 exch_s3d_rs.F \
 exch_sm_3d_r4.F \
 exch_sm_3d_r8.F \
 exch_sm_3d_rs.F \
 exch_uv_3d_r4.F \
 exch_uv_3d_r8.F \
 exch_uv_agrid_3d_r4.F \
 exch_uv_agrid_3d_r8.F \
 exch_uv_bgrid_3d_r4.F \
 exch_uv_bgrid_3d_r8.F \
 exch_uv_bgrid_3d_rl.F \
 exch_uv_bgrid_3d_rs.F \
 exch_uv_dgrid_3d_r4.F \
 exch_uv_dgrid_3d_r8.F \
 exch_uv_xy_r4.F \
 exch_uv_xy_r8.F \
 exch_uv_xyz_r4.F \
 exch_uv_xyz_r8.F \
 exch_xy_r4.F \
 exch_xy_r8.F \
 exch_xyz_r4.F \
 exch_xyz_r8.F \
 exch_z_3d_r4.F \
 exch_z_3d_r8.F \
 exch_z_3d_rl.F \
 exch_z_3d_rs.F \
 fool_the_compiler.F \
 gather_2d_r4.F \
 gather_2d_r8.F \
 gather_2d_wh_r4.F \
 gather_2d_wh_r8.F \
 gather_vec_r4.F \
 gather_vec_r8.F \
 gather_xz.F \
 gather_yz.F \
 global_max.F \
 global_sum.F \
 global_sum_singlecpu.F \
 global_sum_tile.F \
 global_vec_sum.F \
 gsum.F \
 ini_communication_patterns.F \
 ini_procs.F \
 ini_threading_environment.F \
 main.F \
 master_cpu_io.F \
 master_cpu_thread.F \
 mds_byteswapi4.F \
 mds_byteswapr4.F \
 mds_byteswapr8.F \
 mdsfindunit.F \
 mds_flush.F \
 mds_reclen.F \
 memsync.F \
 nml_change_syntax.F \
 nml_set_terminator.F \
 open_copy_data_file.F \
 print.F \
 reset_halo.F \
 scatter_2d_r4.F \
 scatter_2d_r8.F \
 scatter_2d_wh_r4.F \
 scatter_2d_wh_r8.F \
 scatter_vec_r4.F \
 scatter_vec_r8.F \
 scatter_xz.F \
 scatter_yz.F \
 stop_if_error.F \
 timers.F \
 utils.F \
 write_utils.F \
 add_walls2masks.F \
 calc_eddy_stress.F \
 calc_grid_angles.F \
 calc_gw.F \
 calc_oce_mxlayer.F \
 cg2d_ex0.F \
 cg2d.F \
 cg2d_sr.F \
 cg3d_ex0.F \
 cg3d.F \
 check_pickup.F \
 config_check.F \
 config_summary.F \
 diags_oceanic_surf_flux.F \
 do_statevars_diags.F \
 do_statevars_tave.F \
 do_the_model_io.F \
 do_write_pickup.F \
 external_forcing.F \
 find_hyd_press_1d.F \
 gsw_teos10.F \
 ini_cartesian_grid.F \
 ini_cg3d.F \
 ini_cori.F \
 ini_curvilinear_grid.F \
 ini_cylinder_grid.F \
 ini_eos.F \
 ini_global_domain.F \
 ini_grid.F \
 ini_linear_phisurf.F \
 ini_local_grid.F \
 ini_masks_etc.F \
 ini_mnc_vars.F \
 ini_model_io.F \
 ini_nh_vars.F \
 ini_parms.F \
 ini_sigma_hfac.F \
 ini_spherical_polar_grid.F \
 initialise_fixed.F \
 ini_vertical_grid.F \
 load_ref_files.F \
 packages_boot.F \
 packages_check.F \
 packages_error_msg.F \
 packages_init_fixed.F \
 packages_print_msg.F \
 packages_readparms.F \
 packages_unused_msg.F \
 packages_write_pickup.F \
 plot_field.F \
 port_rand.F \
 post_cg3d.F \
 pre_cg3d.F \
 rotate_spherical_polar_grid.F \
 set_defaults.F \
 set_grid_factors.F \
 set_parms.F \
 set_ref_state.F \
 solve_uv_tridiago.F \
 the_model_main.F \
 timestep_wvel.F \
 tracers_iigw_correction.F \
 turnoff_model_io.F \
 write_grid.F \
 write_pickup.F \
 write_state.F
C_SRC_FILES =  \
 mnc_create_dir.c \
 mnc_cw_fsize.c \
 gsl_ieee_env.c \
 ptwrapper.c \
 setdir.c \
 setrlstk.c \
 sigreg.c \
 tim.c \
 timer_stats.c
F90_SRC_FILES =  \
 constants_mod.F90 \
 dargan_bettsmiller_mod.F90 \
 diffusivity_mod.F90 \
 gcm_params_mod.F90 \
 lscale_cond_mod.F90 \
 mixed_layer_mod.F90 \
 monin_obukhov_mod.F90 \
 my25_turb_mod.F90 \
 radiation_mod.F90 \
 shallow_conv_mod.F90 \
 simple_sat_vapor_pres_mod.F90 \
 surface_flux_mod.F90 \
 vert_diff_mod.F90 \
 vert_turb_driver_mod.F90
H_SRC_FILES =  \
 CPP_EEOPTIONS.h \
 CPP_OPTIONS.h \
 DIAGNOSTICS_SIZE.h \
 SIZE.h \
 ATMIDS.h \
 OCNIDS.h \
 ATMCPL.h \
 ATM_CPL_OPTIONS.h \
 CPL_PARAMS.h \
 ATM_PHYS_OPTIONS.h \
 ATM_PHYS_PARAMS.h \
 ATM_PHYS_VARS.h \
 CPLR_SIG.h \
 DEBUG_OPTIONS.h \
 DIAGNOSTICS_CALC.h \
 DIAGNOSTICS.h \
 DIAG_OPTIONS.h \
 DIAGSTATS_REGIONS.h \
 W2_EXCH2_BUFFER.h \
 W2_EXCH2_PARAMS.h \
 W2_EXCH2_SIZE.h \
 W2_EXCH2_TOPOLOGY.h \
 W2_OPTIONS.h \
 gad_ad_check_lev1_dir.h \
 gad_ad_check_lev2_dir.h \
 gad_ad_check_lev3_dir.h \
 gad_ad_check_lev4_dir.h \
 GAD_FLUX_LIMITER.h \
 GAD.h \
 GAD_OPTIONS.h \
 GAD_SOM_VARS.h \
 MDSIO_BUFF_3D.h \
 MDSIO_BUFF_WH.h \
 MDSIO_OPTIONS.h \
 MNC_BUFF.h \
 MNC_COMMON.h \
 MNC_ID_HEADER.h \
 MNC_OPTIONS.h \
 MNC_PARAMS.h \
 MNC_SIZE.h \
 MOM_COMMON_OPTIONS.h \
 MOM_VISC.h \
 MOM_FLUXFORM.h \
 MOM_FLUXFORM_OPTIONS.h \
 MOM_VECINV_OPTIONS.h \
 MONITOR.h \
 MONITOR_OPTIONS.h \
 RW_MFLDS.h \
 RW_OPTIONS.h \
 SHAP_FILT.h \
 SHAP_FILT_OPTIONS.h \
 TIMEAVE_OPTIONS.h \
 TIMEAVE_STATV.h \
 BAR2.h \
 BARRIER.h \
 CPP_EEMACROS.h \
 CUMULSUM.h \
 DEF_IN_MAKEFILE.h \
 EEBUFF_SCPU.h \
 EEPARAMS.h \
 EESUPPORT.h \
 EXCH.h \
 GLOBAL_MAX.h \
 GLOBAL_SUM.h \
 MAIN_PDIRECTIVES1.h \
 MAIN_PDIRECTIVES2.h \
 MPI_INFO.h \
 SIGREG.h \
 CG2D.h \
 CG3D.h \
 DXC_MACROS.h \
 DXF_MACROS.h \
 DXG_MACROS.h \
 DXV_MACROS.h \
 DYC_MACROS.h \
 DYF_MACROS.h \
 DYG_MACROS.h \
 DYNVARS.h \
 DYU_MACROS.h \
 EOS.h \
 FCORI_MACROS.h \
 FFIELDS.h \
 GRID.h \
 GRID_MACROS.h \
 HFACC_MACROS.h \
 HFACS_MACROS.h \
 HFACW_MACROS.h \
 MASKS_MACROS.h \
 MASKW_MACROS.h \
 NH_VARS.h \
 PARAMS.h \
 RA_MACROS.h \
 RAS_MACROS.h \
 RAW_MACROS.h \
 RECIP_DXC_MACROS.h \
 RECIP_DXF_MACROS.h \
 RECIP_DXG_MACROS.h \
 RECIP_DXV_MACROS.h \
 RECIP_DYC_MACROS.h \
 RECIP_DYF_MACROS.h \
 RECIP_DYG_MACROS.h \
 RECIP_DYU_MACROS.h \
 RECIP_HFACC_MACROS.h \
 RECIP_HFACS_MACROS.h \
 RECIP_HFACW_MACROS.h \
 RESTART.h \
 SET_GRID.h \
 SOLVE_FOR_PRESSURE3D.h \
 SOLVE_FOR_PRESSURE.h \
 SURFACE.h \
 TANPHIATU_MACROS.h \
 TANPHIATV_MACROS.h \
 THE_MODEL_COMMON_BLOCKS.h \
 XC_MACROS.h \
 YC_MACROS.h
AD_FLOW_FILES =  \
 debug_ad.flow \
 diagnostics_ad.flow \
 exch2.flow \
 mdsio_ad.flow \
 mnc_ad.flow \
 monitor_ad.flow \
 rw_ad.flow \
 eesupp.flow \
 exch1_ad.flow

F77_PP_SRC_FILES = $(F77_SRC_FILES:.F=.f)
F90_PP_SRC_FILES = $(F90_SRC_FILES:.F90=.f90)
OBJFILES= $(F77_SRC_FILES:.F=.o) $(C_SRC_FILES:.c=.o) $(F90_SRC_FILES:.F90=.o)
FLOWFILES =  $(AD_FLOW_FILES:.flow=.flowdir)

.SUFFIXES:
.SUFFIXES: .o .f .p .F .c .ff90 .f90 .FF90 .F90 .flowdir .flow

all: fwd_exe_target
fwd_exe_target:
	@echo Update AD_CONFIG.h and make $(EXECUTABLE)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Forward version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > ad_config.template
	@cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	$(MAKE) -f $(MAKEFILE) $(EXECUTABLE)

$(EXECUTABLE): $(SPECIAL_FILES) $(F77_SRC_FILES) $(C_SRC_FILES) $(H_SRC_FILES) $(F90_SRC_FILES) $(OBJFILES) $(EMBEDDED_FILES)
	@echo Creating $@ ...
	$(LINK) -o $@ $(FFLAGS) $(FOPTIM) $(OBJFILES) $(LIBS)

depend:
	@$(MAKE) -f $(MAKEFILE) links
	$(MAKEDEPEND) -f $(MAKEFILE) -o .f $(DEFINES) $(INCLUDES) $(CPPINCLUDES) $(F77_SRC_FILES)
	$(TOOLSDIR)/f90mkdepend >> $(MAKEFILE)
	-rm -f makedepend.out

lib: libmitgcmuv.a

libmitgcmuv.a: $(SPECIAL_FILES) $(OBJFILES)
	ar rcv libmitgcmuv.a $(OBJFILES)
	ar d   libmitgcmuv.a main.o

obj: $(OBJFILES)

links: $(F77_SRC_FILES) $(C_SRC_FILES) $(H_SRC_FILES) $(F90_SRC_FILES) $(SPECIAL_FILES)

small_f: $(F77_PP_SRC_FILES) $(F90_PP_SRC_FILES)

# remove most of the files that "make" generates
clean:
	-rm -rf *.p *.f90 *.mod  work.{pc,pcl} *.template
	-rm -rf *.o
	-rm -rf *.f *.flowdir
	-rm -rf *.ff90 $(AD_CLEAN) ad_input*

# remove most of the files that "make" and "make depend" generate
Clean:
	@$(MAKE) -f $(MAKEFILE) clean
	@$(MAKE) -f $(MAKEFILE) cleanlinks
	-rm -f $(SPECIAL_FILES) f90mkdepend.log Makefile.old
	-rm -f taf_command taf_output taf_ad.log taf_ad_flow.log taf_ftl.log

# remove also the executable, files that "genmake2" generates (except Makefile)
#         and output from a run (plus log files from testreport)
CLEAN:
	@$(MAKE) -f $(MAKEFILE) Clean
	-rm -f $(EXECUTABLE) $(EXE_AD) $(EXE_FTL) *.bak
	-rm -f genmake.log genmake_state genmake_*optfile
	-rm -f SIZE.h.mpi genmake.tr_log make.tr_log
	-rm -rf mpi_headers mnc_test_*
	-find $(EXEDIR) -name "*.meta" -exec rm {} \;
	-find $(EXEDIR) -name "*.data" -exec rm {} \;
	-find $(EXEDIR) -name "fort.*" -exec rm {} \;
	-rm -f *.txt STDOUT.* STDERR.* *diagnostics.log *.[0-9][0-9][0-9][0-9].log
	-rm -f datetime costfinal divided.ctrl snapshot* output_adm.txt.diva_*
	-rm -f *_MIT_CE_000.opt0000 costfunction*0000
	-rm -f oad_cp.[0-9][0-9][0-9].?????

makefile:
	$(TOOLSDIR)/genmake2  "-mpi" "-rootdir" "/home/ptuckman/MITgcm" "-optfile" "/home/ptuckman/MITgcm/tools/build_options/linux_amd64_ifort"
cleanlinks:
	-find . -type l -exec rm {} \;

# Special targets (SPECIAL_FILES) which are created by make
PACKAGES_CONFIG.h:
	@echo Creating $@ ...
	@$(TOOLSDIR)/convert_cpp_cmd2defines -bPACKAGES_CONFIG_H "Disabled packages:" $(DISABLED_PACKAGES) " " "Enabled packages:" $(ENABLED_PACKAGES) > $@
AD_CONFIG.h:
	@echo Creating $@ ...
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Default version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > $@
FC_NAMEMANGLE.h:
	@echo Creating $@ ...
	echo "#define FC_NAMEMANGLE(X)  X ## _" > $@

BUILD_INFO.h:
	@echo Creating $@ ...
	-echo "#define THISVER 'checkpoint68a'" > $@
	-echo "#define THISUSER 'ptuckman'" >> $@
	-echo "#define THISDATE 'Tue Oct  5 09:37:03 EDT 2021'" >> $@
	-echo "#define THISHOST 'c082'" >> $@

# The normal chain of rules is (  .F - .f - .o  )

## This nullifies any default implicit rules concerning these two file types:
## %.o : %.F

# C preprocessing and replacing the _d in constants:
CPPCMD = cat $< |  cpp -traditional -P $(DEFINES) $(INCLUDES) | $(TOOLSDIR)/set64bitConst.sh

.F.f:
	$(CPPCMD)  > $@
.f.o:
	$(FC) $(FFLAGS) $(FOPTIM) -c $<
.F.o:
	$(FC) $(FFLAGS) $(FOPTIM) -c $<
.F90.f90:
	$(CPPCMD)  > $@
.FF90.ff90:
	$(CPPCMD)  > $@
.f90.o:
	$(F90C) $(F90FLAGS) $(F90OPTIM) -c $<
.ff90.o:
	cp $< $(basename  $<).f90
	$(F90C) $(F90FLAGS) $(F90OPTIM) -c $(F90FIXEDFORMAT) $(basename  $<).f90
.c.o:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -c $<
.flow.flowdir:
	$(CPPCMD) > $@

# Special exceptions that use the ( .F - .p - .f - .o ) rule-chain
.F.p:
	$(CPPCMD) > $@
.p.f:
	$(KPP) $(KFLAGS1)$@ $(KFLAGS2) $<


TAMC           = tamc
TAF            = staf

TAF_EXTRA      = 
TAMC_EXTRA     = 
LOCAL_MPI_HEADERS    = 

AD_TAMC_FLAGS        = -reverse -admark ad -i4 -r4 -l tamc_ad.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
AD_TAF_FLAGS         = -server fastopt.net -f77 -reverse -i4 -r4 -intrinsic system,flush -l taf_ad.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
FTL_TAMC_FLAGS       = -forward -ftlmark g_ -i4 -r4 -l tamc_ftl.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
FTL_TAF_FLAGS        = -server fastopt.net -f77 -forward -i4 -r4 -intrinsic system,flush -l taf_ftl.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
SVD_TAMC_FLAGS       = -reverse -forward -pure -i4 -r4 -l tamc_svd.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
SVD_TAF_FLAGS        = -server fastopt.net -f77 -reverse -forward -pure -i4 -r4 -intrinsic system,flush -l taf_svd.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'

AD_FILES =  \
 diagnostics_is_on.f \
 exch2_3d_rl.f \
 exch2_3d_rs.f \
 exch2_sm_3d_rl.f \
 exch2_uv_3d_rs.f \
 exch2_uv_3d_rl.f \
 exch2_uv_agrid_3d_rs.f \
 exch2_uv_agrid_3d_rl.f \
 exch2_uv_dgrid_3d_rs.f \
 exch2_uv_dgrid_3d_rl.f \
 gad_advection.f \
 gad_biharm_r.f \
 gad_biharm_x.f \
 gad_biharm_y.f \
 gad_c2_adv_r.f \
 gad_c2_impl_r.f \
 gad_c2_adv_x.f \
 gad_c2_adv_y.f \
 gad_c4_adv_r.f \
 gad_c4_adv_x.f \
 gad_c4_adv_y.f \
 gad_calc_rhs.f \
 gad_del2.f \
 gad_diff_r.f \
 gad_diff_x.f \
 gad_diff_y.f \
 gad_dst2u1_adv_r.f \
 gad_dst2u1_impl_r.f \
 gad_dst2u1_adv_x.f \
 gad_dst2u1_adv_y.f \
 gad_dst3_adv_x.f \
 gad_dst3_adv_y.f \
 gad_dst3_adv_r.f \
 gad_dst3fl_adv_x.f \
 gad_dst3fl_adv_y.f \
 gad_dst3fl_adv_r.f \
 gad_dst3fl_impl_r.f \
 gad_fluxlimit_adv_r.f \
 gad_fluxlimit_impl_r.f \
 gad_fluxlimit_adv_x.f \
 gad_fluxlimit_adv_y.f \
 gad_grad_x.f \
 gad_grad_y.f \
 gad_implicit_r.f \
 gad_init_varia.f \
 gad_os7mp_adv_x.f \
 gad_os7mp_adv_y.f \
 gad_os7mp_adv_r.f \
 gad_read_pickup.f \
 gad_u3_adv_r.f \
 gad_u3c4_impl_r.f \
 gad_u3_adv_x.f \
 gad_u3_adv_y.f \
 gad_som_advect.f \
 gad_som_adv_r.f \
 gad_som_adv_x.f \
 gad_som_adv_y.f \
 gad_som_fill_cs_corner.f \
 gad_som_lim_r.f \
 gad_som_prep_cs_corner.f \
 gad_som_exchanges.f \
 gad_exch_som.f \
 mom_calc_absvort3.f \
 mom_calc_hdiv.f \
 mom_calc_hfacz.f \
 mom_calc_ke.f \
 mom_calc_relvort3.f \
 mom_calc_strain.f \
 mom_calc_tension.f \
 mom_calc_visc.f \
 mom_hdissip.f \
 mom_quasihydrostatic.f \
 mom_u_botdrag_coeff.f \
 mom_u_coriolis_nh.f \
 mom_u_metric_nh.f \
 mom_u_rviscflux.f \
 mom_u_sidedrag.f \
 mom_v_botdrag_coeff.f \
 mom_v_coriolis_nh.f \
 mom_v_metric_nh.f \
 mom_v_rviscflux.f \
 mom_v_sidedrag.f \
 mom_visc_qgl_limit.f \
 mom_visc_qgl_stretch.f \
 mom_calc_rtrans.f \
 mom_fluxform.f \
 mom_u_adv_uu.f \
 mom_u_adv_vu.f \
 mom_u_adv_wu.f \
 mom_u_coriolis.f \
 mom_u_del2u.f \
 mom_u_metric_cylinder.f \
 mom_u_metric_sphere.f \
 mom_u_xviscflux.f \
 mom_u_yviscflux.f \
 mom_v_adv_uv.f \
 mom_v_adv_vv.f \
 mom_v_adv_wv.f \
 mom_v_coriolis.f \
 mom_v_del2v.f \
 mom_v_metric_cylinder.f \
 mom_v_metric_sphere.f \
 mom_v_xviscflux.f \
 mom_v_yviscflux.f \
 mom_vecinv.f \
 mom_vi_coriolis.f \
 mom_vi_del2uv.f \
 mom_vi_hdissip.f \
 mom_vi_u_coriolis.f \
 mom_vi_u_coriolis_c4.f \
 mom_vi_u_grad_ke.f \
 mom_vi_u_vertshear.f \
 mom_vi_v_coriolis.f \
 mom_vi_v_coriolis_c4.f \
 mom_vi_v_grad_ke.f \
 mom_vi_v_vertshear.f \
 read_fld_xyz_rs.f \
 read_fld_xyz_rl.f \
 read_fld_xy_rs.f \
 read_fld_xy_rl.f \
 read_rec.f \
 shap_filt_apply_ts.f \
 shap_filt_apply_uv.f \
 shap_filt_computvort.f \
 shap_filt_relvort3.f \
 shap_filt_tracer_s1.f \
 shap_filt_tracer_s2.f \
 shap_filt_tracer_s4.f \
 shap_filt_uv_s1.f \
 shap_filt_uv_s2.f \
 shap_filt_uv_s2c.f \
 shap_filt_uv_s4.f \
 timeave_cumul_1k1t.f \
 timeave_cumul_1t.f \
 timeave_cumul_1vfc.f \
 timeave_cumul_2v.f \
 timeave_cumul_2vfc.f \
 timeave_cumulate.f \
 timeave_cumul_dif_1t.f \
 timeave_norma_2v.f \
 timeave_normalize.f \
 timeave_reset.f \
 timeave_statvars.f \
 timeave_statv_write.f \
 timeave_surf_flux.f \
 different_multiple.f \
 fill_cs_corner_ag_rl.f \
 fill_cs_corner_tr_rl.f \
 fill_cs_corner_uv_rs.f \
 fill_cs_corner_uv_rl.f \
 get_periodic_interval.f \
 lef_zero.f \
 exch_sm_3d_rl.f \
 exch_3d_rs.f \
 exch_3d_rl.f \
 exch_xy_rl.f \
 exch_xy_rs.f \
 exch_xyz_rl.f \
 exch_xyz_rs.f \
 exch_uv_3d_rs.f \
 exch_uv_3d_rl.f \
 exch_uv_xy_rs.f \
 exch_uv_xy_rl.f \
 exch_uv_xyz_rs.f \
 exch_uv_xyz_rl.f \
 exch_uv_agrid_3d_rs.f \
 exch_uv_agrid_3d_rl.f \
 exch_uv_dgrid_3d_rs.f \
 exch_uv_dgrid_3d_rl.f \
 adams_bashforth2.f \
 adams_bashforth3.f \
 apply_forcing.f \
 calc_3d_diffusivity.f \
 calc_adv_flow.f \
 calc_div_ghat.f \
 calc_grad_phi_fv.f \
 calc_grad_phi_hyd.f \
 calc_grad_phi_surf.f \
 calc_ivdc.f \
 calc_phi_hyd.f \
 calc_r_star.f \
 calc_surf_dr.f \
 calc_viscosity.f \
 calc_wsurf_tr.f \
 cg2d_nsa.f \
 convective_adjustment.f \
 convective_adjustment_ini.f \
 convective_weights.f \
 convectively_mixtracer.f \
 correction_step.f \
 cycle_ab_tracer.f \
 cycle_tracer.f \
 diags_phi_hyd.f \
 diags_phi_rlow.f \
 diags_rho.f \
 diags_sound_speed.f \
 do_atmospheric_phys.f \
 do_fields_blocking_exchanges.f \
 do_oceanic_phys.f \
 do_stagger_fields_exchanges.f \
 dynamics.f \
 external_fields_load.f \
 external_forcing_surf.f \
 forcing_surf_relax.f \
 find_alpha.f \
 find_rho.f \
 forward_step.f \
 freesurf_rescale_g.f \
 freeze_surface.f \
 grad_sigma.f \
 impldiff.f \
 ini_cg2d.f \
 ini_depths.f \
 ini_ffields.f \
 ini_fields.f \
 ini_forcing.f \
 ini_mixing.f \
 ini_nh_fields.f \
 ini_nlfs_vars.f \
 ini_p_ground.f \
 ini_pressure.f \
 ini_psurf.f \
 ini_salt.f \
 ini_theta.f \
 ini_dynvars.f \
 ini_vel.f \
 initialise_varia.f \
 integrate_for_w.f \
 integr_continuity.f \
 load_fields_driver.f \
 load_grid_spacing.f \
 main_do_loop.f \
 momentum_correction_step.f \
 packages_init_variables.f \
 pressure_for_eos.f \
 read_pickup.f \
 remove_mean.f \
 reset_nlfs_vars.f \
 rotate_uv2en.f \
 salt_integrate.f \
 temp_integrate.f \
 seawater.f \
 solve_for_pressure.f \
 state_summary.f \
 solve_pentadiagonal.f \
 solve_tridiagonal.f \
 taueddy_init_varia.f \
 taueddy_tendency_apply.f \
 timestep.f \
 the_main_loop.f \
 thermodynamics.f \
 timestep_tracer.f \
 tracers_correction_step.f \
 update_cg2d.f \
 update_etah.f \
 update_etaws.f \
 update_masks_etc.f \
 update_r_star.f \
 update_sigma.f \
 update_surf_dr.f \
 swfrac.f

# ... AD ...
adall: ad_exe_target
adtaf: ad_taf_output.f
adtamc: ad_tamc_output.f

ad_exe_target:
	@echo Update AD_CONFIG.h and make $(EXE_AD)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Adjoint version" -bAD_CONFIG_H -DALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > ad_config.template
	@cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	$(MAKE) -f $(MAKEFILE) $(EXE_AD)

ad_input_code.f: $(AD_FILES) $(AD_FLOW_FILES)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Adjoint version" -bAD_CONFIG_H -DALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > ad_config.template
	cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	@$(MAKE) -f $(MAKEFILE) $(F77_PP_SRC_FILES)
	@$(MAKE) -f $(MAKEFILE) $(FLOWFILES)
	cat $(FLOWFILES) $(AD_FILES) | sed -f $(TOOLSDIR)/remove_comments_sed > ad_input_code.f

adtafonly:
	$(TAF) $(AD_TAF_FLAGS) $(TAF_EXTRA) ad_input_code.f
	ls -l ad_input_code_ad.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_taf_output.f

# ... send 1 file to TAF ...
ad_taf_output.f: ad_input_code.f
	@-rm -f ad_input_code_ad.f ; echo ''
	$(TAF) $(AD_TAF_FLAGS) $(TAF_EXTRA) ad_input_code.f
	ls -l ad_input_code_ad.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_taf_output.f

$(EXE_AD): $(SPECIAL_FILES) $(H_SRC_FILES) ad_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(EMBEDDED_FILES)
	$(LINK) -o ${EXE_AD} $(FFLAGS) $(FOPTIM) ad_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(LIBS)

adobj: ad_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o)

adonlyfwd:
	patch < $(TOOLSDIR)/ad_taf_output.f.onlyfwd.diff

adtrick:
	patch < $(TOOLSDIR)/ad_taf_output.f.adtrick.diff

ad_tamc_output.f: ad_input_code.f
	$(TAMC) $(AD_TAMC_FLAGS) $(TAMC_EXTRA) ad_input_code.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_tamc_output.f

ad_tamc: ad_tamc_output.o $(OBJFILES)
	$(LINK) -o mitgcmuv_ad $(FFLAGS) $(FOPTIM) $(OBJFILES) ad_tamc_output.o $(LIBS)

# ... FTL ...
ftlall: ftl_exe_target
ftltaf: ftl_taf_output.f
ftltamc: ftl_tamc_output.f

ftl_exe_target:
	@echo Update AD_CONFIG.h and make $(EXE_FTL)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "TangLin version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN > ad_config.template
	@cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	$(MAKE) -f $(MAKEFILE) $(EXE_FTL)

ftl_input_code.f: $(AD_FILES)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "TangLin version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN > ad_config.template
	cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	@$(MAKE) -f $(MAKEFILE) $(F77_PP_SRC_FILES)
	@$(MAKE) -f $(MAKEFILE) $(AD_FLOW_FILES)
	cat $(AD_FLOW_FILES) $(AD_FILES) | sed -f $(TOOLSDIR)/remove_comments_sed > ftl_input_code.f

ftltafonly:
	$(TAF) $(FTL_TAF_FLAGS) $(TAF_EXTRA) ftl_input_code.f
	ls -l ftl_input_code_tl.f
	cat ftl_input_code_tl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_taf_output.f

# ... send 1 file to TAF ...
ftl_taf_output.f: ftl_input_code.f
	@-rm -f ftl_input_code_tl.f ; echo ''
	$(TAF) $(FTL_TAF_FLAGS) $(TAF_EXTRA) ftl_input_code.f
	ls -l ftl_input_code_tl.f
	cat ftl_input_code_tl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_taf_output.f

$(EXE_FTL): $(SPECIAL_FILES) $(H_SRC_FILES) ftl_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(EMBEDDED_FILES)
	$(LINK) -o ${EXE_FTL} $(FFLAGS) $(FOPTIM) ftl_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(LIBS)

ftl_tamc_output.f: ftl_input_code.f
	$(TAMC) $(FTL_TAMC_FLAGS) $(TAMC_EXTRA) ftl_input_code.f
	cat ftl_input_code_ftl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_tamc_output.f

ftl_tamc: ftl_tamc_output.o $(OBJFILES)
	$(LINK) -o mitgcmuv_ftl $(FFLAGS) $(FOPTIM) $(OBJFILES) ftl_tamc_output.o $(LIBS)

# ... SVD ...
svdtaf: ad_taf_output.f ftl_taf_output.f
	@echo "--->>> Only ran TAF to generate SVD code!    <<<---"
	@echo "--->>> Do make svdall afterwards to compile. <<<---"
svdall: svd_touch svd_taf

svd_taf: $(OBJFILES)
	$(LINK) -o mitgcmuv_svd $(FFLAGS) $(FOPTIM) $(OBJFILES) ad_taf_output.o ftl_taf_output.o $(LIBS)

	@echo "--->>> Only COMPILE svd code! <<<---"
	@echo "--->>> Assumes you previously <<<---"
	@echo "--->>> did make svdtaf        <<<---"

svd_touch:
	@echo "--->>> Only COMPILE svd code! <<<---"
	@echo "--->>> Assumes you previously <<<---"
	@echo "--->>> did make svdtaf        <<<---"
	touch ad_taf_output.f ftl_taf_output.f
	$(FC) $(FFLAGS) $(FOPTIM) -c ad_taf_output.f
	$(FC) $(FFLAGS) $(FOPTIM) -c ftl_taf_output.f
	@$(TOOLSDIR)/convert_cpp_cmd2defines "SVD version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN > ad_config.template
	cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template

# This section creates symbolic links


#  These files are linked from ../../code_atm ( aka ../../code_atm )
 atm_apply_import.F atm_get_atmconfig.F CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS_SIZE.h SIZE.h :
	if [ ! -L $@ ]; then $(LN) ../../code_atm/$@ $@; fi

#  These files are linked from ../../shared_code ( aka ../../shared_code )
 ATMIDS.h OCNIDS.h :
	if [ ! -L $@ ]; then $(LN) ../../shared_code/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/atm_compon_interf ( aka /home/ptuckman/MITgcm/pkg/atm_compon_interf )
 atm_check_cplconfig.F ATMCPL.h ATM_CPL_OPTIONS.h atm_cpl_read_pickup.F atm_export_atmconfig.F atm_export_fields.F atm_export_fld.F atm_import_fields.F atm_import_ocnconfig.F atm_store_aim_fields.F atm_store_aim_wndstr.F atm_store_dynvars.F atm_store_land.F atm_store_my_data.F atm_store_surfflux.F atm_store_thsice.F cpl_diagnostics_fill.F cpl_diagnostics_init.F cpl_exch_configs.F cpl_export_import_data.F cpl_import_cplparms.F cpl_init.F cpl_init_fixed.F cpl_ini_vars.F cpl_output.F CPL_PARAMS.h cpl_readparms.F cpl_register.F cpl_write_pickup.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/atm_compon_interf/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/atm_phys ( aka /home/ptuckman/MITgcm/pkg/atm_phys )
 atm_phys_check.F atm_phys_diagnostics_init.F atm_phys_driver.F atm_phys_dyn2phys.F atm_phys_init_fixed.F atm_phys_init_varia.F ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h atm_phys_readparms.F atm_phys_read_pickup.F atm_phys_tendency_apply.F ATM_PHYS_VARS.h atm_phys_write_pickup.F constants_mod.F90 dargan_bettsmiller_mod.F90 diffusivity_mod.F90 gcm_params_mod.F90 lscale_cond_mod.F90 mixed_layer_mod.F90 monin_obukhov_mod.F90 my25_turb_mod.F90 radiation_mod.F90 shallow_conv_mod.F90 simple_sat_vapor_pres_mod.F90 surface_flux_mod.F90 vert_diff_mod.F90 vert_turb_driver_mod.F90 :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/atm_phys/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/compon_communic ( aka /home/ptuckman/MITgcm/pkg/compon_communic )
 comprecv_i4vec.F comprecv_r4.F comprecv_r4tiles.F comprecv_r8.F comprecv_r8tiles.F compsend_i4vec.F compsend_r4.F compsend_r4tiles.F compsend_r8.F compsend_r8tiles.F couprecv_i4vec.F couprecv_r4.F couprecv_r4tiles.F couprecv_r8.F couprecv_r8tiles.F coupsend_i4vec.F coupsend_r4.F coupsend_r4tiles.F coupsend_r8.F coupsend_r8tiles.F CPLR_SIG.h generate_tag.F mitcomponent_init.F mitcomponent_register.F mitcomponent_tile_register.F mitcoupler_init.F mitcoupler_register.F mitcoupler_tile_register.F mitcplr_all_check.F mitcplr_char2dbl.F mitcplr_char2int.F mitcplr_char2real.F mitcplr_dbl2char.F mitcplr_init1.F mitcplr_init2a.F mitcplr_init2b.F mitcplr_initcomp.F mitcplr_int2char.F mitcplr_match_comp.F mitcplr_real2char.F mitcplr_sortranks.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/compon_communic/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/debug ( aka /home/ptuckman/MITgcm/pkg/debug )
 chksum_tiled.F debug_call.F debug_cs_corner_uv.F debug_enter.F debug_fld_stats_rl.F debug_fld_stats_rs.F debug_leave.F debug_msg.F DEBUG_OPTIONS.h debug_stats_rl.F debug_stats_rs.F fill_in_corners_rl.F write_fullarray_rl.F write_fullarray_rs.F debug_ad.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/debug/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/diagnostics ( aka /home/ptuckman/MITgcm/pkg/diagnostics )
 diag_calc_psivel.F diag_cg2d.F diagnostics_addtolist.F DIAGNOSTICS_CALC.h diagnostics_calc_phivel.F diagnostics_check.F diagnostics_clear.F diagnostics_fill.F diagnostics_fill_field.F diagnostics_fill_rs.F diagnostics_fill_state.F diagnostics_fract_fill.F DIAGNOSTICS.h diagnostics_ini_io.F diagnostics_init_early.F diagnostics_init_fixed.F diagnostics_init_varia.F diagnostics_interp_p2p.F diagnostics_interp_vert.F diagnostics_is_on.F diagnostics_list_check.F diagnostics_main_init.F diagnostics_mnc_out.F diagnostics_out.F diagnostics_readparms.F diagnostics_read_pickup.F diagnostics_scale_fill.F diagnostics_scale_fill_rs.F diagnostics_set_calc.F diagnostics_setdiag.F diagnostics_set_levels.F diagnostics_set_pointers.F diagnostics_status_error.F diagnostics_sum_levels.F diagnostics_summary.F diagnostics_switch_onoff.F diagnostics_utils.F diagnostics_write_adj.F diagnostics_write.F diagnostics_write_pickup.F DIAG_OPTIONS.h diagstats_ascii_out.F diagstats_calc.F diagstats_clear.F diagstats_close_io.F diagstats_fill.F diagstats_global.F diagstats_ini_io.F diagstats_local.F diagstats_mnc_out.F diagstats_others_calc.F diagstats_output.F DIAGSTATS_REGIONS.h diagstats_setdiag.F diagstats_set_pointers.F diagstats_set_regions.F diag_vegtile_fill.F diagnostics_ad.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/diagnostics/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/exch2 ( aka /home/ptuckman/MITgcm/pkg/exch2 )
 exch2_3d_r4.F exch2_3d_r8.F exch2_3d_rl.F exch2_3d_rs.F exch2_ad_get_r41.F exch2_ad_get_r42.F exch2_ad_get_r81.F exch2_ad_get_r82.F exch2_ad_get_rl1.F exch2_ad_get_rl2.F exch2_ad_get_rs1.F exch2_ad_get_rs2.F exch2_ad_put_r41.F exch2_ad_put_r42.F exch2_ad_put_r81.F exch2_ad_put_r82.F exch2_ad_put_rl1.F exch2_ad_put_rl2.F exch2_ad_put_rs1.F exch2_ad_put_rs2.F exch2_check_depths.F exch2_get_r41.F exch2_get_r42.F exch2_get_r81.F exch2_get_r82.F exch2_get_rl1.F exch2_get_rl2.F exch2_get_rs1.F exch2_get_rs2.F exch2_get_scal_bounds.F exch2_get_uv_bounds.F exch2_put_r41.F exch2_put_r42.F exch2_put_r81.F exch2_put_r82.F exch2_put_rl1.F exch2_put_rl2.F exch2_put_rs1.F exch2_put_rs2.F exch2_r41_cube_ad.F exch2_r41_cube.F exch2_r42_cube_ad.F exch2_r42_cube.F exch2_r81_cube_ad.F exch2_r81_cube.F exch2_r82_cube_ad.F exch2_r82_cube.F exch2_recv_r41.F exch2_recv_r42.F exch2_recv_r81.F exch2_recv_r82.F exch2_recv_rl1.F exch2_recv_rl2.F exch2_recv_rs1.F exch2_recv_rs2.F exch2_rl1_cube_ad.F exch2_rl1_cube.F exch2_rl2_cube_ad.F exch2_rl2_cube.F exch2_rs1_cube_ad.F exch2_rs1_cube.F exch2_rs2_cube_ad.F exch2_rs2_cube.F exch2_s3d_r4.F exch2_s3d_r8.F exch2_s3d_rl.F exch2_s3d_rs.F exch2_send_r41.F exch2_send_r42.F exch2_send_r81.F exch2_send_r82.F exch2_send_rl1.F exch2_send_rl2.F exch2_send_rs1.F exch2_send_rs2.F exch2_sm_3d_r4.F exch2_sm_3d_r8.F exch2_sm_3d_rl.F exch2_sm_3d_rs.F exch2_uv_3d_r4.F exch2_uv_3d_r8.F exch2_uv_3d_rl.F exch2_uv_3d_rs.F exch2_uv_agrid_3d_r4.F exch2_uv_agrid_3d_r8.F exch2_uv_agrid_3d_rl.F exch2_uv_agrid_3d_rs.F exch2_uv_bgrid_3d_r4.F exch2_uv_bgrid_3d_r8.F exch2_uv_bgrid_3d_rl.F exch2_uv_bgrid_3d_rs.F exch2_uv_cgrid_3d_r4.F exch2_uv_cgrid_3d_r8.F exch2_uv_cgrid_3d_rl.F exch2_uv_cgrid_3d_rs.F exch2_uv_dgrid_3d_r4.F exch2_uv_dgrid_3d_r8.F exch2_uv_dgrid_3d_rl.F exch2_uv_dgrid_3d_rs.F exch2_z_3d_r4.F exch2_z_3d_r8.F exch2_z_3d_rl.F exch2_z_3d_rs.F w2_cumulsum_z_tile.F w2_e2setup.F w2_eeboot.F W2_EXCH2_BUFFER.h W2_EXCH2_PARAMS.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h w2_map_procs.F W2_OPTIONS.h w2_print_comm_sequence.F w2_print_e2setup.F w2_readparms.F w2_set_cs6_facets.F w2_set_f2f_index.F w2_set_gen_facets.F w2_set_map_cumsum.F w2_set_map_tiles.F w2_set_myown_facets.F w2_set_single_facet.F w2_set_tile2tiles.F exch2.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/exch2/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/generic_advdiff ( aka /home/ptuckman/MITgcm/pkg/generic_advdiff )
 gad_ad_check_lev1_dir.h gad_ad_check_lev2_dir.h gad_ad_check_lev3_dir.h gad_ad_check_lev4_dir.h gad_advection.F gad_advscheme.F gad_biharm_r.F gad_biharm_x.F gad_biharm_y.F gad_c2_adv_r.F gad_c2_adv_x.F gad_c2_adv_y.F gad_c2_impl_r.F gad_c4_adv_r.F gad_c4_adv_x.F gad_c4_adv_y.F gad_calc_rhs.F gad_check.F gad_del2.F gad_diagnostics_init.F gad_diagnostics_state.F gad_diff_r.F gad_diff_x.F gad_diff_y.F gad_dst2u1_adv_r.F gad_dst2u1_adv_x.F gad_dst2u1_adv_y.F gad_dst2u1_impl_r.F gad_dst3_adv_r.F gad_dst3_adv_x.F gad_dst3_adv_y.F gad_dst3fl_adv_r.F gad_dst3fl_adv_x.F gad_dst3fl_adv_y.F gad_dst3fl_impl_r.F gad_exch_som.F gad_fluxlimit_adv_r.F gad_fluxlimit_adv_x.F gad_fluxlimit_adv_y.F GAD_FLUX_LIMITER.h gad_fluxlimit_impl_r.F gad_grad_x.F gad_grad_y.F GAD.h gad_implicit_r.F gad_init_fixed.F gad_init_varia.F GAD_OPTIONS.h gad_os7mp_adv_r.F gad_os7mp_adv_x.F gad_os7mp_adv_y.F gad_osc_hat_r.F gad_osc_hat_x.F gad_osc_hat_y.F gad_osc_mul_r.F gad_osc_mul_x.F gad_osc_mul_y.F gad_plm_fun.F gad_ppm_adv_r.F gad_ppm_adv_x.F gad_ppm_adv_y.F gad_ppm_flx_r.F gad_ppm_flx_x.F gad_ppm_flx_y.F gad_ppm_fun.F gad_ppm_hat_r.F gad_ppm_hat_x.F gad_ppm_hat_y.F gad_ppm_p3e_r.F gad_ppm_p3e_x.F gad_ppm_p3e_y.F gad_pqm_adv_r.F gad_pqm_adv_x.F gad_pqm_adv_y.F gad_pqm_flx_r.F gad_pqm_flx_x.F gad_pqm_flx_y.F gad_pqm_fun.F gad_pqm_hat_r.F gad_pqm_hat_x.F gad_pqm_hat_y.F gad_pqm_p5e_r.F gad_pqm_p5e_x.F gad_pqm_p5e_y.F gad_read_pickup.F gad_som_advect.F gad_som_adv_r.F gad_som_adv_x.F gad_som_adv_y.F gad_som_exchanges.F gad_som_fill_cs_corner.F gad_som_lim_r.F gad_som_prep_cs_corner.F GAD_SOM_VARS.h gad_u3_adv_r.F gad_u3_adv_x.F gad_u3_adv_y.F gad_u3c4_impl_r.F gad_write_pickup.F salt_fill.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/generic_advdiff/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/mdsio ( aka /home/ptuckman/MITgcm/pkg/mdsio )
 MDSIO_BUFF_3D.h mdsio_buffertorl.F mdsio_buffertors.F MDSIO_BUFF_WH.h mdsio_check4file.F mdsio_facef_read.F mdsio_gl.F mdsio_gl_slice.F MDSIO_OPTIONS.h mdsio_pass_r4torl.F mdsio_pass_r4tors.F mdsio_pass_r8torl.F mdsio_pass_r8tors.F mdsio_rd_rec_rl.F mdsio_rd_rec_rs.F mdsio_read_field.F mdsio_read_meta.F mdsio_read_section.F mdsio_read_tape.F mdsio_readvec_loc.F mdsio_read_whalos.F mdsio_rw_field.F mdsio_rw_slice.F mdsio_seg4torl.F mdsio_seg4tors.F mdsio_seg8torl.F mdsio_seg8tors.F mdsio_segxtorx_2d.F mdsio_write_field.F mdsio_writelocal.F mdsio_write_meta.F mdsio_write_section.F mdsio_write_tape.F mdsio_writevec_loc.F mdsio_write_whalos.F mdsio_wr_metafiles.F mdsio_wr_rec_rl.F mdsio_wr_rec_rs.F mdsio_ad.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/mdsio/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/mnc ( aka /home/ptuckman/MITgcm/pkg/mnc )
 MNC_BUFF.h MNC_COMMON.h mnc_create_dir.c mnc_cw_citer.F mnc_cw_cvars.F mnc_cw_fsize.c mnc_cw_init.F mnc_cw_missingvals.F mnc_cw_model_attr.F mnc_cwrapper.F MNC_CW_READWRITE_I.F MNC_CW_READWRITE_RL.F MNC_CW_READWRITE_RS.F mnc_cw_udim.F mnc_cw_write_grid_info.F mnc_dim.F mnc_dump.F mnc_file.F mnc_grid.F MNC_ID_HEADER.h mnc_init.F MNC_OPTIONS.h MNC_PARAMS.h mnc_readparms.F MNC_SIZE.h mnc_update_time.F mnc_utils.F mnc_var.F mnc_ad.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/mnc/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/mom_common ( aka /home/ptuckman/MITgcm/pkg/mom_common )
 mom_calc_3d_strain.F mom_calc_absvort3.F mom_calc_hdiv.F mom_calc_hfacz.F mom_calc_ke.F mom_calc_relvort3.F mom_calc_smag_3d.F mom_calc_strain.F mom_calc_tension.F mom_calc_visc.F MOM_COMMON_OPTIONS.h mom_diagnostics_init.F mom_hdissip.F mom_init_fixed.F mom_quasihydrostatic.F mom_u_botdrag_coeff.F mom_u_coriolis_nh.F mom_u_implicit_r.F mom_u_metric_nh.F mom_u_rviscflux.F mom_u_sidedrag.F mom_uv_smag_3d.F mom_v_botdrag_coeff.F mom_v_coriolis_nh.F mom_v_implicit_r.F MOM_VISC.h mom_visc_qgl_limit.F mom_visc_qgl_stretch.F mom_v_metric_nh.F mom_v_rviscflux.F mom_v_sidedrag.F mom_w_coriolis_nh.F mom_w_metric_nh.F mom_w_sidedrag.F mom_w_smag_3d.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/mom_common/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/mom_fluxform ( aka /home/ptuckman/MITgcm/pkg/mom_fluxform )
 mom_calc_rtrans.F mom_fluxform.F MOM_FLUXFORM.h MOM_FLUXFORM_OPTIONS.h mom_u_adv_uu.F mom_u_adv_vu.F mom_u_adv_wu.F mom_u_coriolis.F mom_u_del2u.F mom_u_metric_cylinder.F mom_u_metric_sphere.F mom_uv_boundary.F mom_u_xviscflux.F mom_u_yviscflux.F mom_v_adv_uv.F mom_v_adv_vv.F mom_v_adv_wv.F mom_v_coriolis.F mom_v_del2v.F mom_v_metric_cylinder.F mom_v_metric_sphere.F mom_v_xviscflux.F mom_v_yviscflux.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/mom_fluxform/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/mom_vecinv ( aka /home/ptuckman/MITgcm/pkg/mom_vecinv )
 mom_vecinv.F MOM_VECINV_OPTIONS.h mom_vi_coriolis.F mom_vi_del2uv.F mom_vi_hdissip.F mom_vi_u_coriolis_c4.F mom_vi_u_coriolis.F mom_vi_u_grad_ke.F mom_vi_u_vertshear.F mom_vi_v_coriolis_c4.F mom_vi_v_coriolis.F mom_vi_v_grad_ke.F mom_vi_v_vertshear.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/mom_vecinv/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/monitor ( aka /home/ptuckman/MITgcm/pkg/monitor )
 mon_advcfl.F mon_advcflw2.F mon_advcflw.F mon_calc_advcfl.F mon_calc_stats_rl.F mon_calc_stats_rs.F mon_init.F monitor_ad.F monitor.F monitor_g.F MONITOR.h MONITOR_OPTIONS.h mon_ke.F mon_out.F mon_printstats_rl.F mon_printstats_rs.F mon_set_iounit.F mon_set_pref.F mon_solution.F mon_stats_latbnd_rl.F mon_stats_rl.F mon_stats_rs.F mon_surfcor.F mon_vort3.F mon_writestats_rl.F mon_writestats_rs.F monitor_ad.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/monitor/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/rw ( aka /home/ptuckman/MITgcm/pkg/rw )
 get_write_global_fld.F read_fld_xy_rl.F read_fld_xy_rs.F read_fld_xyz_rl.F read_fld_xyz_rs.F read_glvec_rl.F read_glvec_rs.F read_mflds.F read_rec.F rw_get_suffix.F RW_MFLDS.h RW_OPTIONS.h set_write_global_fld.F write_fld_3d_rl.F write_fld_3d_rs.F write_fld_s3d_rl.F write_fld_s3d_rs.F write_fld_xy_rl.F write_fld_xy_rs.F write_fld_xyz_rl.F write_fld_xyz_rs.F write_glvec_rl.F write_glvec_rs.F write_local_rl.F write_local_rs.F write_rec.F rw_ad.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/rw/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/shap_filt ( aka /home/ptuckman/MITgcm/pkg/shap_filt )
 shap_filt_apply_ts.F shap_filt_apply_uv.F shap_filt_computvort.F shap_filt_diagnostics_init.F SHAP_FILT.h shap_filt_init_fixed.F SHAP_FILT_OPTIONS.h shap_filt_readparms.F shap_filt_relvort3.F shap_filt_tracerold.F shap_filt_tracer_s1.F shap_filt_tracer_s2.F shap_filt_tracer_s4.F shap_filt_u.F shap_filt_uv_s1.F shap_filt_uv_s2c.F shap_filt_uv_s2.F shap_filt_uv_s4.F shap_filt_v.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/shap_filt/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/timeave ( aka /home/ptuckman/MITgcm/pkg/timeave )
 timeave_cumul_1k1t.F timeave_cumul_1t.F timeave_cumul_1vfc.F timeave_cumul_2v.F timeave_cumul_2vfc.F timeave_cumulate.F timeave_cumul_dif_1t.F timeave_init_fixed.F timeave_norma_2v.F timeave_normalize.F TIMEAVE_OPTIONS.h timeave_reset.F timeave_statvars.F TIMEAVE_STATV.h timeave_statv_write.F timeave_surf_flux.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/timeave/$@ $@; fi

#  These files are linked from $(ROOTDIR)/eesupp/src ( aka /home/ptuckman/MITgcm/eesupp/src )
 all_proc_die.F bar2.F bar_check.F barrier.F check_threads.F comm_stats.F cumulsum_z_tile.F different_multiple.F diff_phase_multiple.F eeboot.F eeboot_minimal.F eedata_example.F eedie.F eeintro_msg.F eeset_parms.F eewrite_eeenv.F exch0_r4.F exch0_r8.F exch0_rl.F exch0_rs.F exch1_bg_r4_cube.F exch1_bg_r8_cube.F exch1_bg_rl_cube.F exch1_bg_rs_cube.F exch1_r4_cube.F exch1_r4.F exch1_r8_cube.F exch1_r8.F exch1_rl_ad.F exch1_rl_cube_ad.F exch1_rl_cube.F exch1_rl.F exch1_rs_ad.F exch1_rs_cube_ad.F exch1_rs_cube.F exch1_rs.F exch1_uv_r4_cube.F exch1_uv_r8_cube.F exch1_uv_rl_cube.F exch1_uv_rs_cube.F exch1_z_r4_cube.F exch1_z_r8_cube.F exch1_z_rl_cube.F exch1_z_rs_cube.F exch_3d_r4.F exch_3d_r8.F exch_3d_rl.F exch_3d_rs.F exch_cycle_ebl.F exch_init.F exch_r4_recv_get_x.F exch_r4_recv_get_y.F exch_r4_send_put_x.F exch_r4_send_put_y.F exch_r8_recv_get_x.F exch_r8_recv_get_y.F exch_r8_send_put_x.F exch_r8_send_put_y.F exch_rl_recv_get_x.F exch_rl_recv_get_y.F exch_rl_send_put_x.F exch_rl_send_put_y.F exch_rs_recv_get_x.F exch_rs_recv_get_y.F exch_rs_send_put_x.F exch_rs_send_put_y.F exch_s3d_r4.F exch_s3d_r8.F exch_s3d_rl.F exch_s3d_rs.F exch_sm_3d_r4.F exch_sm_3d_r8.F exch_sm_3d_rl.F exch_sm_3d_rs.F exch_uv_3d_r4.F exch_uv_3d_r8.F exch_uv_3d_rl.F exch_uv_3d_rs.F exch_uv_agrid_3d_r4.F exch_uv_agrid_3d_r8.F exch_uv_agrid_3d_rl.F exch_uv_agrid_3d_rs.F exch_uv_bgrid_3d_r4.F exch_uv_bgrid_3d_r8.F exch_uv_bgrid_3d_rl.F exch_uv_bgrid_3d_rs.F exch_uv_dgrid_3d_r4.F exch_uv_dgrid_3d_r8.F exch_uv_dgrid_3d_rl.F exch_uv_dgrid_3d_rs.F exch_uv_xy_r4.F exch_uv_xy_r8.F exch_uv_xy_rl.F exch_uv_xy_rs.F exch_uv_xyz_r4.F exch_uv_xyz_r8.F exch_uv_xyz_rl.F exch_uv_xyz_rs.F exch_xy_r4.F exch_xy_r8.F exch_xy_rl.F exch_xy_rs.F exch_xyz_r4.F exch_xyz_r8.F exch_xyz_rl.F exch_xyz_rs.F exch_z_3d_r4.F exch_z_3d_r8.F exch_z_3d_rl.F exch_z_3d_rs.F fill_cs_corner_ag_rl.F fill_cs_corner_tr_rl.F fill_cs_corner_uv_rl.F fill_cs_corner_uv_rs.F fool_the_compiler.F gather_2d_r4.F gather_2d_r8.F gather_2d_wh_r4.F gather_2d_wh_r8.F gather_vec_r4.F gather_vec_r8.F gather_xz.F gather_yz.F get_periodic_interval.F global_max.F global_sum.F global_sum_singlecpu.F global_sum_tile.F global_vec_sum.F gsl_ieee_env.c gsum.F ini_communication_patterns.F ini_procs.F ini_threading_environment.F lef_zero.F main.F master_cpu_io.F master_cpu_thread.F mds_byteswapi4.F mds_byteswapr4.F mds_byteswapr8.F mdsfindunit.F mds_flush.F mds_reclen.F memsync.F nml_change_syntax.F nml_set_terminator.F open_copy_data_file.F print.F ptwrapper.c reset_halo.F scatter_2d_r4.F scatter_2d_r8.F scatter_2d_wh_r4.F scatter_2d_wh_r8.F scatter_vec_r4.F scatter_vec_r8.F scatter_xz.F scatter_yz.F setdir.c setrlstk.c sigreg.c stop_if_error.F tim.c timers.F timer_stats.c utils.F write_utils.F eesupp.flow exch1_ad.flow :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/eesupp/src/$@ $@; fi

#  These files are linked from $(ROOTDIR)/model/src ( aka /home/ptuckman/MITgcm/model/src )
 adams_bashforth2.F adams_bashforth3.F add_walls2masks.F apply_forcing.F calc_3d_diffusivity.F calc_adv_flow.F calc_div_ghat.F calc_eddy_stress.F calc_grad_phi_fv.F calc_grad_phi_hyd.F calc_grad_phi_surf.F calc_grid_angles.F calc_gw.F calc_ivdc.F calc_oce_mxlayer.F calc_phi_hyd.F calc_r_star.F calc_surf_dr.F calc_viscosity.F calc_wsurf_tr.F cg2d_ex0.F cg2d.F cg2d_nsa.F cg2d_sr.F cg3d_ex0.F cg3d.F check_pickup.F config_check.F config_summary.F convective_adjustment.F convective_adjustment_ini.F convectively_mixtracer.F convective_weights.F correction_step.F cycle_ab_tracer.F cycle_tracer.F diags_oceanic_surf_flux.F diags_phi_hyd.F diags_phi_rlow.F diags_rho.F diags_sound_speed.F do_atmospheric_phys.F do_fields_blocking_exchanges.F do_oceanic_phys.F do_stagger_fields_exchanges.F do_statevars_diags.F do_statevars_tave.F do_the_model_io.F do_write_pickup.F dynamics.F external_fields_load.F external_forcing.F external_forcing_surf.F find_alpha.F find_hyd_press_1d.F find_rho.F forcing_surf_relax.F forward_step.F freesurf_rescale_g.F freeze_surface.F grad_sigma.F gsw_teos10.F impldiff.F ini_cartesian_grid.F ini_cg2d.F ini_cg3d.F ini_cori.F ini_curvilinear_grid.F ini_cylinder_grid.F ini_depths.F ini_dynvars.F ini_eos.F ini_ffields.F ini_fields.F ini_forcing.F ini_global_domain.F ini_grid.F ini_linear_phisurf.F ini_local_grid.F ini_masks_etc.F ini_mixing.F ini_mnc_vars.F ini_model_io.F ini_nh_fields.F ini_nh_vars.F ini_nlfs_vars.F ini_parms.F ini_p_ground.F ini_pressure.F ini_psurf.F ini_salt.F ini_sigma_hfac.F ini_spherical_polar_grid.F ini_theta.F initialise_fixed.F initialise_varia.F ini_vel.F ini_vertical_grid.F integrate_for_w.F integr_continuity.F load_fields_driver.F load_grid_spacing.F load_ref_files.F main_do_loop.F momentum_correction_step.F packages_boot.F packages_check.F packages_error_msg.F packages_init_fixed.F packages_init_variables.F packages_print_msg.F packages_readparms.F packages_unused_msg.F packages_write_pickup.F plot_field.F port_rand.F post_cg3d.F pre_cg3d.F pressure_for_eos.F read_pickup.F remove_mean.F reset_nlfs_vars.F rotate_spherical_polar_grid.F rotate_uv2en.F salt_integrate.F seawater.F set_defaults.F set_grid_factors.F set_parms.F set_ref_state.F solve_for_pressure.F solve_pentadiagonal.F solve_tridiagonal.F solve_uv_tridiago.F state_summary.F swfrac.F taueddy_init_varia.F taueddy_tendency_apply.F temp_integrate.F the_main_loop.F the_model_main.F thermodynamics.F timestep.F timestep_tracer.F timestep_wvel.F tracers_correction_step.F tracers_iigw_correction.F turnoff_model_io.F update_cg2d.F update_etah.F update_etaws.F update_masks_etc.F update_r_star.F update_sigma.F update_surf_dr.F write_grid.F write_pickup.F write_state.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/model/src/$@ $@; fi

#  These files are linked from $(ROOTDIR)/eesupp/inc ( aka /home/ptuckman/MITgcm/eesupp/inc )
 BAR2.h BARRIER.h CPP_EEMACROS.h CUMULSUM.h DEF_IN_MAKEFILE.h EEBUFF_SCPU.h EEPARAMS.h EESUPPORT.h EXCH.h GLOBAL_MAX.h GLOBAL_SUM.h MAIN_PDIRECTIVES1.h MAIN_PDIRECTIVES2.h MPI_INFO.h SIGREG.h :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/eesupp/inc/$@ $@; fi

#  These files are linked from $(ROOTDIR)/model/inc ( aka /home/ptuckman/MITgcm/model/inc )
 CG2D.h CG3D.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EOS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h NH_VARS.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h RESTART.h SET_GRID.h SOLVE_FOR_PRESSURE3D.h SOLVE_FOR_PRESSURE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h THE_MODEL_COMMON_BLOCKS.h XC_MACROS.h YC_MACROS.h :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/model/inc/$@ $@; fi


# DO NOT DELETE


adams_bashforth2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
adams_bashforth2.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
adams_bashforth3.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
adams_bashforth3.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
add_walls2masks.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
add_walls2masks.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
add_walls2masks.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
add_walls2masks.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
add_walls2masks.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
add_walls2masks.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
add_walls2masks.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
add_walls2masks.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
add_walls2masks.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
add_walls2masks.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
add_walls2masks.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
add_walls2masks.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
all_proc_die.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
all_proc_die.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
all_proc_die.f: SIZE.h /usr/include/stdc-predef.h
apply_forcing.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
apply_forcing.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
apply_forcing.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
apply_forcing.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
apply_forcing.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
apply_forcing.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
apply_forcing.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
apply_forcing.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
apply_forcing.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
apply_forcing.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
apply_forcing.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
apply_forcing.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
apply_forcing.f: YC_MACROS.h
atm_apply_import.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_apply_import.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
atm_apply_import.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
atm_check_cplconfig.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_check_cplconfig.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_check_cplconfig.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_check_cplconfig.f: /usr/include/stdc-predef.h
atm_cpl_read_pickup.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_cpl_read_pickup.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_cpl_read_pickup.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_cpl_read_pickup.f: /usr/include/stdc-predef.h
atm_export_atmconfig.f: ATM_CPL_OPTIONS.h ATMIDS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_export_atmconfig.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_export_atmconfig.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_export_atmconfig.f: /usr/include/stdc-predef.h
atm_export_fields.f: ATMCPL.h ATM_CPL_OPTIONS.h ATMIDS.h CPL_PARAMS.h
atm_export_fields.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_export_fields.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
atm_export_fld.f: ATM_CPL_OPTIONS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
atm_export_fld.f: CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
atm_export_fld.f: /usr/include/stdc-predef.h
atm_get_atmconfig.f: ATM_CPL_OPTIONS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
atm_get_atmconfig.f: CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h
atm_get_atmconfig.f: SIZE.h /usr/include/stdc-predef.h
atm_import_fields.f: ATMCPL.h ATM_CPL_OPTIONS.h ATMIDS.h CPL_PARAMS.h
atm_import_fields.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_import_fields.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
atm_import_ocnconfig.f: ATMCPL.h ATM_CPL_OPTIONS.h ATMIDS.h CPP_EEMACROS.h
atm_import_ocnconfig.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_import_ocnconfig.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
atm_phys_check.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h CPP_EEMACROS.h
atm_phys_check.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
atm_phys_check.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
atm_phys_diagnostics_init.f: ATM_PHYS_OPTIONS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
atm_phys_diagnostics_init.f: CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
atm_phys_diagnostics_init.f: /usr/include/stdc-predef.h
atm_phys_driver.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h ATM_PHYS_VARS.h
atm_phys_driver.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
atm_phys_driver.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
atm_phys_driver.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
atm_phys_driver.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
atm_phys_driver.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
atm_phys_driver.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
atm_phys_driver.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
atm_phys_driver.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
atm_phys_driver.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
atm_phys_driver.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
atm_phys_driver.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
atm_phys_driver.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
atm_phys_driver.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
atm_phys_dyn2phys.f: ATM_PHYS_OPTIONS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
atm_phys_dyn2phys.f: CPP_OPTIONS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
atm_phys_dyn2phys.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
atm_phys_dyn2phys.f: DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
atm_phys_dyn2phys.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
atm_phys_dyn2phys.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
atm_phys_dyn2phys.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
atm_phys_dyn2phys.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
atm_phys_dyn2phys.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
atm_phys_dyn2phys.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
atm_phys_dyn2phys.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
atm_phys_dyn2phys.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
atm_phys_dyn2phys.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
atm_phys_dyn2phys.f: YC_MACROS.h
atm_phys_init_fixed.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h ATM_PHYS_VARS.h
atm_phys_init_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_phys_init_fixed.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_phys_init_fixed.f: /usr/include/stdc-predef.h
atm_phys_init_varia.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h ATM_PHYS_VARS.h
atm_phys_init_varia.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
atm_phys_init_varia.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
atm_phys_init_varia.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
atm_phys_init_varia.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
atm_phys_init_varia.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
atm_phys_init_varia.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
atm_phys_init_varia.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
atm_phys_init_varia.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
atm_phys_init_varia.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
atm_phys_init_varia.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
atm_phys_init_varia.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
atm_phys_init_varia.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
atm_phys_init_varia.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
atm_phys_init_varia.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
atm_phys_init_varia.f: XC_MACROS.h YC_MACROS.h
atm_phys_readparms.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h CPP_EEMACROS.h
atm_phys_readparms.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_phys_readparms.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_phys_readparms.f: /usr/include/stdc-predef.h
atm_phys_read_pickup.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h ATM_PHYS_VARS.h
atm_phys_read_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
atm_phys_read_pickup.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_phys_read_pickup.f: /usr/include/stdc-predef.h
atm_phys_tendency_apply.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h
atm_phys_tendency_apply.f: ATM_PHYS_VARS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
atm_phys_tendency_apply.f: CPP_OPTIONS.h DXC_MACROS.h DXF_MACROS.h
atm_phys_tendency_apply.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
atm_phys_tendency_apply.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
atm_phys_tendency_apply.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
atm_phys_tendency_apply.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
atm_phys_tendency_apply.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
atm_phys_tendency_apply.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
atm_phys_tendency_apply.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
atm_phys_tendency_apply.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
atm_phys_tendency_apply.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
atm_phys_tendency_apply.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
atm_phys_tendency_apply.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
atm_phys_tendency_apply.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
atm_phys_tendency_apply.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
atm_phys_tendency_apply.f: XC_MACROS.h YC_MACROS.h
atm_phys_write_pickup.f: ATM_PHYS_OPTIONS.h ATM_PHYS_PARAMS.h ATM_PHYS_VARS.h
atm_phys_write_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
atm_phys_write_pickup.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_phys_write_pickup.f: /usr/include/stdc-predef.h
atm_store_aim_fields.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_store_aim_fields.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_store_aim_fields.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_store_aim_fields.f: /usr/include/stdc-predef.h
atm_store_aim_wndstr.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_store_aim_wndstr.f: CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
atm_store_aim_wndstr.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
atm_store_aim_wndstr.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
atm_store_aim_wndstr.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
atm_store_aim_wndstr.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
atm_store_aim_wndstr.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
atm_store_aim_wndstr.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
atm_store_aim_wndstr.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
atm_store_aim_wndstr.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
atm_store_aim_wndstr.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
atm_store_aim_wndstr.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
atm_store_aim_wndstr.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
atm_store_aim_wndstr.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
atm_store_aim_wndstr.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
atm_store_aim_wndstr.f: XC_MACROS.h YC_MACROS.h
atm_store_dynvars.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_store_dynvars.f: CPP_EEOPTIONS.h CPP_OPTIONS.h DYNVARS.h EEPARAMS.h
atm_store_dynvars.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_store_dynvars.f: /usr/include/stdc-predef.h
atm_store_land.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_store_land.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
atm_store_land.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
atm_store_my_data.f: ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_store_my_data.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
atm_store_my_data.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_store_my_data.f: /usr/include/stdc-predef.h
atm_store_surfflux.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_store_surfflux.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h FFIELDS.h
atm_store_surfflux.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
atm_store_surfflux.f: /usr/include/stdc-predef.h
atm_store_thsice.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
atm_store_thsice.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
atm_store_thsice.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
bar2.f: BAR2.h CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
bar2.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
bar2.f: SIZE.h /usr/include/stdc-predef.h
bar_check.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
bar_check.f: /usr/include/stdc-predef.h
barrier.f: BARRIER.h CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
barrier.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
barrier.f: SIZE.h /usr/include/stdc-predef.h
calc_3d_diffusivity.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
calc_3d_diffusivity.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
calc_3d_diffusivity.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
calc_3d_diffusivity.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GAD.h GRID.h
calc_3d_diffusivity.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
calc_3d_diffusivity.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_3d_diffusivity.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_3d_diffusivity.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_3d_diffusivity.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_3d_diffusivity.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_3d_diffusivity.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_3d_diffusivity.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_3d_diffusivity.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
calc_3d_diffusivity.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
calc_3d_diffusivity.f: XC_MACROS.h YC_MACROS.h
calc_adv_flow.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_adv_flow.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_adv_flow.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
calc_adv_flow.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_adv_flow.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_adv_flow.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_adv_flow.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_adv_flow.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_adv_flow.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_adv_flow.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_adv_flow.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
calc_adv_flow.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
calc_adv_flow.f: YC_MACROS.h
calc_div_ghat.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_div_ghat.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_div_ghat.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
calc_div_ghat.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_div_ghat.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_div_ghat.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
calc_div_ghat.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_div_ghat.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_div_ghat.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_div_ghat.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
calc_div_ghat.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_div_ghat.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_eddy_stress.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_eddy_stress.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_eddy_stress.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
calc_eddy_stress.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
calc_eddy_stress.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_eddy_stress.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
calc_eddy_stress.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
calc_eddy_stress.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_eddy_stress.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_eddy_stress.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_eddy_stress.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
calc_eddy_stress.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_eddy_stress.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_grad_phi_fv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_grad_phi_fv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_grad_phi_fv.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
calc_grad_phi_fv.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_grad_phi_fv.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
calc_grad_phi_fv.f: MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_grad_phi_fv.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_grad_phi_fv.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_grad_phi_fv.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_grad_phi_fv.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_grad_phi_fv.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
calc_grad_phi_fv.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
calc_grad_phi_fv.f: YC_MACROS.h
calc_grad_phi_hyd.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_grad_phi_hyd.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_grad_phi_hyd.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
calc_grad_phi_hyd.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
calc_grad_phi_hyd.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_grad_phi_hyd.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h
calc_grad_phi_hyd.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
calc_grad_phi_hyd.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_grad_phi_hyd.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_grad_phi_hyd.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_grad_phi_hyd.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
calc_grad_phi_hyd.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_grad_phi_hyd.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_grad_phi_surf.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
calc_grad_phi_surf.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
calc_grad_phi_surf.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
calc_grad_phi_surf.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
calc_grad_phi_surf.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_grad_phi_surf.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h
calc_grad_phi_surf.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
calc_grad_phi_surf.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_grad_phi_surf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_grad_phi_surf.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_grad_phi_surf.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
calc_grad_phi_surf.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_grad_phi_surf.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_grid_angles.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_grid_angles.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_grid_angles.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
calc_grid_angles.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_grid_angles.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
calc_grid_angles.f: MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_grid_angles.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_grid_angles.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_grid_angles.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_grid_angles.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_grid_angles.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
calc_grid_angles.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
calc_grid_angles.f: YC_MACROS.h
calc_gw.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_gw.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
calc_gw.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
calc_gw.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_gw.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h MOM_VISC.h
calc_gw.f: NH_VARS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_gw.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_gw.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_gw.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_gw.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
calc_gw.f: RESTART.h SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_gw.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_ivdc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_ivdc.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
calc_ivdc.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
calc_ivdc.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_ivdc.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_ivdc.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_ivdc.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_ivdc.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_ivdc.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
calc_ivdc.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_ivdc.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_oce_mxlayer.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_oce_mxlayer.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_oce_mxlayer.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
calc_oce_mxlayer.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
calc_oce_mxlayer.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_oce_mxlayer.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
calc_oce_mxlayer.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
calc_oce_mxlayer.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_oce_mxlayer.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_oce_mxlayer.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_oce_mxlayer.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
calc_oce_mxlayer.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_oce_mxlayer.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_phi_hyd.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_phi_hyd.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_phi_hyd.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
calc_phi_hyd.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_phi_hyd.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_phi_hyd.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_phi_hyd.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_phi_hyd.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_phi_hyd.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_phi_hyd.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
calc_phi_hyd.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_phi_hyd.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_r_star.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_r_star.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_r_star.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
calc_r_star.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_r_star.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_r_star.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_r_star.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_r_star.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_r_star.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_r_star.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
calc_r_star.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_r_star.f: /usr/include/stdc-predef.h W2_OPTIONS.h XC_MACROS.h YC_MACROS.h
calc_surf_dr.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_surf_dr.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_surf_dr.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
calc_surf_dr.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_surf_dr.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_surf_dr.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_surf_dr.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_surf_dr.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_surf_dr.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_surf_dr.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
calc_surf_dr.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_surf_dr.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
calc_viscosity.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_viscosity.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_viscosity.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
calc_viscosity.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_viscosity.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_viscosity.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
calc_viscosity.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_viscosity.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_viscosity.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_viscosity.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_viscosity.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
calc_viscosity.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
calc_viscosity.f: YC_MACROS.h
calc_wsurf_tr.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
calc_wsurf_tr.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_wsurf_tr.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
calc_wsurf_tr.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
calc_wsurf_tr.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
calc_wsurf_tr.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
calc_wsurf_tr.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_wsurf_tr.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_wsurf_tr.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_wsurf_tr.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
calc_wsurf_tr.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_wsurf_tr.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
cg2d_ex0.f: CG2D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cg2d_ex0.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
cg2d.f: CG2D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cg2d.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
cg2d_nsa.f: CG2D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cg2d_nsa.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
cg2d_sr.f: CG2D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cg2d_sr.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
cg3d_ex0.f: CG3D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
cg3d_ex0.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
cg3d_ex0.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
cg3d_ex0.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
cg3d_ex0.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
cg3d_ex0.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
cg3d_ex0.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
cg3d_ex0.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
cg3d_ex0.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
cg3d_ex0.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
cg3d_ex0.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
cg3d.f: CG3D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
cg3d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
cg3d.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
cg3d.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
cg3d.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
cg3d.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
cg3d.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
cg3d.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
cg3d.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
cg3d.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
cg3d.f: XC_MACROS.h YC_MACROS.h
check_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
check_pickup.f: PARAMS.h RESTART.h SIZE.h /usr/include/stdc-predef.h
check_threads.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
check_threads.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
check_threads.f: SIZE.h /usr/include/stdc-predef.h
chksum_tiled.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DEBUG_OPTIONS.h
chksum_tiled.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
comm_stats.f: BAR2.h CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
comm_stats.f: EXCH.h
comm_stats.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
comm_stats.f: SIZE.h /usr/include/stdc-predef.h
comprecv_i4vec.f: CPLR_SIG.h
comprecv_i4vec.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
comprecv_i4vec.f: /usr/include/stdc-predef.h
comprecv_r4.f: CPLR_SIG.h
comprecv_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
comprecv_r4.f: /usr/include/stdc-predef.h
comprecv_r4tiles.f: CPLR_SIG.h
comprecv_r4tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
comprecv_r4tiles.f: /usr/include/stdc-predef.h
comprecv_r8.f: CPLR_SIG.h
comprecv_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
comprecv_r8.f: /usr/include/stdc-predef.h
comprecv_r8tiles.f: CPLR_SIG.h
comprecv_r8tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
comprecv_r8tiles.f: /usr/include/stdc-predef.h
compsend_i4vec.f: CPLR_SIG.h
compsend_i4vec.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
compsend_i4vec.f: /usr/include/stdc-predef.h
compsend_r4.f: CPLR_SIG.h
compsend_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
compsend_r4.f: /usr/include/stdc-predef.h
compsend_r4tiles.f: CPLR_SIG.h
compsend_r4tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
compsend_r4tiles.f: /usr/include/stdc-predef.h
compsend_r8.f: CPLR_SIG.h
compsend_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
compsend_r8.f: /usr/include/stdc-predef.h
compsend_r8tiles.f: CPLR_SIG.h
compsend_r8tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
compsend_r8tiles.f: /usr/include/stdc-predef.h
config_check.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
config_check.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
config_check.f: /usr/include/stdc-predef.h
config_summary.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
config_summary.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
config_summary.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h EOS.h
config_summary.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
config_summary.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
config_summary.f: MNC_PARAMS.h MOM_COMMON_OPTIONS.h MOM_VISC.h
config_summary.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
config_summary.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
config_summary.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
config_summary.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
config_summary.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
config_summary.f: RECIP_HFACW_MACROS.h SET_GRID.h SIZE.h TANPHIATU_MACROS.h
config_summary.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
config_summary.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h XC_MACROS.h
config_summary.f: YC_MACROS.h
convective_adjustment.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
convective_adjustment.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
convective_adjustment.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
convective_adjustment.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
convective_adjustment.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
convective_adjustment.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
convective_adjustment.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
convective_adjustment.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
convective_adjustment.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
convective_adjustment.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
convective_adjustment.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
convective_adjustment.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
convective_adjustment.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
convective_adjustment.f: TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h TIMEAVE_STATV.h
convective_adjustment.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
convective_adjustment_ini.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
convective_adjustment_ini.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
convective_adjustment_ini.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
convective_adjustment_ini.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
convective_adjustment_ini.f: FCORI_MACROS.h GRID.h GRID_MACROS.h
convective_adjustment_ini.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
convective_adjustment_ini.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
convective_adjustment_ini.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
convective_adjustment_ini.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
convective_adjustment_ini.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
convective_adjustment_ini.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
convective_adjustment_ini.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
convective_adjustment_ini.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
convective_adjustment_ini.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
convective_adjustment_ini.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
convective_adjustment_ini.f: XC_MACROS.h YC_MACROS.h
convectively_mixtracer.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
convectively_mixtracer.f: EEPARAMS.h SIZE.h /usr/include/stdc-predef.h
convective_weights.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
convective_weights.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
convective_weights.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
convective_weights.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
convective_weights.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
convective_weights.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h
convective_weights.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
convective_weights.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
convective_weights.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
convective_weights.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
convective_weights.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
convective_weights.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
convective_weights.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
correction_step.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
correction_step.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
correction_step.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
correction_step.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
correction_step.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
correction_step.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
correction_step.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
correction_step.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
correction_step.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
correction_step.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
correction_step.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
correction_step.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
correction_step.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
couprecv_i4vec.f: CPLR_SIG.h
couprecv_i4vec.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
couprecv_i4vec.f: /usr/include/stdc-predef.h
couprecv_r4.f: CPLR_SIG.h
couprecv_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
couprecv_r4.f: /usr/include/stdc-predef.h
couprecv_r4tiles.f: CPLR_SIG.h
couprecv_r4tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
couprecv_r4tiles.f: /usr/include/stdc-predef.h
couprecv_r8.f: CPLR_SIG.h
couprecv_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
couprecv_r8.f: /usr/include/stdc-predef.h
couprecv_r8tiles.f: CPLR_SIG.h
couprecv_r8tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
couprecv_r8tiles.f: /usr/include/stdc-predef.h
coupsend_i4vec.f: CPLR_SIG.h
coupsend_i4vec.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
coupsend_i4vec.f: /usr/include/stdc-predef.h
coupsend_r4.f: CPLR_SIG.h
coupsend_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
coupsend_r4.f: /usr/include/stdc-predef.h
coupsend_r4tiles.f: CPLR_SIG.h
coupsend_r4tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
coupsend_r4tiles.f: /usr/include/stdc-predef.h
coupsend_r8.f: CPLR_SIG.h
coupsend_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
coupsend_r8.f: /usr/include/stdc-predef.h
coupsend_r8tiles.f: CPLR_SIG.h
coupsend_r8tiles.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
coupsend_r8tiles.f: /usr/include/stdc-predef.h
cpl_diagnostics_fill.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
cpl_diagnostics_fill.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cpl_diagnostics_fill.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
cpl_diagnostics_fill.f: /usr/include/stdc-predef.h
cpl_diagnostics_init.f: ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
cpl_diagnostics_init.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cpl_diagnostics_init.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
cpl_exch_configs.f: ATM_CPL_OPTIONS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
cpl_exch_configs.f: CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
cpl_exch_configs.f: /usr/include/stdc-predef.h
cpl_export_import_data.f: ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
cpl_export_import_data.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cpl_export_import_data.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
cpl_export_import_data.f: /usr/include/stdc-predef.h
cpl_import_cplparms.f: ATM_CPL_OPTIONS.h ATMIDS.h CPL_PARAMS.h CPP_EEMACROS.h
cpl_import_cplparms.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cpl_import_cplparms.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
cpl_init.f: ATM_CPL_OPTIONS.h ATMIDS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
cpl_init.f: CPP_OPTIONS.h EEPARAMS.h EESUPPORT.h
cpl_init.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
cpl_init_fixed.f: ATM_CPL_OPTIONS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
cpl_init_fixed.f: CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
cpl_init_fixed.f: /usr/include/stdc-predef.h
cpl_init.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
cpl_ini_vars.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
cpl_ini_vars.f: CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h DXF_MACROS.h
cpl_ini_vars.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
cpl_ini_vars.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
cpl_ini_vars.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
cpl_ini_vars.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
cpl_ini_vars.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
cpl_ini_vars.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
cpl_ini_vars.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
cpl_ini_vars.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
cpl_ini_vars.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
cpl_ini_vars.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
cpl_ini_vars.f: YC_MACROS.h
cpl_output.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PARAMS.h SIZE.h
cpl_output.f: /usr/include/stdc-predef.h
cpl_readparms.f: ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h CPP_EEOPTIONS.h
cpl_readparms.f: CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
cpl_readparms.f: /usr/include/stdc-predef.h
cpl_register.f: ATM_CPL_OPTIONS.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
cpl_register.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
cpl_register.f: W2_EXCH2_PARAMS.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
cpl_write_pickup.f: ATMCPL.h ATM_CPL_OPTIONS.h CPL_PARAMS.h CPP_EEMACROS.h
cpl_write_pickup.f: CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
cpl_write_pickup.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
cumulsum_z_tile.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CUMULSUM.h EEPARAMS.h
cumulsum_z_tile.f: EESUPPORT.h
cumulsum_z_tile.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
cumulsum_z_tile.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
cycle_ab_tracer.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cycle_ab_tracer.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
cycle_tracer.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
cycle_tracer.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
debug_call.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DEBUG_OPTIONS.h
debug_call.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
debug_cs_corner_uv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
debug_cs_corner_uv.f: DEBUG_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
debug_cs_corner_uv.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
debug_cs_corner_uv.f: W2_EXCH2_TOPOLOGY.h
debug_enter.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DEBUG_OPTIONS.h
debug_enter.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
debug_fld_stats_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
debug_fld_stats_rl.f: DEBUG_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
debug_fld_stats_rl.f: /usr/include/stdc-predef.h
debug_fld_stats_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
debug_fld_stats_rs.f: DEBUG_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
debug_fld_stats_rs.f: /usr/include/stdc-predef.h
debug_leave.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DEBUG_OPTIONS.h
debug_leave.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
debug_msg.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DEBUG_OPTIONS.h
debug_msg.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
debug_stats_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DEBUG_OPTIONS.h
debug_stats_rl.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
debug_stats_rl.f: /usr/include/stdc-predef.h
debug_stats_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DEBUG_OPTIONS.h
debug_stats_rs.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
debug_stats_rs.f: /usr/include/stdc-predef.h
diag_calc_psivel.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diag_calc_psivel.f: DIAG_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h
diag_calc_psivel.f: SIZE.h /usr/include/stdc-predef.h
diag_cg2d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAG_OPTIONS.h
diag_cg2d.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diag_cg2d.f: /usr/include/stdc-predef.h
diagnostics_addtolist.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_addtolist.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_addtolist.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_addtolist.f: /usr/include/stdc-predef.h
diagnostics_calc_phivel.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_calc_phivel.f: DIAGNOSTICS_CALC.h DIAGNOSTICS.h DIAGNOSTICS_SIZE.h
diagnostics_calc_phivel.f: DIAG_OPTIONS.h DXC_MACROS.h DXF_MACROS.h
diagnostics_calc_phivel.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
diagnostics_calc_phivel.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
diagnostics_calc_phivel.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
diagnostics_calc_phivel.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
diagnostics_calc_phivel.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
diagnostics_calc_phivel.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_calc_phivel.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_calc_phivel.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_calc_phivel.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_calc_phivel.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_calc_phivel.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
diagnostics_calc_phivel.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
diagnostics_calc_phivel.f: XC_MACROS.h YC_MACROS.h
diagnostics_check.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_check.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_check.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagnostics_check.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagnostics_check.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagnostics_check.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_check.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
diagnostics_check.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diagnostics_check.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_check.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagnostics_check.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagnostics_check.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
diagnostics_check.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagnostics_check.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagnostics_clear.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_clear.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_clear.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_clear.f: /usr/include/stdc-predef.h
diagnostics_fill.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS.h
diagnostics_fill.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h EEPARAMS.h
diagnostics_fill_field.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_fill_field.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_fill_field.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagnostics_fill_field.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagnostics_fill_field.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagnostics_fill_field.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_fill_field.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
diagnostics_fill_field.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
diagnostics_fill_field.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_fill_field.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_fill_field.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_fill_field.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_fill_field.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_fill_field.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
diagnostics_fill_field.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
diagnostics_fill_field.f: XC_MACROS.h YC_MACROS.h
diagnostics_fill.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
diagnostics_fill_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_fill_rs.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_fill_rs.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_fill_rs.f: /usr/include/stdc-predef.h
diagnostics_fill_state.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_fill_state.f: DIAG_OPTIONS.h DXC_MACROS.h DXF_MACROS.h
diagnostics_fill_state.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
diagnostics_fill_state.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
diagnostics_fill_state.f: FCORI_MACROS.h GAD.h GRID.h GRID_MACROS.h
diagnostics_fill_state.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_fill_state.f: MASKS_MACROS.h MASKW_MACROS.h NH_VARS.h
diagnostics_fill_state.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
diagnostics_fill_state.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_fill_state.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_fill_state.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_fill_state.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_fill_state.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_fill_state.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
diagnostics_fill_state.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagnostics_fill_state.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagnostics_fract_fill.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_fract_fill.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_fract_fill.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_fract_fill.f: /usr/include/stdc-predef.h
diagnostics_ini_io.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_ini_io.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_ini_io.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_ini_io.f: /usr/include/stdc-predef.h
diagnostics_init_early.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_init_early.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_init_early.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_init_early.f: /usr/include/stdc-predef.h
diagnostics_init_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_init_fixed.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_init_fixed.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_init_fixed.f: /usr/include/stdc-predef.h
diagnostics_init_varia.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_init_varia.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_init_varia.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_init_varia.f: /usr/include/stdc-predef.h
diagnostics_interp_p2p.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_interp_p2p.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h
diagnostics_interp_p2p.f: /usr/include/stdc-predef.h
diagnostics_interp_vert.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_interp_vert.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_interp_vert.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagnostics_interp_vert.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagnostics_interp_vert.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagnostics_interp_vert.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_interp_vert.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
diagnostics_interp_vert.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
diagnostics_interp_vert.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_interp_vert.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_interp_vert.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_interp_vert.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_interp_vert.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_interp_vert.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
diagnostics_interp_vert.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
diagnostics_interp_vert.f: XC_MACROS.h YC_MACROS.h
diagnostics_is_on.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_is_on.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_is_on.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_is_on.f: /usr/include/stdc-predef.h
diagnostics_list_check.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_list_check.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_list_check.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_list_check.f: /usr/include/stdc-predef.h
diagnostics_main_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_main_init.f: DIAG_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h
diagnostics_main_init.f: SIZE.h /usr/include/stdc-predef.h
diagnostics_mnc_out.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_mnc_out.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_mnc_out.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagnostics_mnc_out.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagnostics_mnc_out.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagnostics_mnc_out.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_mnc_out.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
diagnostics_mnc_out.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
diagnostics_mnc_out.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_mnc_out.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_mnc_out.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_mnc_out.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_mnc_out.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_mnc_out.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
diagnostics_mnc_out.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
diagnostics_mnc_out.f: XC_MACROS.h YC_MACROS.h
diagnostics_out.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS.h
diagnostics_out.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h DXC_MACROS.h DXF_MACROS.h
diagnostics_out.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
diagnostics_out.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
diagnostics_out.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_out.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
diagnostics_out.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diagnostics_out.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_out.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagnostics_out.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagnostics_out.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
diagnostics_out.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagnostics_out.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagnostics_readparms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_readparms.f: DIAGNOSTICS_CALC.h DIAGNOSTICS.h DIAGNOSTICS_SIZE.h
diagnostics_readparms.f: DIAG_OPTIONS.h DIAGSTATS_REGIONS.h EEPARAMS.h
diagnostics_readparms.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_readparms.f: /usr/include/stdc-predef.h
diagnostics_read_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_read_pickup.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_read_pickup.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_read_pickup.f: /usr/include/stdc-predef.h
diagnostics_scale_fill.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_scale_fill.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_scale_fill.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_scale_fill.f: /usr/include/stdc-predef.h
diagnostics_scale_fill_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_scale_fill_rs.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_scale_fill_rs.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_scale_fill_rs.f: /usr/include/stdc-predef.h
diagnostics_set_calc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_set_calc.f: DIAGNOSTICS_CALC.h DIAG_OPTIONS.h DXC_MACROS.h
diagnostics_set_calc.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
diagnostics_set_calc.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
diagnostics_set_calc.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
diagnostics_set_calc.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
diagnostics_set_calc.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
diagnostics_set_calc.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diagnostics_set_calc.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diagnostics_set_calc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
diagnostics_set_calc.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagnostics_set_calc.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagnostics_set_calc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
diagnostics_set_calc.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagnostics_set_calc.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagnostics_setdiag.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_setdiag.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_setdiag.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_setdiag.f: /usr/include/stdc-predef.h
diagnostics_set_levels.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_set_levels.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_set_levels.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_set_levels.f: /usr/include/stdc-predef.h
diagnostics_set_pointers.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_set_pointers.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_set_pointers.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagnostics_set_pointers.f: /usr/include/stdc-predef.h
diagnostics_status_error.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_status_error.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_status_error.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_status_error.f: /usr/include/stdc-predef.h
diagnostics_sum_levels.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_sum_levels.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_sum_levels.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagnostics_sum_levels.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagnostics_sum_levels.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagnostics_sum_levels.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_sum_levels.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
diagnostics_sum_levels.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
diagnostics_sum_levels.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_sum_levels.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_sum_levels.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_sum_levels.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_sum_levels.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_sum_levels.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
diagnostics_sum_levels.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
diagnostics_sum_levels.f: XC_MACROS.h YC_MACROS.h
diagnostics_summary.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_summary.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_summary.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_summary.f: /usr/include/stdc-predef.h
diagnostics_switch_onoff.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_switch_onoff.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_switch_onoff.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_switch_onoff.f: /usr/include/stdc-predef.h
diagnostics_utils.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_utils.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_utils.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_utils.f: /usr/include/stdc-predef.h
diagnostics_write_adj.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_write_adj.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_write_adj.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_write_adj.f: /usr/include/stdc-predef.h
diagnostics_write.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_write.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_write.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_write.f: /usr/include/stdc-predef.h
diagnostics_write_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagnostics_write_pickup.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagnostics_write_pickup.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagnostics_write_pickup.f: /usr/include/stdc-predef.h
diags_oceanic_surf_flux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diags_oceanic_surf_flux.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diags_oceanic_surf_flux.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
diags_oceanic_surf_flux.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h FFIELDS.h
diags_oceanic_surf_flux.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
diags_oceanic_surf_flux.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
diags_oceanic_surf_flux.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
diags_oceanic_surf_flux.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diags_oceanic_surf_flux.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diags_oceanic_surf_flux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diags_oceanic_surf_flux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diags_oceanic_surf_flux.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diags_oceanic_surf_flux.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
diags_oceanic_surf_flux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diags_oceanic_surf_flux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diags_phi_hyd.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
diags_phi_hyd.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
diags_phi_hyd.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
diags_phi_hyd.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
diags_phi_hyd.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
diags_phi_hyd.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
diags_phi_hyd.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diags_phi_hyd.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
diags_phi_hyd.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diags_phi_hyd.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diags_phi_hyd.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
diags_phi_hyd.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
diags_phi_hyd.f: YC_MACROS.h
diags_phi_rlow.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
diags_phi_rlow.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
diags_phi_rlow.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
diags_phi_rlow.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
diags_phi_rlow.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
diags_phi_rlow.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
diags_phi_rlow.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diags_phi_rlow.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diags_phi_rlow.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diags_phi_rlow.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
diags_phi_rlow.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diags_phi_rlow.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diags_rho.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
diags_rho.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
diags_rho.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
diags_rho.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diags_rho.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
diags_rho.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diags_rho.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diags_rho.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diags_rho.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diags_rho.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diags_rho.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diags_sound_speed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
diags_sound_speed.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
diags_sound_speed.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
diags_sound_speed.f: EEPARAMS.h EOS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diags_sound_speed.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diags_sound_speed.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
diags_sound_speed.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diags_sound_speed.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diags_sound_speed.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diags_sound_speed.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diags_sound_speed.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
diags_sound_speed.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diags_sound_speed.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagstats_ascii_out.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_ascii_out.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagstats_ascii_out.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagstats_ascii_out.f: /usr/include/stdc-predef.h
diagstats_calc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAG_OPTIONS.h
diagstats_calc.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagstats_calc.f: /usr/include/stdc-predef.h
diagstats_clear.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS.h
diagstats_clear.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h EEPARAMS.h
diagstats_clear.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
diagstats_close_io.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_close_io.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagstats_close_io.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagstats_close_io.f: /usr/include/stdc-predef.h
diagstats_fill.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS.h
diagstats_fill.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h EEPARAMS.h
diagstats_fill.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
diagstats_global.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS.h
diagstats_global.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h EEPARAMS.h
diagstats_global.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
diagstats_ini_io.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS.h
diagstats_ini_io.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h EEPARAMS.h
diagstats_ini_io.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagstats_ini_io.f: /usr/include/stdc-predef.h
diagstats_local.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_local.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h DIAGSTATS_REGIONS.h
diagstats_local.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagstats_local.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagstats_local.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagstats_local.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
diagstats_local.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
diagstats_local.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diagstats_local.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagstats_local.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagstats_local.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagstats_local.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
diagstats_local.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagstats_local.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagstats_mnc_out.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_mnc_out.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagstats_mnc_out.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagstats_mnc_out.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagstats_mnc_out.f: EEPARAMS.h EESUPPORT.h FCORI_MACROS.h GRID.h
diagstats_mnc_out.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
diagstats_mnc_out.f: HFACW_MACROS.h
diagstats_mnc_out.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
diagstats_mnc_out.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
diagstats_mnc_out.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diagstats_mnc_out.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagstats_mnc_out.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagstats_mnc_out.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagstats_mnc_out.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
diagstats_mnc_out.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagstats_mnc_out.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagstats_others_calc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_others_calc.f: DIAG_OPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagstats_others_calc.f: /usr/include/stdc-predef.h
diagstats_output.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DIAGNOSTICS.h
diagstats_output.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h DXC_MACROS.h
diagstats_output.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
diagstats_output.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
diagstats_output.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
diagstats_output.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
diagstats_output.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
diagstats_output.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
diagstats_output.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagstats_output.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagstats_output.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagstats_output.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
diagstats_output.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagstats_output.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
diagstats_setdiag.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_setdiag.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagstats_setdiag.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diagstats_setdiag.f: /usr/include/stdc-predef.h
diagstats_set_pointers.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_set_pointers.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diagstats_set_pointers.f: DIAGSTATS_REGIONS.h EEPARAMS.h PACKAGES_CONFIG.h
diagstats_set_pointers.f: SIZE.h /usr/include/stdc-predef.h
diagstats_set_regions.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diagstats_set_regions.f: DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h DIAGSTATS_REGIONS.h
diagstats_set_regions.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
diagstats_set_regions.f: /usr/include/stdc-predef.h
diag_vegtile_fill.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
diag_vegtile_fill.f: DIAGNOSTICS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h
diag_vegtile_fill.f: EEPARAMS.h PACKAGES_CONFIG.h SIZE.h
diag_vegtile_fill.f: /usr/include/stdc-predef.h
different_multiple.f: CPP_EEMACROS.h CPP_EEOPTIONS.h
different_multiple.f: /usr/include/stdc-predef.h
diff_phase_multiple.f: CPP_EEMACROS.h CPP_EEOPTIONS.h
diff_phase_multiple.f: /usr/include/stdc-predef.h
do_atmospheric_phys.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
do_atmospheric_phys.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
do_atmospheric_phys.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
do_atmospheric_phys.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
do_atmospheric_phys.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
do_atmospheric_phys.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
do_atmospheric_phys.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
do_atmospheric_phys.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
do_atmospheric_phys.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
do_atmospheric_phys.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
do_atmospheric_phys.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
do_atmospheric_phys.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
do_atmospheric_phys.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
do_atmospheric_phys.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
do_atmospheric_phys.f: XC_MACROS.h YC_MACROS.h
do_fields_blocking_exchanges.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
do_fields_blocking_exchanges.f: DYNVARS.h EEPARAMS.h GAD.h PACKAGES_CONFIG.h
do_fields_blocking_exchanges.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
do_oceanic_phys.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
do_oceanic_phys.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
do_oceanic_phys.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
do_oceanic_phys.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
do_oceanic_phys.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
do_oceanic_phys.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
do_oceanic_phys.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
do_oceanic_phys.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
do_oceanic_phys.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
do_oceanic_phys.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
do_oceanic_phys.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
do_oceanic_phys.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h
do_oceanic_phys.f: TIMEAVE_STATV.h /usr/include/stdc-predef.h XC_MACROS.h
do_oceanic_phys.f: YC_MACROS.h
do_stagger_fields_exchanges.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
do_stagger_fields_exchanges.f: DYNVARS.h EEPARAMS.h PARAMS.h SIZE.h
do_stagger_fields_exchanges.f: /usr/include/stdc-predef.h
do_statevars_diags.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
do_statevars_diags.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
do_statevars_diags.f: /usr/include/stdc-predef.h
do_statevars_tave.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
do_statevars_tave.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
do_statevars_tave.f: /usr/include/stdc-predef.h
do_the_model_io.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DYNVARS.h
do_the_model_io.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
do_the_model_io.f: /usr/include/stdc-predef.h
do_write_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
do_write_pickup.f: PACKAGES_CONFIG.h PARAMS.h RESTART.h SIZE.h
do_write_pickup.f: /usr/include/stdc-predef.h
dynamics.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
dynamics.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
dynamics.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
dynamics.f: FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
dynamics.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
dynamics.f: MOM_VISC.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
dynamics.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
dynamics.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
dynamics.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
dynamics.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
dynamics.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
dynamics.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
eeboot.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
eeboot.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
eeboot.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
eeboot_minimal.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
eeboot_minimal.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
eeboot_minimal.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
eedata_example.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
eedata_example.f: /usr/include/stdc-predef.h
eedie.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
eedie.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
eedie.f: SIZE.h /usr/include/stdc-predef.h
eeintro_msg.f: BUILD_INFO.h CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
eeintro_msg.f: EESUPPORT.h
eeintro_msg.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
eeintro_msg.f: SIZE.h /usr/include/stdc-predef.h
eeset_parms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h EXCH.h
eeset_parms.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
eeset_parms.f: SIZE.h /usr/include/stdc-predef.h
eewrite_eeenv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
eewrite_eeenv.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
eewrite_eeenv.f: SIZE.h /usr/include/stdc-predef.h
exch0_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch0_r4.f: /usr/include/stdc-predef.h
exch0_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch0_r8.f: /usr/include/stdc-predef.h
exch0_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch0_rl.f: /usr/include/stdc-predef.h
exch0_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch0_rs.f: /usr/include/stdc-predef.h
exch1_bg_r4_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_bg_r4_cube.f: /usr/include/stdc-predef.h
exch1_bg_r8_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_bg_r8_cube.f: /usr/include/stdc-predef.h
exch1_bg_rl_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_bg_rl_cube.f: /usr/include/stdc-predef.h
exch1_bg_rs_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_bg_rs_cube.f: /usr/include/stdc-predef.h
exch1_r4_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_r4_cube.f: /usr/include/stdc-predef.h
exch1_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EXCH.h SIZE.h
exch1_r4.f: /usr/include/stdc-predef.h
exch1_r8_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_r8_cube.f: /usr/include/stdc-predef.h
exch1_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EXCH.h SIZE.h
exch1_r8.f: /usr/include/stdc-predef.h
exch1_rl_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EXCH.h SIZE.h
exch1_rl_ad.f: /usr/include/stdc-predef.h
exch1_rl_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_rl_cube_ad.f: /usr/include/stdc-predef.h
exch1_rl_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_rl_cube.f: /usr/include/stdc-predef.h
exch1_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EXCH.h SIZE.h
exch1_rl.f: /usr/include/stdc-predef.h
exch1_rs_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EXCH.h SIZE.h
exch1_rs_ad.f: /usr/include/stdc-predef.h
exch1_rs_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_rs_cube_ad.f: /usr/include/stdc-predef.h
exch1_rs_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_rs_cube.f: /usr/include/stdc-predef.h
exch1_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EXCH.h SIZE.h
exch1_rs.f: /usr/include/stdc-predef.h
exch1_uv_r4_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_uv_r4_cube.f: /usr/include/stdc-predef.h
exch1_uv_r8_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_uv_r8_cube.f: /usr/include/stdc-predef.h
exch1_uv_rl_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_uv_rl_cube.f: /usr/include/stdc-predef.h
exch1_uv_rs_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_uv_rs_cube.f: /usr/include/stdc-predef.h
exch1_z_r4_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_z_r4_cube.f: /usr/include/stdc-predef.h
exch1_z_r8_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_z_r8_cube.f: /usr/include/stdc-predef.h
exch1_z_rl_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_z_rl_cube.f: /usr/include/stdc-predef.h
exch1_z_rs_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch1_z_rs_cube.f: /usr/include/stdc-predef.h
exch2_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_3d_r4.f: W2_OPTIONS.h
exch2_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_3d_r8.f: W2_OPTIONS.h
exch2_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_3d_rl.f: W2_OPTIONS.h
exch2_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_3d_rs.f: W2_OPTIONS.h
exch2_ad_get_r41.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_r41.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_r41.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_get_r42.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_r42.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_r42.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_get_r81.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_r81.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_r81.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_get_r82.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_r82.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_r82.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_get_rl1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_rl1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_rl1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_get_rl2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_rl2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_rl2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_get_rs1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_rs1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_rs1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_get_rs2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_get_rs2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_get_rs2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_r41.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_r41.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_r41.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_r42.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_r42.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_r42.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_r81.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_r81.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_r81.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_r82.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_r82.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_r82.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_rl1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_rl1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_rl1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_rl2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_rl2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_rl2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_rs1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_rs1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_rs1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_ad_put_rs2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_ad_put_rs2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_ad_put_rs2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_check_depths.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
exch2_check_depths.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch2_check_depths.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_r41.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_r41.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_r41.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_r42.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_r42.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_r42.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_r81.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_r81.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_r81.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_r82.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_r82.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_r82.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_rl1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_rl1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_rl1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_rl2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_rl2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_rl2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_rs1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_rs1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_rs1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_rs2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_get_rs2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_rs2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_get_scal_bounds.f: CPP_EEMACROS.h CPP_EEOPTIONS.h SIZE.h
exch2_get_scal_bounds.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_scal_bounds.f: W2_EXCH2_TOPOLOGY.h
exch2_get_uv_bounds.f: CPP_EEMACROS.h CPP_EEOPTIONS.h SIZE.h
exch2_get_uv_bounds.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_get_uv_bounds.f: W2_EXCH2_TOPOLOGY.h
exch2_put_r41.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_r41.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_r41.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_put_r42.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_r42.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_r42.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_put_r81.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_r81.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_r81.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_put_r82.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_r82.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_r82.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_put_rl1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_rl1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_rl1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_put_rl2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_rl2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_rl2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_put_rs1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_rs1.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_rs1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_put_rs2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_put_rs2.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_put_rs2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_r41_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r41_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r41_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r41_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_r41_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r41_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r41_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r41_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_r42_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r42_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r42_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r42_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_r42_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r42_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r42_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r42_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_r81_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r81_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r81_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r81_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_r81_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r81_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r81_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r81_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_r82_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r82_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r82_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r82_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_r82_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_r82_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_r82_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_r82_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_recv_r41.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_r41.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_r41.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_r41.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_recv_r42.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_r42.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_r42.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_r42.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_recv_r81.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_r81.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_r81.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_r81.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_recv_r82.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_r82.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_r82.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_r82.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_recv_rl1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_rl1.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_rl1.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_rl1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_recv_rl2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_rl2.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_rl2.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_rl2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_recv_rs1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_rs1.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_rs1.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_rs1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_recv_rs2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_recv_rs2.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_recv_rs2.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_recv_rs2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_rl1_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rl1_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rl1_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rl1_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_rl1_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rl1_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rl1_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rl1_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_rl2_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rl2_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rl2_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rl2_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_rl2_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rl2_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rl2_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rl2_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_rs1_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rs1_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rs1_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rs1_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_rs1_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rs1_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rs1_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rs1_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_rs2_cube_ad.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rs2_cube_ad.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rs2_cube_ad.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rs2_cube_ad.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_rs2_cube.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_rs2_cube.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_rs2_cube.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_BUFFER.h
exch2_rs2_cube.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
exch2_s3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_s3d_r4.f: /usr/include/stdc-predef.h W2_OPTIONS.h
exch2_s3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_s3d_r8.f: /usr/include/stdc-predef.h W2_OPTIONS.h
exch2_s3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_s3d_rl.f: /usr/include/stdc-predef.h W2_OPTIONS.h
exch2_s3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_s3d_rs.f: /usr/include/stdc-predef.h W2_OPTIONS.h
exch2_send_r41.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_r41.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_r41.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_r41.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_send_r42.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_r42.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_r42.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_r42.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_send_r81.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_r81.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_r81.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_r81.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_send_r82.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_r82.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_r82.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_r82.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_send_rl1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_rl1.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_rl1.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_rl1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_send_rl2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_rl2.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_rl2.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_rl2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_send_rs1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_rs1.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_rs1.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_rs1.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_send_rs2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch2_send_rs2.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch2_send_rs2.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_send_rs2.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_sm_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_sm_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_sm_3d_r4.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_sm_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_sm_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_sm_3d_r8.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_sm_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_sm_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_sm_3d_rl.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_sm_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_sm_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_sm_3d_rs.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_3d_r4.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_3d_r8.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_3d_rl.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_3d_rs.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_agrid_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_agrid_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_agrid_3d_r4.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_agrid_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_agrid_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_agrid_3d_r8.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_agrid_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_agrid_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_agrid_3d_rl.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_agrid_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_agrid_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_agrid_3d_rs.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_bgrid_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_bgrid_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_bgrid_3d_r4.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_bgrid_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_bgrid_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_bgrid_3d_r8.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_bgrid_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_bgrid_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_bgrid_3d_rl.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_bgrid_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_bgrid_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_bgrid_3d_rs.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_cgrid_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_cgrid_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_cgrid_3d_r4.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_cgrid_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_cgrid_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_cgrid_3d_r8.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_cgrid_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_cgrid_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_cgrid_3d_rl.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_cgrid_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_cgrid_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_cgrid_3d_rs.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_dgrid_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_dgrid_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_dgrid_3d_r4.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_dgrid_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_dgrid_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_dgrid_3d_r8.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_dgrid_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_dgrid_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_dgrid_3d_rl.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_uv_dgrid_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_uv_dgrid_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_uv_dgrid_3d_rs.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_z_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_z_3d_r4.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_z_3d_r4.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_z_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_z_3d_r8.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_z_3d_r8.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_z_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_z_3d_rl.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_z_3d_rl.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch2_z_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
exch2_z_3d_rs.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
exch2_z_3d_rs.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
exch_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_3d_r4.f: SIZE.h /usr/include/stdc-predef.h
exch_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_3d_r8.f: SIZE.h /usr/include/stdc-predef.h
exch_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_3d_rl.f: SIZE.h /usr/include/stdc-predef.h
exch_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_3d_rs.f: SIZE.h /usr/include/stdc-predef.h
exch_cycle_ebl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h EXCH.h
exch_cycle_ebl.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_cycle_ebl.f: SIZE.h /usr/include/stdc-predef.h
exch_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h EXCH.h
exch_init.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_init.f: SIZE.h /usr/include/stdc-predef.h
exch_r4_recv_get_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r4_recv_get_x.f: EXCH.h
exch_r4_recv_get_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r4_recv_get_x.f: SIZE.h /usr/include/stdc-predef.h
exch_r4_recv_get_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r4_recv_get_y.f: EXCH.h
exch_r4_recv_get_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r4_recv_get_y.f: SIZE.h /usr/include/stdc-predef.h
exch_r4_send_put_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r4_send_put_x.f: EXCH.h
exch_r4_send_put_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r4_send_put_x.f: SIZE.h /usr/include/stdc-predef.h
exch_r4_send_put_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r4_send_put_y.f: EXCH.h
exch_r4_send_put_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r4_send_put_y.f: SIZE.h /usr/include/stdc-predef.h
exch_r8_recv_get_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r8_recv_get_x.f: EXCH.h
exch_r8_recv_get_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r8_recv_get_x.f: SIZE.h /usr/include/stdc-predef.h
exch_r8_recv_get_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r8_recv_get_y.f: EXCH.h
exch_r8_recv_get_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r8_recv_get_y.f: SIZE.h /usr/include/stdc-predef.h
exch_r8_send_put_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r8_send_put_x.f: EXCH.h
exch_r8_send_put_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r8_send_put_x.f: SIZE.h /usr/include/stdc-predef.h
exch_r8_send_put_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_r8_send_put_y.f: EXCH.h
exch_r8_send_put_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_r8_send_put_y.f: SIZE.h /usr/include/stdc-predef.h
exch_rl_recv_get_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rl_recv_get_x.f: EXCH.h
exch_rl_recv_get_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rl_recv_get_x.f: SIZE.h /usr/include/stdc-predef.h
exch_rl_recv_get_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rl_recv_get_y.f: EXCH.h
exch_rl_recv_get_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rl_recv_get_y.f: SIZE.h /usr/include/stdc-predef.h
exch_rl_send_put_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rl_send_put_x.f: EXCH.h
exch_rl_send_put_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rl_send_put_x.f: SIZE.h /usr/include/stdc-predef.h
exch_rl_send_put_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rl_send_put_y.f: EXCH.h
exch_rl_send_put_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rl_send_put_y.f: SIZE.h /usr/include/stdc-predef.h
exch_rs_recv_get_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rs_recv_get_x.f: EXCH.h
exch_rs_recv_get_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rs_recv_get_x.f: SIZE.h /usr/include/stdc-predef.h
exch_rs_recv_get_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rs_recv_get_y.f: EXCH.h
exch_rs_recv_get_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rs_recv_get_y.f: SIZE.h /usr/include/stdc-predef.h
exch_rs_send_put_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rs_send_put_x.f: EXCH.h
exch_rs_send_put_x.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rs_send_put_x.f: SIZE.h /usr/include/stdc-predef.h
exch_rs_send_put_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
exch_rs_send_put_y.f: EXCH.h
exch_rs_send_put_y.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
exch_rs_send_put_y.f: SIZE.h /usr/include/stdc-predef.h
exch_s3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_s3d_r4.f: SIZE.h /usr/include/stdc-predef.h
exch_s3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_s3d_r8.f: SIZE.h /usr/include/stdc-predef.h
exch_s3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_s3d_rl.f: SIZE.h /usr/include/stdc-predef.h
exch_s3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_s3d_rs.f: SIZE.h /usr/include/stdc-predef.h
exch_sm_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_sm_3d_r4.f: SIZE.h /usr/include/stdc-predef.h
exch_sm_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_sm_3d_r8.f: SIZE.h /usr/include/stdc-predef.h
exch_sm_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_sm_3d_rl.f: SIZE.h /usr/include/stdc-predef.h
exch_sm_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_sm_3d_rs.f: SIZE.h /usr/include/stdc-predef.h
exch_uv_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_3d_r4.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_3d_r8.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_3d_rl.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_3d_rs.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_agrid_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_agrid_3d_r4.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_agrid_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_agrid_3d_r8.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_agrid_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_agrid_3d_rl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_agrid_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_agrid_3d_rs.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_bgrid_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_bgrid_3d_r4.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_bgrid_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_bgrid_3d_r8.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_bgrid_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_bgrid_3d_rl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_bgrid_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_bgrid_3d_rs.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_dgrid_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_dgrid_3d_r4.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_dgrid_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_dgrid_3d_r8.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_dgrid_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_dgrid_3d_rl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_dgrid_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
exch_uv_dgrid_3d_rs.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
exch_uv_xy_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xy_r4.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_xy_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xy_r8.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_xy_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xy_rl.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_xy_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xy_rs.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_xyz_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xyz_r4.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_xyz_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xyz_r8.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_xyz_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xyz_rl.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_uv_xyz_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_uv_xyz_rs.f: SIZE.h /usr/include/stdc-predef.h W2_OPTIONS.h
exch_xy_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xy_r4.f: SIZE.h /usr/include/stdc-predef.h
exch_xy_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xy_r8.f: SIZE.h /usr/include/stdc-predef.h
exch_xy_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xy_rl.f: SIZE.h /usr/include/stdc-predef.h
exch_xy_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xy_rs.f: SIZE.h /usr/include/stdc-predef.h
exch_xyz_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xyz_r4.f: SIZE.h /usr/include/stdc-predef.h
exch_xyz_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xyz_r8.f: SIZE.h /usr/include/stdc-predef.h
exch_xyz_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xyz_rl.f: SIZE.h /usr/include/stdc-predef.h
exch_xyz_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_xyz_rs.f: SIZE.h /usr/include/stdc-predef.h
exch_z_3d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_z_3d_r4.f: SIZE.h /usr/include/stdc-predef.h
exch_z_3d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_z_3d_r8.f: SIZE.h /usr/include/stdc-predef.h
exch_z_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_z_3d_rl.f: SIZE.h /usr/include/stdc-predef.h
exch_z_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
exch_z_3d_rs.f: SIZE.h /usr/include/stdc-predef.h
external_fields_load.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
external_fields_load.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
external_fields_load.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
external_fields_load.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h FFIELDS.h
external_fields_load.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
external_fields_load.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
external_fields_load.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
external_fields_load.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
external_fields_load.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
external_fields_load.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
external_fields_load.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
external_fields_load.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
external_fields_load.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
external_fields_load.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
external_fields_load.f: XC_MACROS.h YC_MACROS.h
external_forcing.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
external_forcing.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
external_forcing.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
external_forcing.f: EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
external_forcing.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
external_forcing.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
external_forcing.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
external_forcing.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
external_forcing.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
external_forcing.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
external_forcing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
external_forcing.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
external_forcing.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
external_forcing_surf.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
external_forcing_surf.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
external_forcing_surf.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
external_forcing_surf.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h FFIELDS.h
external_forcing_surf.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
external_forcing_surf.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
external_forcing_surf.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
external_forcing_surf.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
external_forcing_surf.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
external_forcing_surf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
external_forcing_surf.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
external_forcing_surf.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
external_forcing_surf.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
external_forcing_surf.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
external_forcing_surf.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
fill_cs_corner_ag_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
fill_cs_corner_ag_rl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
fill_cs_corner_ag_rl.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
fill_cs_corner_tr_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
fill_cs_corner_tr_rl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
fill_cs_corner_tr_rl.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
fill_cs_corner_uv_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
fill_cs_corner_uv_rl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
fill_cs_corner_uv_rl.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
fill_cs_corner_uv_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
fill_cs_corner_uv_rs.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
fill_cs_corner_uv_rs.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
fill_in_corners_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
fill_in_corners_rl.f: /usr/include/stdc-predef.h
find_alpha.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
find_alpha.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
find_alpha.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h EOS.h
find_alpha.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
find_alpha.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
find_alpha.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
find_alpha.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
find_alpha.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
find_alpha.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
find_alpha.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
find_alpha.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
find_alpha.f: XC_MACROS.h YC_MACROS.h
find_hyd_press_1d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
find_hyd_press_1d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
find_hyd_press_1d.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
find_hyd_press_1d.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
find_hyd_press_1d.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
find_hyd_press_1d.f: MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
find_hyd_press_1d.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
find_hyd_press_1d.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
find_hyd_press_1d.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
find_hyd_press_1d.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
find_hyd_press_1d.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
find_hyd_press_1d.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
find_hyd_press_1d.f: YC_MACROS.h
find_rho.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h EOS.h
find_rho.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
fool_the_compiler.f: CPP_EEMACROS.h CPP_EEOPTIONS.h /usr/include/stdc-predef.h
forcing_surf_relax.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
forcing_surf_relax.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
forcing_surf_relax.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
forcing_surf_relax.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h
forcing_surf_relax.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
forcing_surf_relax.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
forcing_surf_relax.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
forcing_surf_relax.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
forcing_surf_relax.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
forcing_surf_relax.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
forcing_surf_relax.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
forcing_surf_relax.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
forcing_surf_relax.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
forcing_surf_relax.f: XC_MACROS.h YC_MACROS.h
forward_step.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DYNVARS.h
forward_step.f: EEPARAMS.h GAD_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
forward_step.f: SHAP_FILT.h SIGREG.h SIZE.h /usr/include/stdc-predef.h
freesurf_rescale_g.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
freesurf_rescale_g.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
freesurf_rescale_g.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
freesurf_rescale_g.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
freesurf_rescale_g.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
freesurf_rescale_g.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h
freesurf_rescale_g.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
freesurf_rescale_g.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
freesurf_rescale_g.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
freesurf_rescale_g.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
freesurf_rescale_g.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
freesurf_rescale_g.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
freesurf_rescale_g.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
freeze_surface.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
freeze_surface.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
freeze_surface.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
freeze_surface.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
freeze_surface.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
freeze_surface.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
freeze_surface.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
freeze_surface.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
freeze_surface.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
freeze_surface.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
freeze_surface.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
freeze_surface.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
freeze_surface.f: YC_MACROS.h
gad_advection.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_advection.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_advection.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_advection.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_advection.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_advection.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_advection.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_advection.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_advection.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_advection.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_advection.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_advection.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
gad_advection.f: W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
gad_advscheme.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h GAD.h
gad_advscheme.f: GAD_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
gad_advscheme.f: /usr/include/stdc-predef.h
gad_biharm_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_biharm_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_biharm_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_biharm_r.f: FCORI_MACROS.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_biharm_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_biharm_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_biharm_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_biharm_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_biharm_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_biharm_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_biharm_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_biharm_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_biharm_r.f: YC_MACROS.h
gad_biharm_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_biharm_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_biharm_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_biharm_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_biharm_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_biharm_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_biharm_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_biharm_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_biharm_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_biharm_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_biharm_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_biharm_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_biharm_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_biharm_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_biharm_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_biharm_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_biharm_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_biharm_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_biharm_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_biharm_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_biharm_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_biharm_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_biharm_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_biharm_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_c2_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_c2_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c2_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_c2_adv_r.f: FCORI_MACROS.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_c2_adv_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_c2_adv_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_c2_adv_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_c2_adv_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c2_adv_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c2_adv_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c2_adv_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_c2_adv_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_c2_adv_r.f: YC_MACROS.h
gad_c2_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_c2_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c2_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_c2_adv_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_c2_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_c2_adv_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_c2_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_c2_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_c2_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_c2_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_c2_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c2_adv_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_c2_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_c2_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c2_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_c2_adv_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_c2_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_c2_adv_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_c2_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_c2_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_c2_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_c2_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_c2_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c2_adv_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_c2_impl_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_c2_impl_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c2_impl_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_c2_impl_r.f: FCORI_MACROS.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_c2_impl_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_c2_impl_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_c2_impl_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_c2_impl_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c2_impl_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c2_impl_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c2_impl_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_c2_impl_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_c2_impl_r.f: YC_MACROS.h
gad_c4_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_c4_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c4_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_c4_adv_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_c4_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_c4_adv_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_c4_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_c4_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_c4_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_c4_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_c4_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c4_adv_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_c4_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_c4_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c4_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_c4_adv_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_c4_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_c4_adv_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_c4_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_c4_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_c4_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_c4_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_c4_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c4_adv_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_c4_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_c4_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c4_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_c4_adv_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_c4_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_c4_adv_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_c4_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_c4_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_c4_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_c4_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_c4_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c4_adv_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_calc_rhs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_calc_rhs.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_calc_rhs.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_calc_rhs.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_calc_rhs.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_calc_rhs.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_calc_rhs.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_calc_rhs.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_calc_rhs.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_calc_rhs.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_calc_rhs.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
gad_calc_rhs.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_calc_rhs.f: YC_MACROS.h
gad_check.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h GAD.h
gad_check.f: GAD_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
gad_check.f: /usr/include/stdc-predef.h
gad_del2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_del2.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_del2.f: DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD_OPTIONS.h GRID.h
gad_del2.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_del2.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h
gad_del2.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_del2.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_del2.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_del2.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
gad_del2.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_del2.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_diagnostics_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_diagnostics_init.f: EEPARAMS.h GAD.h GAD_OPTIONS.h PACKAGES_CONFIG.h
gad_diagnostics_init.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
gad_diagnostics_state.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_diagnostics_state.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_diagnostics_state.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_diagnostics_state.f: EEPARAMS.h FCORI_MACROS.h GAD.h GAD_OPTIONS.h
gad_diagnostics_state.f: GAD_SOM_VARS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_diagnostics_state.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_diagnostics_state.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_diagnostics_state.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_diagnostics_state.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_diagnostics_state.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_diagnostics_state.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_diagnostics_state.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_diagnostics_state.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_diagnostics_state.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_diagnostics_state.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_diff_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_diff_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_diff_r.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
gad_diff_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_diff_r.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
gad_diff_r.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_diff_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_diff_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_diff_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_diff_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_diff_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
gad_diff_r.f: XC_MACROS.h YC_MACROS.h
gad_diff_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_diff_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_diff_x.f: DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD_OPTIONS.h GRID.h
gad_diff_x.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_diff_x.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h
gad_diff_x.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_diff_x.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_diff_x.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_diff_x.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
gad_diff_x.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_diff_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_diff_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_diff_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_diff_y.f: DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD_OPTIONS.h GRID.h
gad_diff_y.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_diff_y.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h
gad_diff_y.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_diff_y.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_diff_y.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_diff_y.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
gad_diff_y.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_diff_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_dst2u1_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst2u1_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst2u1_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_dst2u1_adv_r.f: GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst2u1_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_dst2u1_adv_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
gad_dst2u1_adv_r.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst2u1_adv_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst2u1_adv_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst2u1_adv_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst2u1_adv_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_dst2u1_adv_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_dst2u1_adv_r.f: YC_MACROS.h
gad_dst2u1_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst2u1_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst2u1_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_dst2u1_adv_x.f: GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst2u1_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_dst2u1_adv_x.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
gad_dst2u1_adv_x.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst2u1_adv_x.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst2u1_adv_x.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst2u1_adv_x.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst2u1_adv_x.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_dst2u1_adv_x.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_dst2u1_adv_x.f: YC_MACROS.h
gad_dst2u1_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst2u1_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst2u1_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_dst2u1_adv_y.f: GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst2u1_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_dst2u1_adv_y.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
gad_dst2u1_adv_y.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst2u1_adv_y.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst2u1_adv_y.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst2u1_adv_y.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst2u1_adv_y.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_dst2u1_adv_y.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_dst2u1_adv_y.f: YC_MACROS.h
gad_dst2u1_impl_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst2u1_impl_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst2u1_impl_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_dst2u1_impl_r.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_dst2u1_impl_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst2u1_impl_r.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
gad_dst2u1_impl_r.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_dst2u1_impl_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_dst2u1_impl_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_dst2u1_impl_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst2u1_impl_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_dst2u1_impl_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_dst2u1_impl_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_dst3_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst3_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst3_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_dst3_adv_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst3_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_dst3_adv_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_dst3_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst3_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_dst3_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_dst3_adv_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_dst3_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst3_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst3_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_dst3_adv_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst3_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_dst3_adv_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_dst3_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst3_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_dst3_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_dst3_adv_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_dst3_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst3_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst3_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_dst3_adv_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst3_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_dst3_adv_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_dst3_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst3_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_dst3_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_dst3_adv_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_dst3fl_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst3fl_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst3fl_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_dst3fl_adv_r.f: GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst3fl_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_dst3fl_adv_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
gad_dst3fl_adv_r.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst3fl_adv_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst3fl_adv_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst3fl_adv_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst3fl_adv_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_dst3fl_adv_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_dst3fl_adv_r.f: YC_MACROS.h
gad_dst3fl_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst3fl_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst3fl_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_dst3fl_adv_x.f: GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst3fl_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_dst3fl_adv_x.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
gad_dst3fl_adv_x.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst3fl_adv_x.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst3fl_adv_x.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst3fl_adv_x.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst3fl_adv_x.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_dst3fl_adv_x.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_dst3fl_adv_x.f: YC_MACROS.h
gad_dst3fl_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst3fl_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst3fl_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h
gad_dst3fl_adv_y.f: GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_dst3fl_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_dst3fl_adv_y.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
gad_dst3fl_adv_y.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst3fl_adv_y.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst3fl_adv_y.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst3fl_adv_y.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst3fl_adv_y.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_dst3fl_adv_y.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_dst3fl_adv_y.f: YC_MACROS.h
gad_dst3fl_impl_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_dst3fl_impl_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_dst3fl_impl_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_dst3fl_impl_r.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_dst3fl_impl_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst3fl_impl_r.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
gad_dst3fl_impl_r.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_dst3fl_impl_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_dst3fl_impl_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_dst3fl_impl_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst3fl_impl_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_dst3fl_impl_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_dst3fl_impl_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_exch_som.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h GAD.h
gad_exch_som.f: GAD_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
gad_exch_som.f: /usr/include/stdc-predef.h
gad_fluxlimit_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_fluxlimit_adv_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_fluxlimit_adv_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_fluxlimit_adv_r.f: EEPARAMS.h FCORI_MACROS.h GAD_FLUX_LIMITER.h
gad_fluxlimit_adv_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_fluxlimit_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_fluxlimit_adv_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_fluxlimit_adv_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_fluxlimit_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_adv_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_fluxlimit_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_fluxlimit_adv_x.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_fluxlimit_adv_x.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_fluxlimit_adv_x.f: EEPARAMS.h FCORI_MACROS.h GAD_FLUX_LIMITER.h
gad_fluxlimit_adv_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_fluxlimit_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_fluxlimit_adv_x.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h
gad_fluxlimit_adv_x.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_fluxlimit_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_adv_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_fluxlimit_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_fluxlimit_adv_y.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_fluxlimit_adv_y.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_fluxlimit_adv_y.f: EEPARAMS.h FCORI_MACROS.h GAD_FLUX_LIMITER.h
gad_fluxlimit_adv_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_fluxlimit_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_fluxlimit_adv_y.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h
gad_fluxlimit_adv_y.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_fluxlimit_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_adv_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_fluxlimit_impl_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_fluxlimit_impl_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_fluxlimit_impl_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_fluxlimit_impl_r.f: EEPARAMS.h FCORI_MACROS.h GAD_FLUX_LIMITER.h
gad_fluxlimit_impl_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_fluxlimit_impl_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_fluxlimit_impl_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_fluxlimit_impl_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_fluxlimit_impl_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_impl_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_grad_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_grad_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_grad_x.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
gad_grad_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_grad_x.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
gad_grad_x.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_grad_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_grad_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_grad_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_grad_x.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_grad_x.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_grad_x.f: YC_MACROS.h
gad_grad_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_grad_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_grad_y.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
gad_grad_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_grad_y.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
gad_grad_y.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_grad_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_grad_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_grad_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_grad_y.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_grad_y.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_grad_y.f: YC_MACROS.h
gad_implicit_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_implicit_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_implicit_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_implicit_r.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_implicit_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_implicit_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_implicit_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_implicit_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_implicit_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_implicit_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_implicit_r.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
gad_implicit_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_implicit_r.f: YC_MACROS.h
gad_init_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
gad_init_fixed.f: GAD.h GAD_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
gad_init_fixed.f: /usr/include/stdc-predef.h
gad_init_varia.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
gad_init_varia.f: GAD.h GAD_OPTIONS.h GAD_SOM_VARS.h PACKAGES_CONFIG.h
gad_init_varia.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
gad_os7mp_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_os7mp_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_os7mp_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_os7mp_adv_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_os7mp_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_os7mp_adv_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_os7mp_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_os7mp_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_os7mp_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_os7mp_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_os7mp_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_os7mp_adv_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_os7mp_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_os7mp_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_os7mp_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_os7mp_adv_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_os7mp_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_os7mp_adv_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_os7mp_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_os7mp_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_os7mp_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_os7mp_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_os7mp_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_os7mp_adv_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_os7mp_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_os7mp_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_os7mp_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_os7mp_adv_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_os7mp_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_os7mp_adv_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_os7mp_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_os7mp_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_os7mp_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_os7mp_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_os7mp_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_os7mp_adv_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_osc_hat_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_osc_hat_r.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gad_osc_hat_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_osc_hat_x.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gad_osc_hat_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_osc_hat_y.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gad_osc_mul_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_osc_mul_r.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gad_osc_mul_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_osc_mul_x.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gad_osc_mul_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_osc_mul_y.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gad_plm_fun.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_plm_fun.f: PACKAGES_CONFIG.h /usr/include/stdc-predef.h
gad_ppm_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_adv_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_adv_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_adv_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_adv_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_adv_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_adv_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_adv_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_adv_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_adv_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_flx_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_flx_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_flx_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_flx_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_flx_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_flx_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_flx_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_flx_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_flx_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_flx_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_flx_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_flx_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_flx_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_flx_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_flx_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_flx_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_flx_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_flx_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_flx_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_flx_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_flx_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_flx_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_flx_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_flx_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_flx_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_flx_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_flx_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_flx_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_flx_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_flx_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_flx_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_flx_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_flx_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_flx_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_flx_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_flx_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_fun.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_ppm_fun.f: PACKAGES_CONFIG.h /usr/include/stdc-predef.h
gad_ppm_hat_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_hat_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_hat_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_hat_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_hat_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_hat_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_hat_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_hat_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_hat_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_hat_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_hat_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_hat_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_hat_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_hat_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_hat_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_hat_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_hat_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_hat_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_hat_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_hat_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_hat_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_hat_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_hat_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_hat_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_hat_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_hat_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_hat_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_hat_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_hat_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_hat_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_hat_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_hat_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_hat_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_hat_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_hat_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_hat_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_p3e_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_p3e_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_p3e_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_p3e_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_p3e_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_p3e_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_p3e_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_p3e_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_p3e_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_p3e_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_p3e_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_p3e_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_p3e_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_p3e_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_p3e_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_p3e_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_p3e_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_p3e_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_p3e_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_p3e_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_p3e_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_p3e_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_p3e_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_p3e_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_ppm_p3e_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_ppm_p3e_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_ppm_p3e_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_ppm_p3e_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_ppm_p3e_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_ppm_p3e_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_ppm_p3e_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_ppm_p3e_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_ppm_p3e_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_ppm_p3e_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_ppm_p3e_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_ppm_p3e_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_adv_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_adv_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_adv_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_adv_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_adv_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_adv_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_adv_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_adv_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_adv_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_flx_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_flx_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_flx_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_flx_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_flx_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_flx_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_flx_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_flx_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_flx_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_flx_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_flx_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_flx_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_flx_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_flx_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_flx_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_flx_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_flx_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_flx_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_flx_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_flx_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_flx_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_flx_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_flx_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_flx_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_flx_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_flx_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_flx_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_flx_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_flx_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_flx_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_flx_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_flx_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_flx_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_flx_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_flx_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_flx_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_fun.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD_OPTIONS.h
gad_pqm_fun.f: PACKAGES_CONFIG.h /usr/include/stdc-predef.h
gad_pqm_hat_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_hat_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_hat_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_hat_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_hat_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_hat_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_hat_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_hat_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_hat_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_hat_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_hat_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_hat_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_hat_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_hat_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_hat_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_hat_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_hat_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_hat_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_hat_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_hat_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_hat_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_hat_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_hat_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_hat_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_hat_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_hat_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_hat_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_hat_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_hat_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_hat_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_hat_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_hat_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_hat_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_hat_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_hat_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_hat_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_p5e_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_p5e_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_p5e_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_p5e_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_p5e_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_p5e_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_p5e_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_p5e_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_p5e_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_p5e_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_p5e_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_p5e_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_p5e_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_p5e_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_p5e_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_p5e_x.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_p5e_x.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_p5e_x.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_p5e_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_p5e_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_p5e_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_p5e_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_p5e_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_p5e_x.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_pqm_p5e_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_pqm_p5e_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_pqm_p5e_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_pqm_p5e_y.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_pqm_p5e_y.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_pqm_p5e_y.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_pqm_p5e_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_pqm_p5e_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_pqm_p5e_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_pqm_p5e_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_pqm_p5e_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_pqm_p5e_y.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_read_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
gad_read_pickup.f: GAD.h GAD_OPTIONS.h GAD_SOM_VARS.h MNC_PARAMS.h
gad_read_pickup.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
gad_read_pickup.f: /usr/include/stdc-predef.h
gad_som_advect.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_som_advect.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_som_advect.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_som_advect.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_som_advect.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_som_advect.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_som_advect.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_som_advect.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_som_advect.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_som_advect.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_som_advect.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_som_advect.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
gad_som_advect.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
gad_som_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_som_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_som_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_som_adv_r.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_som_adv_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_som_adv_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_som_adv_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_som_adv_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_som_adv_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_som_adv_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_som_adv_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
gad_som_adv_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
gad_som_adv_r.f: YC_MACROS.h
gad_som_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h GAD.h
gad_som_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
gad_som_adv_x.f: /usr/include/stdc-predef.h
gad_som_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h GAD.h
gad_som_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
gad_som_adv_y.f: /usr/include/stdc-predef.h
gad_som_exchanges.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
gad_som_exchanges.f: GAD.h GAD_OPTIONS.h GAD_SOM_VARS.h PACKAGES_CONFIG.h
gad_som_exchanges.f: SIZE.h /usr/include/stdc-predef.h
gad_som_fill_cs_corner.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_som_fill_cs_corner.f: EEPARAMS.h GAD.h GAD_OPTIONS.h PACKAGES_CONFIG.h
gad_som_fill_cs_corner.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
gad_som_lim_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD.h
gad_som_lim_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
gad_som_lim_r.f: /usr/include/stdc-predef.h
gad_som_prep_cs_corner.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gad_som_prep_cs_corner.f: EEPARAMS.h GAD.h GAD_OPTIONS.h PACKAGES_CONFIG.h
gad_som_prep_cs_corner.f: SIZE.h /usr/include/stdc-predef.h
gad_u3_adv_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_u3_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_u3_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GAD.h
gad_u3_adv_r.f: GAD_OPTIONS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
gad_u3_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
gad_u3_adv_r.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
gad_u3_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_u3_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_u3_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_u3_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_u3_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_u3_adv_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_u3_adv_x.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD.h
gad_u3_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
gad_u3_adv_x.f: /usr/include/stdc-predef.h
gad_u3_adv_y.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h GAD.h
gad_u3_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
gad_u3_adv_y.f: /usr/include/stdc-predef.h
gad_u3c4_impl_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
gad_u3c4_impl_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_u3c4_impl_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
gad_u3c4_impl_r.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GRID.h GRID_MACROS.h
gad_u3c4_impl_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
gad_u3c4_impl_r.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
gad_u3c4_impl_r.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
gad_u3c4_impl_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_u3c4_impl_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_u3c4_impl_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_u3c4_impl_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
gad_u3c4_impl_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_u3c4_impl_r.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gad_write_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
gad_write_pickup.f: GAD.h GAD_OPTIONS.h GAD_SOM_VARS.h MNC_PARAMS.h
gad_write_pickup.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
gad_write_pickup.f: /usr/include/stdc-predef.h
gather_2d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
gather_2d_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_2d_r4.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gather_2d_r4.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
gather_2d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
gather_2d_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_2d_r8.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gather_2d_r8.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
gather_2d_wh_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
gather_2d_wh_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_2d_wh_r4.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gather_2d_wh_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
gather_2d_wh_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_2d_wh_r8.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
gather_vec_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
gather_vec_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_vec_r4.f: SIZE.h /usr/include/stdc-predef.h
gather_vec_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
gather_vec_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_vec_r8.f: SIZE.h /usr/include/stdc-predef.h
gather_xz.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
gather_xz.f: EESUPPORT.h
gather_xz.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_xz.f: SIZE.h /usr/include/stdc-predef.h
gather_yz.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
gather_yz.f: EESUPPORT.h
gather_yz.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gather_yz.f: SIZE.h /usr/include/stdc-predef.h
generate_tag.f: CPLR_SIG.h /usr/include/stdc-predef.h
get_periodic_interval.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
get_periodic_interval.f: /usr/include/stdc-predef.h
get_write_global_fld.f: CPP_EEMACROS.h CPP_EEOPTIONS.h
get_write_global_fld.f: /usr/include/stdc-predef.h
global_max.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
global_max.f: GLOBAL_MAX.h
global_max.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
global_max.f: SIZE.h /usr/include/stdc-predef.h
global_sum.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
global_sum.f: GLOBAL_SUM.h
global_sum.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
global_sum.f: SIZE.h /usr/include/stdc-predef.h
global_sum_singlecpu.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEBUFF_SCPU.h
global_sum_singlecpu.f: EEPARAMS.h EESUPPORT.h GLOBAL_SUM.h
global_sum_singlecpu.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
global_sum_singlecpu.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
global_sum_singlecpu.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
global_sum_tile.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
global_sum_tile.f: GLOBAL_SUM.h
global_sum_tile.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
global_sum_tile.f: SIZE.h /usr/include/stdc-predef.h
global_vec_sum.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
global_vec_sum.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
global_vec_sum.f: SIZE.h /usr/include/stdc-predef.h
grad_sigma.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
grad_sigma.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
grad_sigma.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
grad_sigma.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
grad_sigma.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
grad_sigma.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
grad_sigma.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
grad_sigma.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
grad_sigma.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
grad_sigma.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
grad_sigma.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
gsum.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
gsum.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
gsum.f: SIZE.h /usr/include/stdc-predef.h
gsw_teos10.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
gsw_teos10.f: /usr/include/stdc-predef.h
impldiff.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
impldiff.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
impldiff.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
impldiff.f: GAD.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
impldiff.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
impldiff.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
impldiff.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
impldiff.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
impldiff.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
impldiff.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
impldiff.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_cartesian_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
ini_cartesian_grid.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_cartesian_grid.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_cartesian_grid.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ini_cartesian_grid.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_cartesian_grid.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h
ini_cartesian_grid.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_cartesian_grid.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_cartesian_grid.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_cartesian_grid.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_cartesian_grid.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
ini_cartesian_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_cartesian_grid.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_cg2d.f: CG2D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_cg2d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_cg2d.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
ini_cg2d.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_cg2d.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
ini_cg2d.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_cg2d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_cg2d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_cg2d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cg2d.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
ini_cg2d.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
ini_cg2d.f: YC_MACROS.h
ini_cg3d.f: CG3D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_cg3d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_cg3d.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
ini_cg3d.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_cg3d.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
ini_cg3d.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_cg3d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_cg3d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_cg3d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cg3d.f: RECIP_HFACW_MACROS.h SIZE.h SOLVE_FOR_PRESSURE3D.h SURFACE.h
ini_cg3d.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
ini_cg3d.f: XC_MACROS.h YC_MACROS.h
ini_communication_patterns.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
ini_communication_patterns.f: EESUPPORT.h EXCH.h
ini_communication_patterns.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
ini_communication_patterns.f: PACKAGES_CONFIG.h SIZE.h
ini_communication_patterns.f: /usr/include/stdc-predef.h
ini_cori.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_cori.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_cori.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
ini_cori.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_cori.f: MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h MONITOR.h
ini_cori.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
ini_cori.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_cori.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_cori.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_cori.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
ini_cori.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
ini_cori.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
ini_curvilinear_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
ini_curvilinear_grid.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_curvilinear_grid.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_curvilinear_grid.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ini_curvilinear_grid.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_curvilinear_grid.f: MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h
ini_curvilinear_grid.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_curvilinear_grid.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_curvilinear_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_curvilinear_grid.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_curvilinear_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_curvilinear_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_curvilinear_grid.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
ini_curvilinear_grid.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
ini_curvilinear_grid.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h
ini_curvilinear_grid.f: YC_MACROS.h
ini_cylinder_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_cylinder_grid.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_cylinder_grid.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_cylinder_grid.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_cylinder_grid.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
ini_cylinder_grid.f: MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_cylinder_grid.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_cylinder_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_cylinder_grid.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_cylinder_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cylinder_grid.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
ini_cylinder_grid.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
ini_cylinder_grid.f: YC_MACROS.h
ini_depths.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_depths.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_depths.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
ini_depths.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_depths.f: MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h PACKAGES_CONFIG.h
ini_depths.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
ini_depths.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_depths.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_depths.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_depths.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
ini_depths.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
ini_depths.f: XC_MACROS.h YC_MACROS.h
ini_dynvars.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DYNVARS.h
ini_dynvars.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
ini_dynvars.f: /usr/include/stdc-predef.h
ini_eos.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_eos.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_eos.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h EOS.h FCORI_MACROS.h GRID.h
ini_eos.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_eos.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_eos.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_eos.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_eos.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_eos.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ini_eos.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_eos.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_ffields.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
ini_ffields.f: FFIELDS.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
ini_fields.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
ini_fields.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
ini_forcing.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_forcing.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_forcing.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_forcing.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_forcing.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_forcing.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_forcing.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_forcing.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_forcing.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_forcing.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ini_forcing.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_forcing.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_global_domain.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_global_domain.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_global_domain.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_global_domain.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_global_domain.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
ini_global_domain.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
ini_global_domain.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_global_domain.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_global_domain.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_global_domain.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_global_domain.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
ini_global_domain.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_global_domain.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
ini_global_domain.f: W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
ini_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_grid.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_grid.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
ini_grid.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_grid.f: MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h MONITOR.h
ini_grid.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
ini_grid.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_grid.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_grid.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
ini_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
ini_grid.f: XC_MACROS.h YC_MACROS.h
ini_linear_phisurf.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
ini_linear_phisurf.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_linear_phisurf.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_linear_phisurf.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ini_linear_phisurf.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_linear_phisurf.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
ini_linear_phisurf.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_linear_phisurf.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_linear_phisurf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_linear_phisurf.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_linear_phisurf.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
ini_linear_phisurf.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_linear_phisurf.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_local_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
ini_local_grid.f: PACKAGES_CONFIG.h PARAMS.h SET_GRID.h SIZE.h
ini_local_grid.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
ini_local_grid.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
ini_masks_etc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_masks_etc.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_masks_etc.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_masks_etc.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_masks_etc.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_masks_etc.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_masks_etc.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_masks_etc.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_masks_etc.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_masks_etc.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_masks_etc.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
ini_masks_etc.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
ini_masks_etc.f: YC_MACROS.h
ini_mixing.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_mixing.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_mixing.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
ini_mixing.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ini_mixing.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
ini_mixing.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
ini_mixing.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_mixing.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_mixing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_mixing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
ini_mixing.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
ini_mixing.f: XC_MACROS.h YC_MACROS.h
ini_mnc_vars.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_mnc_vars.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_mnc_vars.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_mnc_vars.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_mnc_vars.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_mnc_vars.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_mnc_vars.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_mnc_vars.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_mnc_vars.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_mnc_vars.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ini_mnc_vars.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_mnc_vars.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_model_io.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEBUFF_SCPU.h
ini_model_io.f: EEPARAMS.h EESUPPORT.h
ini_model_io.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
ini_model_io.f: PACKAGES_CONFIG.h PARAMS.h RESTART.h SIZE.h
ini_model_io.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h W2_EXCH2_SIZE.h
ini_model_io.f: W2_EXCH2_TOPOLOGY.h
ini_nh_fields.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_nh_fields.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_nh_fields.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_nh_fields.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_nh_fields.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_nh_fields.f: NH_VARS.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
ini_nh_fields.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_nh_fields.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_nh_fields.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_nh_fields.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h RESTART.h SIZE.h
ini_nh_fields.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_nh_fields.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_nh_vars.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
ini_nh_vars.f: NH_VARS.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
ini_nlfs_vars.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_nlfs_vars.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_nlfs_vars.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_nlfs_vars.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_nlfs_vars.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_nlfs_vars.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_nlfs_vars.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_nlfs_vars.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_nlfs_vars.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_nlfs_vars.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_nlfs_vars.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
ini_nlfs_vars.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
ini_nlfs_vars.f: YC_MACROS.h
ini_parms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_parms.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_parms.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h EOS.h FCORI_MACROS.h GRID.h
ini_parms.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_parms.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
ini_parms.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_parms.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_parms.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_parms.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_parms.f: RECIP_HFACW_MACROS.h SET_GRID.h SIZE.h TANPHIATU_MACROS.h
ini_parms.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
ini_parms.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h XC_MACROS.h YC_MACROS.h
ini_p_ground.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_p_ground.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_p_ground.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_p_ground.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_p_ground.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_p_ground.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
ini_p_ground.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_p_ground.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_p_ground.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_p_ground.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
ini_p_ground.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_p_ground.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_pressure.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_pressure.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_pressure.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
ini_pressure.f: EOS.h FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_pressure.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_pressure.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_pressure.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_pressure.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_pressure.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_pressure.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ini_pressure.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_pressure.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_procs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
ini_procs.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
ini_procs.f: SIZE.h /usr/include/stdc-predef.h
ini_psurf.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_psurf.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_psurf.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
ini_psurf.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_psurf.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
ini_psurf.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_psurf.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_psurf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_psurf.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_psurf.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
ini_psurf.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
ini_psurf.f: YC_MACROS.h
ini_salt.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_salt.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_salt.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
ini_salt.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_salt.f: MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h PACKAGES_CONFIG.h
ini_salt.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_salt.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_salt.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_salt.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_salt.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_salt.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_sigma_hfac.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_sigma_hfac.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_sigma_hfac.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_sigma_hfac.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_sigma_hfac.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
ini_sigma_hfac.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
ini_sigma_hfac.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_sigma_hfac.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_sigma_hfac.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_sigma_hfac.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
ini_sigma_hfac.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_sigma_hfac.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_spherical_polar_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
ini_spherical_polar_grid.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_spherical_polar_grid.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_spherical_polar_grid.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_spherical_polar_grid.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_spherical_polar_grid.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
ini_spherical_polar_grid.f: MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_spherical_polar_grid.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_spherical_polar_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_spherical_polar_grid.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_spherical_polar_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_spherical_polar_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_spherical_polar_grid.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
ini_spherical_polar_grid.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
ini_spherical_polar_grid.f: XC_MACROS.h YC_MACROS.h
ini_theta.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_theta.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_theta.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
ini_theta.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_theta.f: MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h PACKAGES_CONFIG.h
ini_theta.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
ini_theta.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_theta.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_theta.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_theta.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_theta.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_threading_environment.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
ini_threading_environment.f: EESUPPORT.h
ini_threading_environment.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
ini_threading_environment.f: PACKAGES_CONFIG.h SIZE.h
ini_threading_environment.f: /usr/include/stdc-predef.h
initialise_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
initialise_fixed.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
initialise_fixed.f: /usr/include/stdc-predef.h
initialise_varia.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DYNVARS.h
initialise_varia.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h SURFACE.h
initialise_varia.f: /usr/include/stdc-predef.h
ini_vel.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_vel.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_vel.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
ini_vel.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_vel.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_vel.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_vel.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_vel.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_vel.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ini_vel.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_vel.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
ini_vertical_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
ini_vertical_grid.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_vertical_grid.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
ini_vertical_grid.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
ini_vertical_grid.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
ini_vertical_grid.f: MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
ini_vertical_grid.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_vertical_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_vertical_grid.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_vertical_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_vertical_grid.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
ini_vertical_grid.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
ini_vertical_grid.f: YC_MACROS.h
integrate_for_w.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
integrate_for_w.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
integrate_for_w.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
integrate_for_w.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
integrate_for_w.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
integrate_for_w.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
integrate_for_w.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
integrate_for_w.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
integrate_for_w.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
integrate_for_w.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
integrate_for_w.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
integrate_for_w.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
integr_continuity.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
integr_continuity.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
integr_continuity.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
integr_continuity.f: EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
integr_continuity.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
integr_continuity.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
integr_continuity.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
integr_continuity.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
integr_continuity.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
integr_continuity.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
integr_continuity.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
integr_continuity.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
integr_continuity.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
lef_zero.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
lef_zero.f: /usr/include/stdc-predef.h
load_fields_driver.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
load_fields_driver.f: FFIELDS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
load_fields_driver.f: /usr/include/stdc-predef.h
load_grid_spacing.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
load_grid_spacing.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
load_grid_spacing.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
load_grid_spacing.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
load_grid_spacing.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
load_grid_spacing.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
load_grid_spacing.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
load_grid_spacing.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
load_grid_spacing.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
load_grid_spacing.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
load_grid_spacing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SET_GRID.h
load_grid_spacing.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
load_grid_spacing.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
load_grid_spacing.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h XC_MACROS.h YC_MACROS.h
load_ref_files.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
load_ref_files.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
load_ref_files.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
load_ref_files.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
load_ref_files.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
load_ref_files.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
load_ref_files.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
load_ref_files.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
load_ref_files.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
load_ref_files.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
load_ref_files.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
load_ref_files.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
main_do_loop.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
main_do_loop.f: GAD_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
main_do_loop.f: /usr/include/stdc-predef.h
main.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h DXF_MACROS.h
main.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
main.f: DYNVARS.h DYU_MACROS.h EEPARAMS.h EESUPPORT.h FCORI_MACROS.h FFIELDS.h
main.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
main.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
main.f: MAIN_PDIRECTIVES1.h MAIN_PDIRECTIVES2.h MASKS_MACROS.h MASKW_MACROS.h
main.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
main.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
main.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
main.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
main.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIGREG.h SIZE.h SURFACE.h
main.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
main.f: XC_MACROS.h YC_MACROS.h
master_cpu_io.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
master_cpu_io.f: /usr/include/stdc-predef.h
master_cpu_thread.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
master_cpu_thread.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
master_cpu_thread.f: SIZE.h /usr/include/stdc-predef.h
mds_byteswapi4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h /usr/include/stdc-predef.h
mds_byteswapr4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h /usr/include/stdc-predef.h
mds_byteswapr8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h /usr/include/stdc-predef.h
mdsfindunit.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
mdsfindunit.f: /usr/include/stdc-predef.h
mds_flush.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
mds_flush.f: /usr/include/stdc-predef.h
mdsio_buffertorl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h /usr/include/stdc-predef.h
mdsio_buffertors.f: CPP_EEMACROS.h CPP_EEOPTIONS.h /usr/include/stdc-predef.h
mdsio_check4file.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_check4file.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_check4file.f: /usr/include/stdc-predef.h
mdsio_facef_read.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_facef_read.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mdsio_facef_read.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
mdsio_facef_read.f: W2_EXCH2_TOPOLOGY.h
mdsio_gl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_gl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_gl.f: /usr/include/stdc-predef.h
mdsio_gl_slice.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_gl_slice.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_gl_slice.f: /usr/include/stdc-predef.h
mdsio_pass_r4torl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_pass_r4torl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mdsio_pass_r4torl.f: /usr/include/stdc-predef.h
mdsio_pass_r4tors.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_pass_r4tors.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mdsio_pass_r4tors.f: /usr/include/stdc-predef.h
mdsio_pass_r8torl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_pass_r8torl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mdsio_pass_r8torl.f: /usr/include/stdc-predef.h
mdsio_pass_r8tors.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_pass_r8tors.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mdsio_pass_r8tors.f: /usr/include/stdc-predef.h
mdsio_rd_rec_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_rd_rec_rl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_rd_rec_rl.f: /usr/include/stdc-predef.h
mdsio_rd_rec_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_rd_rec_rs.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_rd_rec_rs.f: /usr/include/stdc-predef.h
mdsio_read_field.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEBUFF_SCPU.h
mdsio_read_field.f: EEPARAMS.h MDSIO_BUFF_3D.h MDSIO_OPTIONS.h
mdsio_read_field.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_read_field.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
mdsio_read_field.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
mdsio_read_meta.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_read_meta.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_read_meta.f: /usr/include/stdc-predef.h
mdsio_read_section.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_read_section.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_read_section.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
mdsio_read_section.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
mdsio_read_tape.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_read_tape.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_read_tape.f: /usr/include/stdc-predef.h
mdsio_readvec_loc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_readvec_loc.f: MDSIO_BUFF_3D.h MDSIO_OPTIONS.h PACKAGES_CONFIG.h
mdsio_readvec_loc.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
mdsio_read_whalos.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_read_whalos.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_read_whalos.f: /usr/include/stdc-predef.h
mdsio_rw_field.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h MDSIO_OPTIONS.h
mdsio_rw_field.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
mdsio_rw_slice.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h MDSIO_OPTIONS.h
mdsio_rw_slice.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
mdsio_seg4torl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h MDSIO_OPTIONS.h
mdsio_seg4torl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
mdsio_seg4tors.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h MDSIO_OPTIONS.h
mdsio_seg4tors.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
mdsio_seg8torl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h MDSIO_OPTIONS.h
mdsio_seg8torl.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
mdsio_seg8tors.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h MDSIO_OPTIONS.h
mdsio_seg8tors.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
mdsio_segxtorx_2d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mdsio_segxtorx_2d.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mdsio_segxtorx_2d.f: /usr/include/stdc-predef.h
mdsio_write_field.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mdsio_write_field.f: EEBUFF_SCPU.h EEPARAMS.h MDSIO_BUFF_3D.h MDSIO_OPTIONS.h
mdsio_write_field.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_write_field.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
mdsio_write_field.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
mdsio_writelocal.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_writelocal.f: MDSIO_BUFF_3D.h MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mdsio_writelocal.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
mdsio_writelocal.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
mdsio_write_meta.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_write_meta.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mdsio_write_meta.f: /usr/include/stdc-predef.h
mdsio_write_section.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_write_section.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_write_section.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
mdsio_write_section.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
mdsio_write_tape.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_write_tape.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_write_tape.f: /usr/include/stdc-predef.h
mdsio_writevec_loc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_writevec_loc.f: MDSIO_BUFF_3D.h MDSIO_OPTIONS.h PACKAGES_CONFIG.h
mdsio_writevec_loc.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
mdsio_write_whalos.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_write_whalos.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_write_whalos.f: /usr/include/stdc-predef.h
mdsio_wr_metafiles.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_wr_metafiles.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_wr_metafiles.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
mdsio_wr_metafiles.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
mdsio_wr_rec_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_wr_rec_rl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_wr_rec_rl.f: /usr/include/stdc-predef.h
mdsio_wr_rec_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mdsio_wr_rec_rs.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mdsio_wr_rec_rs.f: /usr/include/stdc-predef.h
mds_reclen.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
mds_reclen.f: /usr/include/stdc-predef.h
memsync.f: CPP_EEMACROS.h CPP_EEOPTIONS.h /usr/include/stdc-predef.h
mitcomponent_init.f: CPLR_SIG.h
mitcomponent_init.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcomponent_init.f: /usr/include/stdc-predef.h
mitcomponent_register.f: CPLR_SIG.h
mitcomponent_register.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcomponent_register.f: /usr/include/stdc-predef.h
mitcomponent_tile_register.f: CPLR_SIG.h
mitcomponent_tile_register.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcomponent_tile_register.f: /usr/include/stdc-predef.h
mitcoupler_init.f: CPLR_SIG.h
mitcoupler_init.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcoupler_init.f: /usr/include/stdc-predef.h
mitcoupler_register.f: CPLR_SIG.h
mitcoupler_register.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcoupler_register.f: /usr/include/stdc-predef.h
mitcoupler_tile_register.f: CPLR_SIG.h
mitcoupler_tile_register.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcoupler_tile_register.f: /usr/include/stdc-predef.h
mitcplr_all_check.f: CPLR_SIG.h
mitcplr_all_check.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcplr_all_check.f: /usr/include/stdc-predef.h
mitcplr_char2dbl.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_char2int.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_char2real.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_dbl2char.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_init1.f: CPLR_SIG.h
mitcplr_init1.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcplr_init1.f: /usr/include/stdc-predef.h
mitcplr_init2a.f: CPLR_SIG.h
mitcplr_init2a.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcplr_init2a.f: /usr/include/stdc-predef.h
mitcplr_init2b.f: CPLR_SIG.h
mitcplr_init2b.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
mitcplr_init2b.f: /usr/include/stdc-predef.h
mitcplr_initcomp.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_int2char.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_match_comp.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_real2char.f: CPLR_SIG.h /usr/include/stdc-predef.h
mitcplr_sortranks.f: /usr/include/stdc-predef.h
mnc_cw_citer.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_cw_citer.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_cw_citer.f: PACKAGES_CONFIG.h /usr/include/stdc-predef.h
mnc_cw_cvars.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mnc_cw_cvars.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mnc_cw_cvars.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mnc_cw_cvars.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mnc_cw_cvars.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mnc_cw_cvars.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_cw_cvars.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mnc_cw_cvars.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mnc_cw_cvars.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mnc_cw_cvars.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mnc_cw_cvars.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mnc_cw_cvars.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mnc_cw_cvars.f: /usr/include/netcdf.inc /usr/include/stdc-predef.h
mnc_cw_cvars.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
mnc_cw_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_cw_init.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_cw_init.f: PACKAGES_CONFIG.h /usr/include/stdc-predef.h
mnc_cw_missingvals.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_cw_missingvals.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_cw_missingvals.f: PACKAGES_CONFIG.h /usr/include/stdc-predef.h
mnc_cw_model_attr.f: BUILD_INFO.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mnc_cw_model_attr.f: EEPARAMS.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_PARAMS.h
mnc_cw_model_attr.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
mnc_cw_model_attr.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
mnc_cw_model_attr.f: W2_EXCH2_TOPOLOGY.h
mnc_cwrapper.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_cwrapper.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_cwrapper.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h /usr/include/netcdf.inc
mnc_cwrapper.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
MNC_CW_READWRITE_I.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
MNC_CW_READWRITE_I.f: MNC_BUFF.h MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h
MNC_CW_READWRITE_I.f: MNC_PARAMS.h MNC_SIZE.h PACKAGES_CONFIG.h PARAMS.h
MNC_CW_READWRITE_I.f: SIZE.h /usr/include/netcdf.inc
MNC_CW_READWRITE_I.f: /usr/include/stdc-predef.h
MNC_CW_READWRITE_RL.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
MNC_CW_READWRITE_RL.f: MNC_BUFF.h MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h
MNC_CW_READWRITE_RL.f: MNC_PARAMS.h MNC_SIZE.h PACKAGES_CONFIG.h PARAMS.h
MNC_CW_READWRITE_RL.f: SIZE.h /usr/include/netcdf.inc
MNC_CW_READWRITE_RL.f: /usr/include/stdc-predef.h
MNC_CW_READWRITE_RS.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
MNC_CW_READWRITE_RS.f: MNC_BUFF.h MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h
MNC_CW_READWRITE_RS.f: MNC_PARAMS.h MNC_SIZE.h PACKAGES_CONFIG.h PARAMS.h
MNC_CW_READWRITE_RS.f: SIZE.h /usr/include/netcdf.inc
MNC_CW_READWRITE_RS.f: /usr/include/stdc-predef.h
mnc_cw_udim.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_cw_udim.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_cw_udim.f: PACKAGES_CONFIG.h /usr/include/stdc-predef.h
mnc_cw_write_grid_info.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mnc_cw_write_grid_info.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mnc_cw_write_grid_info.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mnc_cw_write_grid_info.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mnc_cw_write_grid_info.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mnc_cw_write_grid_info.f: MASKS_MACROS.h MASKW_MACROS.h MNC_COMMON.h
mnc_cw_write_grid_info.f: MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_cw_write_grid_info.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mnc_cw_write_grid_info.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mnc_cw_write_grid_info.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mnc_cw_write_grid_info.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mnc_cw_write_grid_info.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mnc_cw_write_grid_info.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mnc_cw_write_grid_info.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mnc_cw_write_grid_info.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mnc_cw_write_grid_info.f: XC_MACROS.h YC_MACROS.h
mnc_dim.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_dim.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_dim.f: PACKAGES_CONFIG.h /usr/include/netcdf.inc
mnc_dim.f: /usr/include/stdc-predef.h
mnc_dump.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h MNC_COMMON.h
mnc_dump.f: MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h PACKAGES_CONFIG.h
mnc_dump.f: /usr/include/stdc-predef.h
mnc_file.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_file.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_file.f: PACKAGES_CONFIG.h /usr/include/netcdf.inc
mnc_file.f: /usr/include/stdc-predef.h
mnc_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_grid.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_grid.f: PACKAGES_CONFIG.h /usr/include/netcdf.inc
mnc_grid.f: /usr/include/stdc-predef.h
mnc_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_init.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_PARAMS.h MNC_SIZE.h
mnc_init.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
mnc_readparms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_readparms.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_PARAMS.h
mnc_readparms.f: MNC_SIZE.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mnc_readparms.f: /usr/include/stdc-predef.h
mnc_update_time.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_update_time.f: MNC_ID_HEADER.h MNC_OPTIONS.h MNC_PARAMS.h
mnc_update_time.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
mnc_update_time.f: /usr/include/stdc-predef.h
mnc_utils.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_utils.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_utils.f: PACKAGES_CONFIG.h /usr/include/netcdf.inc
mnc_utils.f: /usr/include/stdc-predef.h
mnc_var.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mnc_var.f: MNC_COMMON.h MNC_ID_HEADER.h MNC_OPTIONS.h MNC_SIZE.h
mnc_var.f: PACKAGES_CONFIG.h /usr/include/netcdf.inc
mnc_var.f: /usr/include/stdc-predef.h
mom_calc_3d_strain.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_calc_3d_strain.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_calc_3d_strain.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
mom_calc_3d_strain.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
mom_calc_3d_strain.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_calc_3d_strain.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_calc_3d_strain.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_calc_3d_strain.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_calc_3d_strain.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_calc_3d_strain.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_calc_3d_strain.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_3d_strain.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_calc_3d_strain.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_3d_strain.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_calc_absvort3.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_absvort3.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_absvort3.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_absvort3.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_absvort3.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_calc_absvort3.f: MASKW_MACROS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_calc_absvort3.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_calc_absvort3.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_absvort3.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_absvort3.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_calc_absvort3.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_absvort3.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_calc_absvort3.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_calc_absvort3.f: YC_MACROS.h
mom_calc_hdiv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_hdiv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_hdiv.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_hdiv.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_hdiv.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_calc_hdiv.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_calc_hdiv.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_calc_hdiv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_calc_hdiv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_calc_hdiv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_hdiv.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_calc_hdiv.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_calc_hdiv.f: YC_MACROS.h
mom_calc_hfacz.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_hfacz.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_hfacz.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_hfacz.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_hfacz.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_calc_hfacz.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_calc_hfacz.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_calc_hfacz.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_calc_hfacz.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_calc_hfacz.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_hfacz.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_calc_hfacz.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_calc_hfacz.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
mom_calc_ke.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_ke.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_ke.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h FCORI_MACROS.h GRID.h
mom_calc_ke.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_ke.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
mom_calc_ke.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_calc_ke.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_ke.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_ke.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_ke.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_calc_ke.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_ke.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_calc_relvort3.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_relvort3.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_relvort3.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_relvort3.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_relvort3.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_calc_relvort3.f: MASKW_MACROS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_calc_relvort3.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_calc_relvort3.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_relvort3.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_relvort3.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_calc_relvort3.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_relvort3.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_calc_relvort3.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_calc_relvort3.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h
mom_calc_relvort3.f: YC_MACROS.h
mom_calc_rtrans.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_rtrans.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_rtrans.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
mom_calc_rtrans.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_rtrans.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_calc_rtrans.f: MOM_FLUXFORM.h MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h
mom_calc_rtrans.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_calc_rtrans.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_rtrans.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_rtrans.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_rtrans.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
mom_calc_rtrans.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_rtrans.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_calc_smag_3d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_smag_3d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_smag_3d.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_smag_3d.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_smag_3d.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_calc_smag_3d.f: MASKW_MACROS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_calc_smag_3d.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_calc_smag_3d.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_smag_3d.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_smag_3d.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_smag_3d.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_calc_smag_3d.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_smag_3d.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_calc_strain.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_strain.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_strain.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_strain.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_strain.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_calc_strain.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_calc_strain.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_calc_strain.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_calc_strain.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_calc_strain.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_strain.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_calc_strain.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_strain.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_calc_tension.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_tension.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_tension.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_tension.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_tension.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_calc_tension.f: MASKW_MACROS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_calc_tension.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_calc_tension.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_tension.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_tension.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_tension.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_calc_tension.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_tension.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_calc_visc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_calc_visc.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_calc_visc.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_calc_visc.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_calc_visc.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_calc_visc.f: MOM_COMMON_OPTIONS.h MOM_VISC.h PACKAGES_CONFIG.h PARAMS.h
mom_calc_visc.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_calc_visc.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_calc_visc.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_calc_visc.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_visc.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_calc_visc.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_calc_visc.f: YC_MACROS.h
mom_diagnostics_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_diagnostics_init.f: EEPARAMS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_diagnostics_init.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
momentum_correction_step.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
momentum_correction_step.f: DYNVARS.h EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h
momentum_correction_step.f: SHAP_FILT.h SIZE.h /usr/include/stdc-predef.h
mom_fluxform.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_fluxform.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_fluxform.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
mom_fluxform.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_fluxform.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_fluxform.f: MOM_COMMON_OPTIONS.h MOM_FLUXFORM_OPTIONS.h MOM_VISC.h
mom_fluxform.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_fluxform.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_fluxform.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_fluxform.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_fluxform.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mom_fluxform.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_fluxform.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_hdissip.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_hdissip.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_hdissip.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_hdissip.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_hdissip.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_hdissip.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_hdissip.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_hdissip.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_hdissip.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_hdissip.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mom_hdissip.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_hdissip.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_init_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_init_fixed.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_init_fixed.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_init_fixed.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_init_fixed.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_init_fixed.f: MOM_COMMON_OPTIONS.h MOM_VISC.h PACKAGES_CONFIG.h PARAMS.h
mom_init_fixed.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_init_fixed.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_init_fixed.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_init_fixed.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_init_fixed.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
mom_init_fixed.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_init_fixed.f: YC_MACROS.h
mom_quasihydrostatic.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_quasihydrostatic.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_quasihydrostatic.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_quasihydrostatic.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_quasihydrostatic.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_quasihydrostatic.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
mom_quasihydrostatic.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_quasihydrostatic.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_quasihydrostatic.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_quasihydrostatic.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_quasihydrostatic.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_quasihydrostatic.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_quasihydrostatic.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_quasihydrostatic.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_quasihydrostatic.f: XC_MACROS.h YC_MACROS.h
mom_u_adv_uu.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_adv_uu.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_adv_uu.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_adv_uu.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_adv_uu.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_adv_uu.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_u_adv_uu.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_adv_uu.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_adv_uu.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_adv_uu.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_adv_uu.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_adv_uu.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_u_adv_uu.f: YC_MACROS.h
mom_u_adv_vu.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_adv_vu.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_adv_vu.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_adv_vu.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_adv_vu.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_adv_vu.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_u_adv_vu.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_adv_vu.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_adv_vu.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_adv_vu.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_adv_vu.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_adv_vu.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_u_adv_vu.f: YC_MACROS.h
mom_u_adv_wu.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_adv_wu.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_adv_wu.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_adv_wu.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_adv_wu.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_adv_wu.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_u_adv_wu.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_adv_wu.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_adv_wu.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_adv_wu.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_adv_wu.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_adv_wu.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_u_adv_wu.f: YC_MACROS.h
mom_u_botdrag_coeff.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_u_botdrag_coeff.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_botdrag_coeff.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_botdrag_coeff.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_botdrag_coeff.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_botdrag_coeff.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
mom_u_botdrag_coeff.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_u_botdrag_coeff.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_u_botdrag_coeff.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_botdrag_coeff.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_botdrag_coeff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_botdrag_coeff.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_botdrag_coeff.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_botdrag_coeff.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_u_botdrag_coeff.f: XC_MACROS.h YC_MACROS.h
mom_u_coriolis.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_coriolis.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_coriolis.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_coriolis.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_coriolis.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_coriolis.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_u_coriolis.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_coriolis.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_coriolis.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_coriolis.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_coriolis.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
mom_u_coriolis.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_u_coriolis.f: YC_MACROS.h
mom_u_coriolis_nh.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_coriolis_nh.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_coriolis_nh.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_coriolis_nh.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_coriolis_nh.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_u_coriolis_nh.f: MASKW_MACROS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_u_coriolis_nh.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_u_coriolis_nh.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_coriolis_nh.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_coriolis_nh.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_coriolis_nh.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_coriolis_nh.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_coriolis_nh.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_u_coriolis_nh.f: YC_MACROS.h
mom_u_del2u.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_del2u.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_del2u.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_del2u.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_del2u.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_del2u.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_u_del2u.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_u_del2u.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_u_del2u.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_del2u.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mom_u_del2u.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_del2u.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_u_implicit_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_implicit_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_implicit_r.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
mom_u_implicit_r.f: EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
mom_u_implicit_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_implicit_r.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
mom_u_implicit_r.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_u_implicit_r.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_u_implicit_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_u_implicit_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_implicit_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_implicit_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_implicit_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_u_implicit_r.f: YC_MACROS.h
mom_u_metric_cylinder.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_u_metric_cylinder.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_metric_cylinder.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_metric_cylinder.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_metric_cylinder.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_metric_cylinder.f: MASKS_MACROS.h MASKW_MACROS.h MOM_FLUXFORM_OPTIONS.h
mom_u_metric_cylinder.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_u_metric_cylinder.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_u_metric_cylinder.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_metric_cylinder.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_metric_cylinder.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_metric_cylinder.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_metric_cylinder.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_metric_cylinder.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_u_metric_cylinder.f: XC_MACROS.h YC_MACROS.h
mom_u_metric_nh.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_metric_nh.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_metric_nh.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_metric_nh.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_metric_nh.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_metric_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_u_metric_nh.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_metric_nh.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_metric_nh.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_metric_nh.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_metric_nh.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_u_metric_nh.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_metric_nh.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_u_metric_sphere.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_u_metric_sphere.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_metric_sphere.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_metric_sphere.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_metric_sphere.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_metric_sphere.f: MASKS_MACROS.h MASKW_MACROS.h MOM_FLUXFORM_OPTIONS.h
mom_u_metric_sphere.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_u_metric_sphere.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_u_metric_sphere.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_metric_sphere.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_metric_sphere.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_metric_sphere.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_metric_sphere.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_u_metric_sphere.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_u_metric_sphere.f: XC_MACROS.h YC_MACROS.h
mom_u_rviscflux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_rviscflux.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_rviscflux.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_rviscflux.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_rviscflux.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_rviscflux.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_u_rviscflux.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_rviscflux.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_rviscflux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_rviscflux.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_rviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_u_rviscflux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_rviscflux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_u_sidedrag.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_sidedrag.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_sidedrag.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_sidedrag.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_sidedrag.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_sidedrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_u_sidedrag.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_sidedrag.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_sidedrag.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_sidedrag.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_sidedrag.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
mom_u_sidedrag.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_u_sidedrag.f: YC_MACROS.h
mom_uv_boundary.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_uv_boundary.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_uv_boundary.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_uv_boundary.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_uv_boundary.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_uv_boundary.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_uv_boundary.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_uv_boundary.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_uv_boundary.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_uv_boundary.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_uv_boundary.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_uv_boundary.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_uv_boundary.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_uv_smag_3d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_uv_smag_3d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_uv_smag_3d.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_uv_smag_3d.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_uv_smag_3d.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_uv_smag_3d.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_uv_smag_3d.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_uv_smag_3d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_uv_smag_3d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_uv_smag_3d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_uv_smag_3d.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_uv_smag_3d.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_uv_smag_3d.f: YC_MACROS.h
mom_u_xviscflux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_xviscflux.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_xviscflux.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_xviscflux.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_xviscflux.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_xviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_u_xviscflux.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_xviscflux.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_xviscflux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_xviscflux.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_xviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_u_xviscflux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_xviscflux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_u_yviscflux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_u_yviscflux.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_u_yviscflux.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_u_yviscflux.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_u_yviscflux.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_u_yviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_u_yviscflux.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_u_yviscflux.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_yviscflux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_yviscflux.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_yviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_u_yviscflux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_yviscflux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_v_adv_uv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_adv_uv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_adv_uv.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_adv_uv.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_adv_uv.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_adv_uv.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_v_adv_uv.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_adv_uv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_adv_uv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_adv_uv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_adv_uv.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_adv_uv.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_v_adv_uv.f: YC_MACROS.h
mom_v_adv_vv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_adv_vv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_adv_vv.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_adv_vv.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_adv_vv.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_adv_vv.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_v_adv_vv.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_adv_vv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_adv_vv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_adv_vv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_adv_vv.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_adv_vv.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_v_adv_vv.f: YC_MACROS.h
mom_v_adv_wv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_adv_wv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_adv_wv.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_adv_wv.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_adv_wv.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_adv_wv.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_v_adv_wv.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_adv_wv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_adv_wv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_adv_wv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_adv_wv.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_adv_wv.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_v_adv_wv.f: YC_MACROS.h
mom_v_botdrag_coeff.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_v_botdrag_coeff.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_botdrag_coeff.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_botdrag_coeff.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_botdrag_coeff.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_botdrag_coeff.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
mom_v_botdrag_coeff.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_v_botdrag_coeff.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_v_botdrag_coeff.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_botdrag_coeff.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_botdrag_coeff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_botdrag_coeff.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_botdrag_coeff.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_botdrag_coeff.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_v_botdrag_coeff.f: XC_MACROS.h YC_MACROS.h
mom_v_coriolis.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_coriolis.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_coriolis.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_coriolis.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_coriolis.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_coriolis.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_v_coriolis.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_coriolis.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_coriolis.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_coriolis.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_coriolis.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
mom_v_coriolis.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_v_coriolis.f: YC_MACROS.h
mom_v_coriolis_nh.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_coriolis_nh.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_coriolis_nh.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_coriolis_nh.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_coriolis_nh.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_v_coriolis_nh.f: MASKW_MACROS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_v_coriolis_nh.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_v_coriolis_nh.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_coriolis_nh.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_coriolis_nh.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_coriolis_nh.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_coriolis_nh.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_coriolis_nh.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_v_coriolis_nh.f: YC_MACROS.h
mom_v_del2v.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_del2v.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_del2v.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_del2v.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_del2v.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_del2v.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_v_del2v.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_v_del2v.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_v_del2v.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_del2v.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mom_v_del2v.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_del2v.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_vecinv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vecinv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
mom_vecinv.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
mom_vecinv.f: FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_vecinv.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h
mom_vecinv.f: MOM_COMMON_OPTIONS.h MOM_VECINV_OPTIONS.h MOM_VISC.h
mom_vecinv.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_vecinv.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_vecinv.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vecinv.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vecinv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
mom_vecinv.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h
mom_vecinv.f: TIMEAVE_STATV.h /usr/include/stdc-predef.h XC_MACROS.h
mom_vecinv.f: YC_MACROS.h
mom_vi_coriolis.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vi_coriolis.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_vi_coriolis.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_vi_coriolis.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_vi_coriolis.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_vi_coriolis.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_vi_coriolis.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_vi_coriolis.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_coriolis.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vi_coriolis.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_coriolis.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_vi_coriolis.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_coriolis.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_vi_del2uv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vi_del2uv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_vi_del2uv.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_vi_del2uv.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_vi_del2uv.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_vi_del2uv.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h RA_MACROS.h
mom_vi_del2uv.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_vi_del2uv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_del2uv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vi_del2uv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_del2uv.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_vi_del2uv.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_vi_del2uv.f: YC_MACROS.h
mom_vi_hdissip.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vi_hdissip.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_vi_hdissip.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_vi_hdissip.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_vi_hdissip.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_vi_hdissip.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_vi_hdissip.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_vi_hdissip.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_hdissip.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vi_hdissip.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_hdissip.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_vi_hdissip.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_vi_hdissip.f: YC_MACROS.h
mom_v_implicit_r.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_implicit_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_implicit_r.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
mom_v_implicit_r.f: EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
mom_v_implicit_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_implicit_r.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
mom_v_implicit_r.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_v_implicit_r.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_v_implicit_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_v_implicit_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_implicit_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_implicit_r.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_implicit_r.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_v_implicit_r.f: YC_MACROS.h
mom_visc_qgl_limit.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_visc_qgl_limit.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_visc_qgl_limit.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_visc_qgl_limit.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_visc_qgl_limit.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_visc_qgl_limit.f: MASKS_MACROS.h MASKW_MACROS.h MOM_COMMON_OPTIONS.h
mom_visc_qgl_limit.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_visc_qgl_limit.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_visc_qgl_limit.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_visc_qgl_limit.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_visc_qgl_limit.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_visc_qgl_limit.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_visc_qgl_limit.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_visc_qgl_limit.f: XC_MACROS.h YC_MACROS.h
mom_visc_qgl_stretch.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_visc_qgl_stretch.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_visc_qgl_stretch.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
mom_visc_qgl_stretch.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
mom_visc_qgl_stretch.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_visc_qgl_stretch.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_visc_qgl_stretch.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_visc_qgl_stretch.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_visc_qgl_stretch.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_visc_qgl_stretch.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_visc_qgl_stretch.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_visc_qgl_stretch.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_visc_qgl_stretch.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_visc_qgl_stretch.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_visc_qgl_stretch.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_visc_qgl_stretch.f: XC_MACROS.h YC_MACROS.h
mom_vi_u_coriolis_c4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_vi_u_coriolis_c4.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_vi_u_coriolis_c4.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_vi_u_coriolis_c4.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_vi_u_coriolis_c4.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_u_coriolis_c4.f: MASKS_MACROS.h MASKW_MACROS.h MOM_VECINV_OPTIONS.h
mom_vi_u_coriolis_c4.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
mom_vi_u_coriolis_c4.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_vi_u_coriolis_c4.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_vi_u_coriolis_c4.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h
mom_vi_u_coriolis_c4.f: YC_MACROS.h
mom_vi_u_coriolis.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vi_u_coriolis.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_vi_u_coriolis.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_vi_u_coriolis.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_vi_u_coriolis.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_vi_u_coriolis.f: MASKW_MACROS.h MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h
mom_vi_u_coriolis.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_vi_u_coriolis.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_u_coriolis.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vi_u_coriolis.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_u_coriolis.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_vi_u_coriolis.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_u_coriolis.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_vi_u_grad_ke.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vi_u_grad_ke.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_vi_u_grad_ke.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_vi_u_grad_ke.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_vi_u_grad_ke.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_vi_u_grad_ke.f: MASKW_MACROS.h MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h
mom_vi_u_grad_ke.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_vi_u_grad_ke.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_u_grad_ke.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vi_u_grad_ke.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_u_grad_ke.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_vi_u_grad_ke.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_u_grad_ke.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_vi_u_vertshear.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_vi_u_vertshear.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_vi_u_vertshear.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_vi_u_vertshear.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_vi_u_vertshear.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_u_vertshear.f: MASKS_MACROS.h MASKW_MACROS.h MOM_VECINV_OPTIONS.h
mom_vi_u_vertshear.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_vi_u_vertshear.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_u_vertshear.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_vi_u_vertshear.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_u_vertshear.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_u_vertshear.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_vi_u_vertshear.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_vi_u_vertshear.f: XC_MACROS.h YC_MACROS.h
mom_vi_v_coriolis_c4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_vi_v_coriolis_c4.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_vi_v_coriolis_c4.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_vi_v_coriolis_c4.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_vi_v_coriolis_c4.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_v_coriolis_c4.f: MASKS_MACROS.h MASKW_MACROS.h MOM_VECINV_OPTIONS.h
mom_vi_v_coriolis_c4.f: PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
mom_vi_v_coriolis_c4.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_vi_v_coriolis_c4.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_vi_v_coriolis_c4.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h
mom_vi_v_coriolis_c4.f: YC_MACROS.h
mom_vi_v_coriolis.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vi_v_coriolis.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_vi_v_coriolis.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_vi_v_coriolis.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_vi_v_coriolis.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_vi_v_coriolis.f: MASKW_MACROS.h MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h
mom_vi_v_coriolis.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_vi_v_coriolis.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_v_coriolis.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vi_v_coriolis.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_v_coriolis.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_vi_v_coriolis.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_v_coriolis.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_vi_v_grad_ke.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_vi_v_grad_ke.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_vi_v_grad_ke.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_vi_v_grad_ke.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_vi_v_grad_ke.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_vi_v_grad_ke.f: MASKW_MACROS.h MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h
mom_vi_v_grad_ke.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_vi_v_grad_ke.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_v_grad_ke.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vi_v_grad_ke.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_v_grad_ke.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_vi_v_grad_ke.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_v_grad_ke.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_vi_v_vertshear.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_vi_v_vertshear.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_vi_v_vertshear.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_vi_v_vertshear.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_vi_v_vertshear.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_v_vertshear.f: MASKS_MACROS.h MASKW_MACROS.h MOM_VECINV_OPTIONS.h
mom_vi_v_vertshear.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_vi_v_vertshear.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_v_vertshear.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_vi_v_vertshear.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_v_vertshear.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_v_vertshear.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_vi_v_vertshear.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_vi_v_vertshear.f: XC_MACROS.h YC_MACROS.h
mom_v_metric_cylinder.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_v_metric_cylinder.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_metric_cylinder.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_metric_cylinder.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_metric_cylinder.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_metric_cylinder.f: MASKS_MACROS.h MASKW_MACROS.h MOM_FLUXFORM_OPTIONS.h
mom_v_metric_cylinder.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_v_metric_cylinder.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_v_metric_cylinder.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_metric_cylinder.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_metric_cylinder.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_metric_cylinder.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_metric_cylinder.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_metric_cylinder.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_v_metric_cylinder.f: XC_MACROS.h YC_MACROS.h
mom_v_metric_nh.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_metric_nh.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_metric_nh.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_metric_nh.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_metric_nh.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_metric_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_v_metric_nh.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_metric_nh.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_metric_nh.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_metric_nh.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_metric_nh.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_v_metric_nh.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_metric_nh.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_v_metric_sphere.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
mom_v_metric_sphere.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_metric_sphere.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_metric_sphere.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_metric_sphere.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_metric_sphere.f: MASKS_MACROS.h MASKW_MACROS.h MOM_FLUXFORM_OPTIONS.h
mom_v_metric_sphere.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
mom_v_metric_sphere.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_v_metric_sphere.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_metric_sphere.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_metric_sphere.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_metric_sphere.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_metric_sphere.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_v_metric_sphere.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mom_v_metric_sphere.f: XC_MACROS.h YC_MACROS.h
mom_v_rviscflux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_rviscflux.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_rviscflux.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_rviscflux.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_rviscflux.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_rviscflux.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_v_rviscflux.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_rviscflux.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_rviscflux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_rviscflux.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_rviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_v_rviscflux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_rviscflux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_v_sidedrag.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_sidedrag.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_sidedrag.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_sidedrag.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_sidedrag.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_sidedrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_v_sidedrag.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_sidedrag.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_sidedrag.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_sidedrag.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_sidedrag.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
mom_v_sidedrag.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_v_sidedrag.f: YC_MACROS.h
mom_v_xviscflux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_xviscflux.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_xviscflux.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_xviscflux.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_xviscflux.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_xviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_v_xviscflux.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_xviscflux.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_xviscflux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_xviscflux.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_xviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_v_xviscflux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_xviscflux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_v_yviscflux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_v_yviscflux.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_v_yviscflux.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_v_yviscflux.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_v_yviscflux.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_v_yviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mom_v_yviscflux.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_v_yviscflux.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_yviscflux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_yviscflux.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_yviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_v_yviscflux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_yviscflux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_w_coriolis_nh.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_w_coriolis_nh.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_w_coriolis_nh.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_w_coriolis_nh.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_w_coriolis_nh.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
mom_w_coriolis_nh.f: MASKW_MACROS.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
mom_w_coriolis_nh.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mom_w_coriolis_nh.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_w_coriolis_nh.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_w_coriolis_nh.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_w_coriolis_nh.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_w_coriolis_nh.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_w_coriolis_nh.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_w_coriolis_nh.f: YC_MACROS.h
mom_w_metric_nh.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_w_metric_nh.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_w_metric_nh.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_w_metric_nh.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_w_metric_nh.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_w_metric_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_w_metric_nh.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_w_metric_nh.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_w_metric_nh.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_w_metric_nh.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_w_metric_nh.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mom_w_metric_nh.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_w_metric_nh.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mom_w_sidedrag.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_w_sidedrag.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_w_sidedrag.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_w_sidedrag.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_w_sidedrag.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_w_sidedrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_w_sidedrag.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_w_sidedrag.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_w_sidedrag.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_w_sidedrag.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_w_sidedrag.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
mom_w_sidedrag.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_w_sidedrag.f: YC_MACROS.h
mom_w_smag_3d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mom_w_smag_3d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mom_w_smag_3d.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mom_w_smag_3d.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mom_w_smag_3d.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mom_w_smag_3d.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
mom_w_smag_3d.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mom_w_smag_3d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_w_smag_3d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_w_smag_3d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_w_smag_3d.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mom_w_smag_3d.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mom_w_smag_3d.f: YC_MACROS.h
mon_advcfl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_advcfl.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_advcfl.f: /usr/include/stdc-predef.h
mon_advcflw2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_advcflw2.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_advcflw2.f: /usr/include/stdc-predef.h
mon_advcflw.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_advcflw.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_advcflw.f: /usr/include/stdc-predef.h
mon_calc_advcfl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mon_calc_advcfl.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mon_calc_advcfl.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
mon_calc_advcfl.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mon_calc_advcfl.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mon_calc_advcfl.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mon_calc_advcfl.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mon_calc_advcfl.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mon_calc_advcfl.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mon_calc_advcfl.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mon_calc_advcfl.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mon_calc_advcfl.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mon_calc_advcfl.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mon_calc_stats_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_calc_stats_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_calc_stats_rl.f: /usr/include/stdc-predef.h
mon_calc_stats_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_calc_stats_rs.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_calc_stats_rs.f: /usr/include/stdc-predef.h
mon_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h MONITOR.h
mon_init.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mon_init.f: /usr/include/stdc-predef.h
monitor_ad.f: AD_CONFIG.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
monitor_ad.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
monitor_ad.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
monitor_ad.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
monitor_ad.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h
monitor_ad.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
monitor_ad.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
monitor_ad.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
monitor_ad.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
monitor_ad.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
monitor_ad.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
monitor_ad.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
monitor_ad.f: YC_MACROS.h
monitor.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
monitor.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
monitor.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
monitor.f: FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
monitor.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h MONITOR.h
monitor.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
monitor.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
monitor.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
monitor.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
monitor.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
monitor.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
monitor.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
monitor_g.f: AD_CONFIG.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
monitor_g.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
monitor_g.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
monitor_g.f: FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
monitor_g.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
monitor_g.f: MNC_PARAMS.h MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h
monitor_g.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
monitor_g.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
monitor_g.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
monitor_g.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
monitor_g.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
monitor_g.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
mon_ke.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mon_ke.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
mon_ke.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
mon_ke.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mon_ke.f: MASKS_MACROS.h MASKW_MACROS.h MONITOR.h MONITOR_OPTIONS.h
mon_ke.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mon_ke.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mon_ke.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mon_ke.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mon_ke.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
mon_ke.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mon_ke.f: XC_MACROS.h YC_MACROS.h
mon_out.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h MONITOR.h
mon_out.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
mon_out.f: /usr/include/stdc-predef.h
mon_printstats_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_printstats_rl.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_printstats_rl.f: /usr/include/stdc-predef.h
mon_printstats_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_printstats_rs.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_printstats_rs.f: /usr/include/stdc-predef.h
mon_set_iounit.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_set_iounit.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_set_iounit.f: /usr/include/stdc-predef.h
mon_set_pref.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_set_pref.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_set_pref.f: /usr/include/stdc-predef.h
mon_solution.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mon_solution.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mon_solution.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
mon_solution.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mon_solution.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mon_solution.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mon_solution.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mon_solution.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mon_solution.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mon_solution.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mon_solution.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
mon_solution.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mon_solution.f: YC_MACROS.h
mon_stats_latbnd_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_stats_latbnd_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_stats_latbnd_rl.f: /usr/include/stdc-predef.h
mon_stats_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_stats_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_stats_rl.f: /usr/include/stdc-predef.h
mon_stats_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_stats_rs.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_stats_rs.f: /usr/include/stdc-predef.h
mon_surfcor.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mon_surfcor.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mon_surfcor.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
mon_surfcor.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
mon_surfcor.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
mon_surfcor.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h
mon_surfcor.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
mon_surfcor.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mon_surfcor.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mon_surfcor.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mon_surfcor.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
mon_surfcor.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
mon_surfcor.f: YC_MACROS.h
mon_vort3.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
mon_vort3.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
mon_vort3.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
mon_vort3.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mon_vort3.f: MASKS_MACROS.h MASKW_MACROS.h MONITOR.h MONITOR_OPTIONS.h
mon_vort3.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
mon_vort3.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mon_vort3.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mon_vort3.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mon_vort3.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
mon_vort3.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
mon_vort3.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
mon_writestats_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_writestats_rl.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_writestats_rl.f: /usr/include/stdc-predef.h
mon_writestats_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
mon_writestats_rs.f: MONITOR.h MONITOR_OPTIONS.h PACKAGES_CONFIG.h SIZE.h
mon_writestats_rs.f: /usr/include/stdc-predef.h
nml_change_syntax.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
nml_change_syntax.f: /usr/include/stdc-predef.h
nml_set_terminator.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
nml_set_terminator.f: /usr/include/stdc-predef.h
open_copy_data_file.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
open_copy_data_file.f: /usr/include/stdc-predef.h
packages_boot.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
packages_boot.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
packages_check.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
packages_check.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
packages_error_msg.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
packages_error_msg.f: SIZE.h /usr/include/stdc-predef.h
packages_init_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
packages_init_fixed.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
packages_init_fixed.f: /usr/include/stdc-predef.h
packages_init_variables.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
packages_init_variables.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
packages_init_variables.f: /usr/include/stdc-predef.h
packages_print_msg.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
packages_print_msg.f: SIZE.h /usr/include/stdc-predef.h
packages_readparms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
packages_readparms.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
packages_readparms.f: /usr/include/stdc-predef.h
packages_unused_msg.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
packages_unused_msg.f: SIZE.h /usr/include/stdc-predef.h
packages_write_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
packages_write_pickup.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h RESTART.h
packages_write_pickup.f: SIZE.h /usr/include/stdc-predef.h
plot_field.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h PARAMS.h
plot_field.f: SIZE.h /usr/include/stdc-predef.h
port_rand.f: /usr/include/stdc-predef.h
post_cg3d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
post_cg3d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
post_cg3d.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
post_cg3d.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
post_cg3d.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
post_cg3d.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
post_cg3d.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
post_cg3d.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
post_cg3d.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
post_cg3d.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
post_cg3d.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
pre_cg3d.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
pre_cg3d.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
pre_cg3d.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
pre_cg3d.f: FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
pre_cg3d.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
pre_cg3d.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
pre_cg3d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
pre_cg3d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
pre_cg3d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
pre_cg3d.f: RECIP_HFACW_MACROS.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
pre_cg3d.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
pre_cg3d.f: YC_MACROS.h
pressure_for_eos.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
pressure_for_eos.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
pressure_for_eos.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
pressure_for_eos.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
pressure_for_eos.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
pressure_for_eos.f: MASKS_MACROS.h MASKW_MACROS.h PARAMS.h RA_MACROS.h
pressure_for_eos.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
pressure_for_eos.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
pressure_for_eos.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
pressure_for_eos.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
pressure_for_eos.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
pressure_for_eos.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
pressure_for_eos.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
print.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
print.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
print.f: SIZE.h /usr/include/stdc-predef.h
read_fld_xy_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_fld_xy_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
read_fld_xy_rl.f: /usr/include/stdc-predef.h
read_fld_xy_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_fld_xy_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
read_fld_xy_rs.f: /usr/include/stdc-predef.h
read_fld_xyz_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_fld_xyz_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
read_fld_xyz_rl.f: /usr/include/stdc-predef.h
read_fld_xyz_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_fld_xyz_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
read_fld_xyz_rs.f: /usr/include/stdc-predef.h
read_glvec_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_glvec_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
read_glvec_rl.f: /usr/include/stdc-predef.h
read_glvec_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_glvec_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
read_glvec_rs.f: /usr/include/stdc-predef.h
read_mflds.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_mflds.f: PACKAGES_CONFIG.h PARAMS.h RW_MFLDS.h RW_OPTIONS.h SIZE.h
read_mflds.f: /usr/include/stdc-predef.h
read_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DYNVARS.h
read_pickup.f: EEPARAMS.h FFIELDS.h GAD.h MNC_PARAMS.h NH_VARS.h
read_pickup.f: PACKAGES_CONFIG.h PARAMS.h RESTART.h SIZE.h SURFACE.h
read_pickup.f: /usr/include/stdc-predef.h
read_rec.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
read_rec.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
read_rec.f: /usr/include/stdc-predef.h
remove_mean.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
remove_mean.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
reset_halo.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
reset_halo.f: /usr/include/stdc-predef.h
reset_nlfs_vars.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
reset_nlfs_vars.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
reset_nlfs_vars.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
reset_nlfs_vars.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
reset_nlfs_vars.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
reset_nlfs_vars.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
reset_nlfs_vars.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
reset_nlfs_vars.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
reset_nlfs_vars.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
reset_nlfs_vars.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
reset_nlfs_vars.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
reset_nlfs_vars.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
rotate_spherical_polar_grid.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
rotate_spherical_polar_grid.f: EEPARAMS.h PARAMS.h SIZE.h
rotate_spherical_polar_grid.f: /usr/include/stdc-predef.h
rotate_uv2en.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
rotate_uv2en.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
rotate_uv2en.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
rotate_uv2en.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
rotate_uv2en.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
rotate_uv2en.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
rotate_uv2en.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
rotate_uv2en.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
rotate_uv2en.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
rotate_uv2en.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
rotate_uv2en.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
rotate_uv2en.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
rw_get_suffix.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
rw_get_suffix.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
rw_get_suffix.f: /usr/include/stdc-predef.h
salt_fill.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
salt_fill.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
salt_fill.f: DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GAD_OPTIONS.h
salt_fill.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
salt_fill.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
salt_fill.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
salt_fill.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
salt_fill.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
salt_fill.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
salt_fill.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
salt_fill.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
salt_integrate.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
salt_integrate.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
salt_integrate.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
salt_integrate.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GAD_SOM_VARS.h GRID.h
salt_integrate.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
salt_integrate.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
salt_integrate.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
salt_integrate.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
salt_integrate.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
salt_integrate.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
salt_integrate.f: RECIP_HFACW_MACROS.h RESTART.h SIZE.h TANPHIATU_MACROS.h
salt_integrate.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
salt_integrate.f: YC_MACROS.h
scatter_2d_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_2d_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_2d_r4.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
scatter_2d_r4.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
scatter_2d_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_2d_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_2d_r8.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
scatter_2d_r8.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
scatter_2d_wh_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_2d_wh_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_2d_wh_r4.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
scatter_2d_wh_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_2d_wh_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_2d_wh_r8.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
scatter_vec_r4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_vec_r4.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_vec_r4.f: SIZE.h /usr/include/stdc-predef.h
scatter_vec_r8.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_vec_r8.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_vec_r8.f: SIZE.h /usr/include/stdc-predef.h
scatter_xz.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_xz.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_xz.f: SIZE.h /usr/include/stdc-predef.h
scatter_yz.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
scatter_yz.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
scatter_yz.f: SIZE.h /usr/include/stdc-predef.h
seawater.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
seawater.f: /usr/include/stdc-predef.h
set_defaults.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
set_defaults.f: PACKAGES_CONFIG.h PARAMS.h SET_GRID.h SIZE.h
set_defaults.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
set_grid_factors.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
set_grid_factors.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
set_grid_factors.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
set_grid_factors.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
set_grid_factors.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
set_grid_factors.f: MASKW_MACROS.h PARAMS.h RA_MACROS.h RAS_MACROS.h
set_grid_factors.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
set_grid_factors.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
set_grid_factors.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
set_grid_factors.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
set_grid_factors.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
set_grid_factors.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
set_grid_factors.f: YC_MACROS.h
set_parms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h EOS.h
set_parms.f: MOM_COMMON_OPTIONS.h MOM_VISC.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
set_parms.f: /usr/include/stdc-predef.h
set_ref_state.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
set_ref_state.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
set_ref_state.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h EOS.h
set_ref_state.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
set_ref_state.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
set_ref_state.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
set_ref_state.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
set_ref_state.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
set_ref_state.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
set_ref_state.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
set_ref_state.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
set_ref_state.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
set_write_global_fld.f: CPP_EEMACROS.h CPP_EEOPTIONS.h
set_write_global_fld.f: /usr/include/stdc-predef.h
shap_filt_apply_ts.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_apply_ts.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_apply_ts.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
shap_filt_apply_ts.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
shap_filt_apply_ts.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
shap_filt_apply_ts.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
shap_filt_apply_ts.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
shap_filt_apply_ts.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_apply_ts.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
shap_filt_apply_ts.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_apply_ts.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_apply_ts.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h
shap_filt_apply_ts.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_apply_ts.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_apply_uv.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_apply_uv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_apply_uv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shap_filt_apply_uv.f: EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
shap_filt_apply_uv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shap_filt_apply_uv.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
shap_filt_apply_uv.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
shap_filt_apply_uv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_apply_uv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
shap_filt_apply_uv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
shap_filt_apply_uv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SHAP_FILT.h
shap_filt_apply_uv.f: SHAP_FILT_OPTIONS.h SIZE.h TANPHIATU_MACROS.h
shap_filt_apply_uv.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
shap_filt_apply_uv.f: XC_MACROS.h YC_MACROS.h
shap_filt_computvort.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_computvort.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_computvort.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shap_filt_computvort.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
shap_filt_computvort.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shap_filt_computvort.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
shap_filt_computvort.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
shap_filt_computvort.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_computvort.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_computvort.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shap_filt_computvort.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_computvort.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_computvort.f: RECIP_HFACW_MACROS.h SHAP_FILT_OPTIONS.h SIZE.h
shap_filt_computvort.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_computvort.f: /usr/include/stdc-predef.h W2_EXCH2_SIZE.h
shap_filt_computvort.f: W2_EXCH2_TOPOLOGY.h XC_MACROS.h YC_MACROS.h
shap_filt_diagnostics_init.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_diagnostics_init.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h
shap_filt_diagnostics_init.f: SHAP_FILT_OPTIONS.h SIZE.h
shap_filt_diagnostics_init.f: /usr/include/stdc-predef.h
shap_filt_init_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_init_fixed.f: EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h
shap_filt_init_fixed.f: SHAP_FILT_OPTIONS.h SIZE.h /usr/include/stdc-predef.h
shap_filt_readparms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
shap_filt_readparms.f: PACKAGES_CONFIG.h PARAMS.h SHAP_FILT.h
shap_filt_readparms.f: SHAP_FILT_OPTIONS.h SIZE.h /usr/include/stdc-predef.h
shap_filt_relvort3.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_relvort3.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_relvort3.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shap_filt_relvort3.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
shap_filt_relvort3.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shap_filt_relvort3.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
shap_filt_relvort3.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
shap_filt_relvort3.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_relvort3.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
shap_filt_relvort3.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
shap_filt_relvort3.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
shap_filt_relvort3.f: SHAP_FILT_OPTIONS.h SIZE.h TANPHIATU_MACROS.h
shap_filt_relvort3.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
shap_filt_relvort3.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h XC_MACROS.h
shap_filt_relvort3.f: YC_MACROS.h
shap_filt_tracerold.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_tracerold.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_tracerold.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shap_filt_tracerold.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
shap_filt_tracerold.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shap_filt_tracerold.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
shap_filt_tracerold.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
shap_filt_tracerold.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_tracerold.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_tracerold.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shap_filt_tracerold.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_tracerold.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_tracerold.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h
shap_filt_tracerold.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_tracerold.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_tracer_s1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_tracer_s1.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_tracer_s1.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shap_filt_tracer_s1.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
shap_filt_tracer_s1.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shap_filt_tracer_s1.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
shap_filt_tracer_s1.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
shap_filt_tracer_s1.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_tracer_s1.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_tracer_s1.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shap_filt_tracer_s1.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_tracer_s1.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_tracer_s1.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h
shap_filt_tracer_s1.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_tracer_s1.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_tracer_s2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_tracer_s2.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_tracer_s2.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shap_filt_tracer_s2.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
shap_filt_tracer_s2.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shap_filt_tracer_s2.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
shap_filt_tracer_s2.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
shap_filt_tracer_s2.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_tracer_s2.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_tracer_s2.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shap_filt_tracer_s2.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_tracer_s2.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_tracer_s2.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h
shap_filt_tracer_s2.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_tracer_s2.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_tracer_s4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
shap_filt_tracer_s4.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
shap_filt_tracer_s4.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shap_filt_tracer_s4.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
shap_filt_tracer_s4.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shap_filt_tracer_s4.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
shap_filt_tracer_s4.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
shap_filt_tracer_s4.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_tracer_s4.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_tracer_s4.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shap_filt_tracer_s4.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_tracer_s4.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_tracer_s4.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h
shap_filt_tracer_s4.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_tracer_s4.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_u.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
shap_filt_u.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shap_filt_u.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
shap_filt_u.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
shap_filt_u.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
shap_filt_u.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
shap_filt_u.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_u.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
shap_filt_u.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_u.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
shap_filt_u.f: SHAP_FILT.h SHAP_FILT_OPTIONS.h SIZE.h TANPHIATU_MACROS.h
shap_filt_u.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
shap_filt_u.f: YC_MACROS.h
shap_filt_uv_s1.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
shap_filt_uv_s1.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shap_filt_uv_s1.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
shap_filt_uv_s1.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
shap_filt_uv_s1.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
shap_filt_uv_s1.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
shap_filt_uv_s1.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_uv_s1.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
shap_filt_uv_s1.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_uv_s1.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_uv_s1.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h SIZE.h
shap_filt_uv_s1.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_uv_s1.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_uv_s2c.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
shap_filt_uv_s2c.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shap_filt_uv_s2c.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
shap_filt_uv_s2c.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
shap_filt_uv_s2c.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
shap_filt_uv_s2c.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
shap_filt_uv_s2c.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
shap_filt_uv_s2c.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shap_filt_uv_s2c.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
shap_filt_uv_s2c.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
shap_filt_uv_s2c.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SHAP_FILT.h
shap_filt_uv_s2c.f: SHAP_FILT_OPTIONS.h SIZE.h TANPHIATU_MACROS.h
shap_filt_uv_s2c.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
shap_filt_uv_s2c.f: YC_MACROS.h
shap_filt_uv_s2.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
shap_filt_uv_s2.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shap_filt_uv_s2.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
shap_filt_uv_s2.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
shap_filt_uv_s2.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
shap_filt_uv_s2.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
shap_filt_uv_s2.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_uv_s2.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
shap_filt_uv_s2.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_uv_s2.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_uv_s2.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h SIZE.h
shap_filt_uv_s2.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_uv_s2.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_uv_s4.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
shap_filt_uv_s4.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shap_filt_uv_s4.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
shap_filt_uv_s4.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
shap_filt_uv_s4.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
shap_filt_uv_s4.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
shap_filt_uv_s4.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_uv_s4.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
shap_filt_uv_s4.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_uv_s4.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shap_filt_uv_s4.f: RECIP_HFACW_MACROS.h SHAP_FILT.h SHAP_FILT_OPTIONS.h SIZE.h
shap_filt_uv_s4.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shap_filt_uv_s4.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
shap_filt_v.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
shap_filt_v.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shap_filt_v.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
shap_filt_v.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
shap_filt_v.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
shap_filt_v.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
shap_filt_v.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shap_filt_v.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
shap_filt_v.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shap_filt_v.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
shap_filt_v.f: SHAP_FILT.h SHAP_FILT_OPTIONS.h SIZE.h TANPHIATU_MACROS.h
shap_filt_v.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
shap_filt_v.f: YC_MACROS.h
solve_for_pressure.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
solve_for_pressure.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
solve_for_pressure.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
solve_for_pressure.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h
solve_for_pressure.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
solve_for_pressure.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
solve_for_pressure.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
solve_for_pressure.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
solve_for_pressure.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
solve_for_pressure.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
solve_for_pressure.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
solve_for_pressure.f: RECIP_HFACW_MACROS.h SIZE.h SOLVE_FOR_PRESSURE.h
solve_for_pressure.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
solve_for_pressure.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
solve_pentadiagonal.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
solve_pentadiagonal.f: SIZE.h /usr/include/stdc-predef.h
solve_tridiagonal.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
solve_tridiagonal.f: SIZE.h /usr/include/stdc-predef.h
solve_uv_tridiago.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
solve_uv_tridiago.f: SIZE.h /usr/include/stdc-predef.h
state_summary.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
state_summary.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
state_summary.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
state_summary.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
state_summary.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
state_summary.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
state_summary.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
state_summary.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
state_summary.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
state_summary.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
state_summary.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
state_summary.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
stop_if_error.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
stop_if_error.f: /usr/include/stdc-predef.h
swfrac.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h PACKAGES_CONFIG.h
swfrac.f: /usr/include/stdc-predef.h
taueddy_init_varia.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
taueddy_init_varia.f: FFIELDS.h PARAMS.h SIZE.h /usr/include/stdc-predef.h
taueddy_tendency_apply.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
taueddy_tendency_apply.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
taueddy_tendency_apply.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
taueddy_tendency_apply.f: EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h
taueddy_tendency_apply.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
taueddy_tendency_apply.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
taueddy_tendency_apply.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
taueddy_tendency_apply.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
taueddy_tendency_apply.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
taueddy_tendency_apply.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
taueddy_tendency_apply.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
taueddy_tendency_apply.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
taueddy_tendency_apply.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
taueddy_tendency_apply.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
taueddy_tendency_apply.f: XC_MACROS.h YC_MACROS.h
temp_integrate.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
temp_integrate.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
temp_integrate.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
temp_integrate.f: FCORI_MACROS.h GAD.h GAD_OPTIONS.h GAD_SOM_VARS.h GRID.h
temp_integrate.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
temp_integrate.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
temp_integrate.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
temp_integrate.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
temp_integrate.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
temp_integrate.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
temp_integrate.f: RECIP_HFACW_MACROS.h RESTART.h SIZE.h TANPHIATU_MACROS.h
temp_integrate.f: TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h TIMEAVE_STATV.h
temp_integrate.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
the_main_loop.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
the_main_loop.f: GAD_OPTIONS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
the_main_loop.f: /usr/include/stdc-predef.h
the_model_main.f: AD_CONFIG.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
the_model_main.f: DYNVARS.h EEPARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
the_model_main.f: /usr/include/stdc-predef.h
thermodynamics.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
thermodynamics.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
thermodynamics.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
thermodynamics.f: FCORI_MACROS.h FFIELDS.h GAD.h GRID.h GRID_MACROS.h
thermodynamics.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
thermodynamics.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
thermodynamics.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
thermodynamics.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
thermodynamics.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
thermodynamics.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
thermodynamics.f: RECIP_HFACW_MACROS.h RESTART.h SIZE.h SURFACE.h
thermodynamics.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
thermodynamics.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
timeave_cumul_1k1t.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
timeave_cumul_1k1t.f: /usr/include/stdc-predef.h
timeave_cumul_1t.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
timeave_cumul_1t.f: /usr/include/stdc-predef.h
timeave_cumul_1vfc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
timeave_cumul_1vfc.f: /usr/include/stdc-predef.h
timeave_cumul_2vfc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
timeave_cumul_2vfc.f: /usr/include/stdc-predef.h
timeave_cumul_2v.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
timeave_cumul_2v.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
timeave_cumul_2v.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
timeave_cumul_2v.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
timeave_cumul_2v.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
timeave_cumul_2v.f: MASKW_MACROS.h PACKAGES_CONFIG.h RA_MACROS.h RAS_MACROS.h
timeave_cumul_2v.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
timeave_cumul_2v.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
timeave_cumul_2v.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
timeave_cumul_2v.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timeave_cumul_2v.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
timeave_cumul_2v.f: TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h
timeave_cumul_2v.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
timeave_cumulate.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
timeave_cumulate.f: /usr/include/stdc-predef.h
timeave_cumul_dif_1t.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
timeave_cumul_dif_1t.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
timeave_cumul_dif_1t.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
timeave_cumul_dif_1t.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
timeave_cumul_dif_1t.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
timeave_cumul_dif_1t.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h
timeave_cumul_dif_1t.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
timeave_cumul_dif_1t.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timeave_cumul_dif_1t.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
timeave_cumul_dif_1t.f: TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h
timeave_cumul_dif_1t.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
timeave_init_fixed.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
timeave_init_fixed.f: MNC_PARAMS.h PACKAGES_CONFIG.h PARAMS.h SIZE.h
timeave_init_fixed.f: TIMEAVE_OPTIONS.h /usr/include/stdc-predef.h
timeave_norma_2v.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
timeave_norma_2v.f: /usr/include/stdc-predef.h
timeave_normalize.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
timeave_normalize.f: /usr/include/stdc-predef.h
timeave_reset.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
timeave_reset.f: PACKAGES_CONFIG.h SIZE.h TIMEAVE_OPTIONS.h
timeave_reset.f: /usr/include/stdc-predef.h
timeave_statvars.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
timeave_statvars.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
timeave_statvars.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
timeave_statvars.f: EEPARAMS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
timeave_statvars.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
timeave_statvars.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
timeave_statvars.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
timeave_statvars.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
timeave_statvars.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
timeave_statvars.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
timeave_statvars.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
timeave_statvars.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h
timeave_statvars.f: TIMEAVE_STATV.h /usr/include/stdc-predef.h XC_MACROS.h
timeave_statvars.f: YC_MACROS.h
timeave_statv_write.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
timeave_statv_write.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
timeave_statv_write.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
timeave_statv_write.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
timeave_statv_write.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
timeave_statv_write.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
timeave_statv_write.f: MNC_PARAMS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
timeave_statv_write.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
timeave_statv_write.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
timeave_statv_write.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
timeave_statv_write.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
timeave_statv_write.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
timeave_statv_write.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
timeave_statv_write.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h TIMEAVE_OPTIONS.h
timeave_statv_write.f: TIMEAVE_STATV.h /usr/include/stdc-predef.h XC_MACROS.h
timeave_statv_write.f: YC_MACROS.h
timeave_surf_flux.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
timeave_surf_flux.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
timeave_surf_flux.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h
timeave_surf_flux.f: EEPARAMS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h
timeave_surf_flux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
timeave_surf_flux.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
timeave_surf_flux.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
timeave_surf_flux.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
timeave_surf_flux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
timeave_surf_flux.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
timeave_surf_flux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
timeave_surf_flux.f: SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
timeave_surf_flux.f: TIMEAVE_OPTIONS.h TIMEAVE_STATV.h
timeave_surf_flux.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
timers.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h EESUPPORT.h
timers.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
timers.f: SIZE.h /usr/include/stdc-predef.h
timestep.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
timestep.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
timestep.f: DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
timestep.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
timestep.f: MASKS_MACROS.h MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h
timestep.f: RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
timestep.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
timestep.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
timestep.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timestep.f: RECIP_HFACW_MACROS.h RESTART.h SIZE.h SURFACE.h TANPHIATU_MACROS.h
timestep.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
timestep.f: YC_MACROS.h
timestep_tracer.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
timestep_tracer.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
timestep_tracer.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
timestep_tracer.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
timestep_tracer.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
timestep_tracer.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
timestep_tracer.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
timestep_tracer.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
timestep_tracer.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
timestep_tracer.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timestep_tracer.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
timestep_tracer.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h XC_MACROS.h
timestep_tracer.f: YC_MACROS.h
timestep_wvel.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
timestep_wvel.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
timestep_wvel.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
timestep_wvel.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
timestep_wvel.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
timestep_wvel.f: NH_VARS.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
timestep_wvel.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
timestep_wvel.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
timestep_wvel.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
timestep_wvel.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
timestep_wvel.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
timestep_wvel.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
tracers_correction_step.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
tracers_correction_step.f: DYNVARS.h EEPARAMS.h GAD.h PACKAGES_CONFIG.h
tracers_correction_step.f: PARAMS.h SIZE.h /usr/include/stdc-predef.h
tracers_iigw_correction.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
tracers_iigw_correction.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
tracers_iigw_correction.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h
tracers_iigw_correction.f: DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h GRID.h
tracers_iigw_correction.f: GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
tracers_iigw_correction.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
tracers_iigw_correction.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
tracers_iigw_correction.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
tracers_iigw_correction.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
tracers_iigw_correction.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
tracers_iigw_correction.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
tracers_iigw_correction.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
tracers_iigw_correction.f: RECIP_HFACW_MACROS.h SIZE.h TANPHIATU_MACROS.h
tracers_iigw_correction.f: TANPHIATV_MACROS.h /usr/include/stdc-predef.h
tracers_iigw_correction.f: XC_MACROS.h YC_MACROS.h
turnoff_model_io.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
turnoff_model_io.f: PACKAGES_CONFIG.h PARAMS.h SIZE.h
turnoff_model_io.f: /usr/include/stdc-predef.h
update_cg2d.f: CG2D.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
update_cg2d.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
update_cg2d.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
update_cg2d.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
update_cg2d.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
update_cg2d.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
update_cg2d.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
update_cg2d.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
update_cg2d.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
update_cg2d.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
update_cg2d.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
update_cg2d.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
update_etah.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
update_etah.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_etah.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
update_etah.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
update_etah.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
update_etah.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
update_etah.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
update_etah.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
update_etah.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
update_etah.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
update_etah.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
update_etah.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
update_etaws.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
update_etaws.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_etaws.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
update_etaws.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
update_etaws.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
update_etaws.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
update_etaws.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
update_etaws.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
update_etaws.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
update_etaws.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
update_etaws.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
update_etaws.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
update_masks_etc.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
update_masks_etc.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_masks_etc.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
update_masks_etc.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
update_masks_etc.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h
update_masks_etc.f: MASKW_MACROS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
update_masks_etc.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h
update_masks_etc.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
update_masks_etc.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
update_masks_etc.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
update_masks_etc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
update_masks_etc.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
update_masks_etc.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
update_r_star.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
update_r_star.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_r_star.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
update_r_star.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
update_r_star.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
update_r_star.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
update_r_star.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
update_r_star.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
update_r_star.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
update_r_star.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
update_r_star.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
update_r_star.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
update_sigma.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
update_sigma.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_sigma.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
update_sigma.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
update_sigma.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
update_sigma.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h
update_sigma.f: RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
update_sigma.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
update_sigma.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
update_sigma.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
update_sigma.f: SIZE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
update_sigma.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
update_surf_dr.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
update_surf_dr.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_surf_dr.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h
update_surf_dr.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
update_surf_dr.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
update_surf_dr.f: PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
update_surf_dr.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
update_surf_dr.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
update_surf_dr.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
update_surf_dr.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h SURFACE.h
update_surf_dr.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
update_surf_dr.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
utils.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
utils.f: /usr/include/stdc-predef.h
w2_cumulsum_z_tile.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CUMULSUM.h EEPARAMS.h
w2_cumulsum_z_tile.f: EESUPPORT.h
w2_cumulsum_z_tile.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
w2_cumulsum_z_tile.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_cumulsum_z_tile.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_e2setup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h PACKAGES_CONFIG.h
w2_e2setup.f: SIZE.h /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_e2setup.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_eeboot.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_eeboot.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h W2_EXCH2_SIZE.h
w2_eeboot.f: W2_EXCH2_TOPOLOGY.h
w2_map_procs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_map_procs.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h W2_EXCH2_SIZE.h
w2_map_procs.f: W2_EXCH2_TOPOLOGY.h
w2_print_comm_sequence.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_print_comm_sequence.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_print_comm_sequence.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
w2_print_e2setup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_print_e2setup.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_print_e2setup.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_readparms.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_readparms.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h W2_EXCH2_SIZE.h
w2_readparms.f: W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_set_cs6_facets.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_set_cs6_facets.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_set_cs6_facets.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_set_f2f_index.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_set_f2f_index.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_set_f2f_index.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_set_gen_facets.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_set_gen_facets.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_set_gen_facets.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_set_map_cumsum.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_set_map_cumsum.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_set_map_cumsum.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_set_map_tiles.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_set_map_tiles.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_set_map_tiles.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_set_myown_facets.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h
w2_set_myown_facets.f: PACKAGES_CONFIG.h SIZE.h /usr/include/stdc-predef.h
w2_set_myown_facets.f: W2_EXCH2_PARAMS.h W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h
w2_set_myown_facets.f: W2_OPTIONS.h
w2_set_single_facet.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_set_single_facet.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_set_single_facet.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
w2_set_tile2tiles.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
w2_set_tile2tiles.f: /usr/include/stdc-predef.h W2_EXCH2_PARAMS.h
w2_set_tile2tiles.f: W2_EXCH2_SIZE.h W2_EXCH2_TOPOLOGY.h W2_OPTIONS.h
write_fld_3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_3d_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_3d_rl.f: /usr/include/stdc-predef.h
write_fld_3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_3d_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_3d_rs.f: /usr/include/stdc-predef.h
write_fld_s3d_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_s3d_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_s3d_rl.f: /usr/include/stdc-predef.h
write_fld_s3d_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_s3d_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_s3d_rs.f: /usr/include/stdc-predef.h
write_fld_xy_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_xy_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_xy_rl.f: /usr/include/stdc-predef.h
write_fld_xy_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_xy_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_xy_rs.f: /usr/include/stdc-predef.h
write_fld_xyz_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_xyz_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_xyz_rl.f: /usr/include/stdc-predef.h
write_fld_xyz_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_fld_xyz_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_fld_xyz_rs.f: /usr/include/stdc-predef.h
write_fullarray_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
write_fullarray_rl.f: /usr/include/stdc-predef.h
write_fullarray_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
write_fullarray_rs.f: /usr/include/stdc-predef.h
write_glvec_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_glvec_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_glvec_rl.f: /usr/include/stdc-predef.h
write_glvec_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_glvec_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_glvec_rs.f: /usr/include/stdc-predef.h
write_grid.f: AD_CONFIG.h CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
write_grid.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
write_grid.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h EEPARAMS.h FCORI_MACROS.h
write_grid.f: GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
write_grid.f: HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h MNC_PARAMS.h
write_grid.f: PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h
write_grid.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
write_grid.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
write_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
write_grid.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h SIZE.h
write_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h /usr/include/stdc-predef.h
write_grid.f: XC_MACROS.h YC_MACROS.h
write_local_rl.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_local_rl.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_local_rl.f: /usr/include/stdc-predef.h
write_local_rs.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_local_rs.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_local_rs.f: /usr/include/stdc-predef.h
write_pickup.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DYNVARS.h
write_pickup.f: EEPARAMS.h FFIELDS.h GAD.h MNC_PARAMS.h NH_VARS.h
write_pickup.f: PACKAGES_CONFIG.h PARAMS.h RESTART.h SIZE.h SURFACE.h
write_pickup.f: /usr/include/stdc-predef.h
write_rec.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h EEPARAMS.h
write_rec.f: PACKAGES_CONFIG.h PARAMS.h RW_OPTIONS.h SIZE.h
write_rec.f: /usr/include/stdc-predef.h
write_state.f: CPP_EEMACROS.h CPP_EEOPTIONS.h CPP_OPTIONS.h DXC_MACROS.h
write_state.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
write_state.f: DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EEPARAMS.h
write_state.f: FCORI_MACROS.h GRID.h GRID_MACROS.h HFACC_MACROS.h
write_state.f: HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h
write_state.f: MNC_PARAMS.h PACKAGES_CONFIG.h PARAMS.h RA_MACROS.h
write_state.f: RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
write_state.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
write_state.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
write_state.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
write_state.f: SIZE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
write_state.f: /usr/include/stdc-predef.h XC_MACROS.h YC_MACROS.h
write_utils.f: CPP_EEMACROS.h CPP_EEOPTIONS.h EEPARAMS.h SIZE.h
write_utils.f: /usr/include/stdc-predef.h
dargan_bettsmiller_mod.f90: simple_sat_vapor_pres_mod.o gcm_params_mod.o constants_mod.o
diffusivity_mod.f90: gcm_params_mod.o constants_mod.o monin_obukhov_mod.o
lscale_cond_mod.f90: simple_sat_vapor_pres_mod.o constants_mod.o gcm_params_mod.o
mixed_layer_mod.f90: gcm_params_mod.o constants_mod.o
monin_obukhov_mod.f90: gcm_params_mod.o constants_mod.o
my25_turb_mod.f90: constants_mod.o monin_obukhov_mod.o
radiation_mod.f90: gcm_params_mod.o constants_mod.o
shallow_conv_mod.f90: simple_sat_vapor_pres_mod.o constants_mod.o
simple_sat_vapor_pres_mod.f90: constants_mod.o
surface_flux_mod.f90: monin_obukhov_mod.o simple_sat_vapor_pres_mod.o gcm_params_mod.o constants_mod.o
vert_diff_mod.f90: constants_mod.o
vert_turb_driver_mod.f90: my25_turb_mod.o diffusivity_mod.o shallow_conv_mod.o gcm_params_mod.o constants_mod.o
atm_phys_driver.f: radiation_mod.o lscale_cond_mod.o dargan_bettsmiller_mod.o surface_flux_mod.o vert_turb_driver_mod.o vert_diff_mod.o mixed_layer_mod.o constants_mod.o
atm_phys_init_fixed.f: gcm_params_mod.o constants_mod.o radiation_mod.o lscale_cond_mod.o dargan_bettsmiller_mod.o vert_turb_driver_mod.o vert_diff_mod.o mixed_layer_mod.o
