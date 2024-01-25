# Multithreaded + multi-processing makefile for:
#    Linux c071 4.11.9-100.fc24.x86_64 #1 SMP Wed Jul 5 16:34:07 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
# This makefile was generated automatically on
#    Tue Aug 31 12:26:21 EDT 2021
# by the command:
#    ../../../MITgcm/tools/genmake2 -mpi -rootdir /home/ptuckman/MITgcm -of /home/ptuckman/MITgcm/tools/build_options/linux_amd64_ifort
# executed by:
#    ptuckman@c071:/home/ptuckman/BrianCode/atm_gray_cpl_dd/build_cpl
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
SOURCEDIRS  =  ../../code_cpl ../../shared_code $(ROOTDIR)/pkg/atm_ocn_coupler $(ROOTDIR)/pkg/compon_communic
INCLUDEDIRS =  ../../code_cpl ../../shared_code $(ROOTDIR)/pkg/atm_ocn_coupler $(ROOTDIR)/pkg/compon_communic
EXEDIR      = .
EXECUTABLE  = $(EXEDIR)/mitgcmuv
TOOLSDIR    = $(ROOTDIR)/tools
OADTOOLS    = 

#eh3  new defines for the adjoint work
AUTODIFF    = $(ROOTDIR)/pkg/autodiff
EXE_AD      = mitgcmuv_ad
EXE_FTL     = mitgcmuv_ftl
EXE_SVD     = mitgcmuv_svd

ENABLED_PACKAGES =  -DALLOW_ATM_OCN_COUPLER -DALLOW_COMPON_COMMUNIC
DISABLED_PACKAGES =  -UALLOW_ADMTLM -UALLOW_AIM_V23 -UALLOW_ATM2D -UALLOW_ATM_COMMON -UALLOW_ATM_COMPON_INTERF -UALLOW_ATM_PHYS -UALLOW_AUTODIFF -UALLOW_BBL -UALLOW_BLING -UALLOW_BULK_FORCE -UALLOW_CAL -UALLOW_CD_CODE -UALLOW_CFC -UALLOW_CHEAPAML -UALLOW_CHRONOS -UALLOW_COST -UALLOW_CTRL -UALLOW_DEBUG -UALLOW_DIAGNOSTICS -UALLOW_DIC -UALLOW_DOWN_SLOPE -UALLOW_EBM -UALLOW_ECCO -UALLOW_EMBED_FILES -UALLOW_EXCH2 -UALLOW_EXF -UALLOW_FIZHI -UALLOW_FLT -UALLOW_FRAZIL -UALLOW_GCHEM -UALLOW_GENERIC_ADVDIFF -UALLOW_GGL90 -UALLOW_GMREDI -UALLOW_GRDCHK -UALLOW_GRIDALT -UALLOW_ICEFRONT -UALLOW_KL10 -UALLOW_KPP -UALLOW_LAND -UALLOW_LAYERS -UALLOW_LONGSTEP -UALLOW_MATRIX -UALLOW_MDSIO -UALLOW_MNC -UALLOW_MOM_COMMON -UALLOW_MOM_FLUXFORM -UALLOW_MOM_VECINV -UALLOW_MONITOR -UALLOW_MY82 -UALLOW_MYPACKAGE -UALLOW_OBCS -UALLOW_OCN_COMPON_INTERF -UALLOW_OFFLINE -UALLOW_OPENAD -UALLOW_OPPS -UALLOW_PP81 -UALLOW_PROFILES -UALLOW_PTRACERS -UALLOW_RBCS -UALLOW_REGRID -UALLOW_RUNCLOCK -UALLOW_RW -UALLOW_SALT_PLUME -UALLOW_SBO -UALLOW_SEAICE -UALLOW_SHAP_FILT -UALLOW_SHELFICE -UALLOW_SHOWFLOPS -UALLOW_SMOOTH -UALLOW_SPHERE -UALLOW_STREAMICE -UALLOW_THSICE -UALLOW_TIMEAVE -UALLOW_ZONAL_FILT

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
FFLAGS =  -m64 -convert big_endian -assume byterecl -mcmodel=medium
FOPTIM = -O2 -align -ip -fp-model source -xHost 
# Optim./debug for FC
F90FLAGS =  -m64 -convert big_endian -assume byterecl -mcmodel=medium
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
 accept_component_registrations.F \
 atm_to_ocn_maprunoff.F \
 atm_to_ocn_mapxyr8.F \
 coupler.F \
 cpl_check_cplconfig.F \
 cpl_init_atm_vars.F \
 cpl_init_ocn_vars.F \
 cpl_read_params.F \
 cpl_recv_atm_atmconfig.F \
 cpl_recv_atm_fields.F \
 cpl_recv_ocn_fields.F \
 cpl_recv_ocn_ocnconfig.F \
 cpl_register_atm.F \
 cpl_register_ocn.F \
 cpl_send_atm_cplparms.F \
 cpl_send_atm_fields.F \
 cpl_send_atm_ocnconfig.F \
 cpl_send_ocn_atmconfig.F \
 cpl_send_ocn_cplparms.F \
 cpl_send_ocn_fields.F \
 exch_component_configs.F \
 initialise.F \
 mds_byteswap.F \
 ocn_to_atm_mapxyr8.F \
 set_runoffmap.F \
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
 mitcplr_sortranks.F
NON_AD_F77_SRC_FILES =  \
 accept_component_registrations.F \
 atm_to_ocn_maprunoff.F \
 atm_to_ocn_mapxyr8.F \
 coupler.F \
 cpl_check_cplconfig.F \
 cpl_init_atm_vars.F \
 cpl_init_ocn_vars.F \
 cpl_read_params.F \
 cpl_recv_atm_atmconfig.F \
 cpl_recv_atm_fields.F \
 cpl_recv_ocn_fields.F \
 cpl_recv_ocn_ocnconfig.F \
 cpl_register_atm.F \
 cpl_register_ocn.F \
 cpl_send_atm_cplparms.F \
 cpl_send_atm_fields.F \
 cpl_send_atm_ocnconfig.F \
 cpl_send_ocn_atmconfig.F \
 cpl_send_ocn_cplparms.F \
 cpl_send_ocn_fields.F \
 exch_component_configs.F \
 initialise.F \
 mds_byteswap.F \
 ocn_to_atm_mapxyr8.F \
 set_runoffmap.F \
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
 mitcplr_sortranks.F
C_SRC_FILES =  \
 setdir.c
F90_SRC_FILES = 
H_SRC_FILES =  \
 ATMSIZE.h \
 OCNSIZE.h \
 ATMIDS.h \
 OCNIDS.h \
 ATMVARS.h \
 CPLIDS.h \
 CPL_MAP2GRIDS.h \
 CPL_PARAMS.h \
 CPP_EEOPTIONS.h \
 CPP_OPTIONS.h \
 OCNVARS.h \
 CPLR_SIG.h
AD_FLOW_FILES = 

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
	../../../MITgcm/tools/genmake2  "-mpi" "-rootdir" "/home/ptuckman/MITgcm" "-of" "/home/ptuckman/MITgcm/tools/build_options/linux_amd64_ifort"
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
	-echo "#define THISDATE 'Tue Aug 31 12:26:21 EDT 2021'" >> $@
	-echo "#define THISHOST 'c071'" >> $@

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

AD_FILES = 

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


#  These files are linked from ../../code_cpl ( aka ../../code_cpl )
 ATMSIZE.h OCNSIZE.h :
	if [ ! -L $@ ]; then $(LN) ../../code_cpl/$@ $@; fi

#  These files are linked from ../../shared_code ( aka ../../shared_code )
 ATMIDS.h OCNIDS.h :
	if [ ! -L $@ ]; then $(LN) ../../shared_code/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/atm_ocn_coupler ( aka /home/ptuckman/MITgcm/pkg/atm_ocn_coupler )
 accept_component_registrations.F atm_to_ocn_maprunoff.F atm_to_ocn_mapxyr8.F ATMVARS.h coupler.F cpl_check_cplconfig.F CPLIDS.h cpl_init_atm_vars.F cpl_init_ocn_vars.F CPL_MAP2GRIDS.h CPL_PARAMS.h cpl_read_params.F cpl_recv_atm_atmconfig.F cpl_recv_atm_fields.F cpl_recv_ocn_fields.F cpl_recv_ocn_ocnconfig.F cpl_register_atm.F cpl_register_ocn.F cpl_send_atm_cplparms.F cpl_send_atm_fields.F cpl_send_atm_ocnconfig.F cpl_send_ocn_atmconfig.F cpl_send_ocn_cplparms.F cpl_send_ocn_fields.F CPP_EEOPTIONS.h CPP_OPTIONS.h exch_component_configs.F initialise.F mds_byteswap.F ocn_to_atm_mapxyr8.F OCNVARS.h setdir.c set_runoffmap.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/atm_ocn_coupler/$@ $@; fi

#  These files are linked from $(ROOTDIR)/pkg/compon_communic ( aka /home/ptuckman/MITgcm/pkg/compon_communic )
 comprecv_i4vec.F comprecv_r4.F comprecv_r4tiles.F comprecv_r8.F comprecv_r8tiles.F compsend_i4vec.F compsend_r4.F compsend_r4tiles.F compsend_r8.F compsend_r8tiles.F couprecv_i4vec.F couprecv_r4.F couprecv_r4tiles.F couprecv_r8.F couprecv_r8tiles.F coupsend_i4vec.F coupsend_r4.F coupsend_r4tiles.F coupsend_r8.F coupsend_r8tiles.F CPLR_SIG.h generate_tag.F mitcomponent_init.F mitcomponent_register.F mitcomponent_tile_register.F mitcoupler_init.F mitcoupler_register.F mitcoupler_tile_register.F mitcplr_all_check.F mitcplr_char2dbl.F mitcplr_char2int.F mitcplr_char2real.F mitcplr_dbl2char.F mitcplr_init1.F mitcplr_init2a.F mitcplr_init2b.F mitcplr_initcomp.F mitcplr_int2char.F mitcplr_match_comp.F mitcplr_real2char.F mitcplr_sortranks.F :
	if [ ! -L $@ ]; then $(LN) $(ROOTDIR)/pkg/compon_communic/$@ $@; fi


# DO NOT DELETE


accept_component_registrations.f: ATMIDS.h ATMSIZE.h CPLIDS.h CPP_EEOPTIONS.h
accept_component_registrations.f: CPP_OPTIONS.h OCNIDS.h OCNSIZE.h
accept_component_registrations.f: /usr/include/stdc-predef.h
atm_to_ocn_maprunoff.f: ATMSIZE.h CPL_MAP2GRIDS.h CPP_EEOPTIONS.h
atm_to_ocn_maprunoff.f: CPP_OPTIONS.h OCNSIZE.h /usr/include/stdc-predef.h
atm_to_ocn_mapxyr8.f: CPP_EEOPTIONS.h CPP_OPTIONS.h /usr/include/stdc-predef.h
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
coupler.f: CPL_PARAMS.h
coupler.f: /home/software/intel/intel-2017.0.1/pkg/openmpi/1.10.5/include/mpif.h
coupler.f: /usr/include/stdc-predef.h
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
cpl_check_cplconfig.f: ATMSIZE.h ATMVARS.h CPL_MAP2GRIDS.h CPL_PARAMS.h
cpl_check_cplconfig.f: CPP_EEOPTIONS.h CPP_OPTIONS.h OCNSIZE.h OCNVARS.h
cpl_check_cplconfig.f: /usr/include/stdc-predef.h
cpl_init_atm_vars.f: ATMSIZE.h ATMVARS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
cpl_init_atm_vars.f: /usr/include/stdc-predef.h
cpl_init_ocn_vars.f: CPP_EEOPTIONS.h CPP_OPTIONS.h OCNSIZE.h OCNVARS.h
cpl_init_ocn_vars.f: /usr/include/stdc-predef.h
cpl_read_params.f: CPL_PARAMS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
cpl_read_params.f: /usr/include/stdc-predef.h
cpl_recv_atm_atmconfig.f: ATMIDS.h ATMSIZE.h ATMVARS.h CPL_PARAMS.h
cpl_recv_atm_atmconfig.f: CPP_EEOPTIONS.h CPP_OPTIONS.h
cpl_recv_atm_atmconfig.f: /usr/include/stdc-predef.h
cpl_recv_atm_fields.f: ATMIDS.h ATMSIZE.h ATMVARS.h CPL_PARAMS.h
cpl_recv_atm_fields.f: CPP_EEOPTIONS.h CPP_OPTIONS.h
cpl_recv_atm_fields.f: /usr/include/stdc-predef.h
cpl_recv_ocn_fields.f: CPL_PARAMS.h CPP_EEOPTIONS.h CPP_OPTIONS.h OCNIDS.h
cpl_recv_ocn_fields.f: OCNSIZE.h OCNVARS.h /usr/include/stdc-predef.h
cpl_recv_ocn_ocnconfig.f: CPL_PARAMS.h CPP_EEOPTIONS.h CPP_OPTIONS.h OCNIDS.h
cpl_recv_ocn_ocnconfig.f: OCNSIZE.h OCNVARS.h /usr/include/stdc-predef.h
cpl_register_atm.f: ATMIDS.h ATMSIZE.h CPP_EEOPTIONS.h CPP_OPTIONS.h
cpl_register_atm.f: /usr/include/stdc-predef.h
cpl_register_ocn.f: CPP_EEOPTIONS.h CPP_OPTIONS.h OCNIDS.h OCNSIZE.h OCNVARS.h
cpl_register_ocn.f: /usr/include/stdc-predef.h
cpl_send_atm_cplparms.f: ATMIDS.h CPL_PARAMS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
cpl_send_atm_cplparms.f: /usr/include/stdc-predef.h
cpl_send_atm_fields.f: ATMIDS.h ATMSIZE.h ATMVARS.h CPL_PARAMS.h
cpl_send_atm_fields.f: CPP_EEOPTIONS.h CPP_OPTIONS.h OCNSIZE.h OCNVARS.h
cpl_send_atm_fields.f: /usr/include/stdc-predef.h
cpl_send_atm_ocnconfig.f: ATMIDS.h ATMSIZE.h ATMVARS.h CPP_EEOPTIONS.h
cpl_send_atm_ocnconfig.f: CPP_OPTIONS.h OCNSIZE.h OCNVARS.h
cpl_send_atm_ocnconfig.f: /usr/include/stdc-predef.h
cpl_send_ocn_atmconfig.f: ATMIDS.h ATMSIZE.h ATMVARS.h CPP_EEOPTIONS.h
cpl_send_ocn_atmconfig.f: CPP_OPTIONS.h OCNIDS.h OCNSIZE.h OCNVARS.h
cpl_send_ocn_atmconfig.f: /usr/include/stdc-predef.h
cpl_send_ocn_cplparms.f: CPL_PARAMS.h CPP_EEOPTIONS.h CPP_OPTIONS.h OCNIDS.h
cpl_send_ocn_cplparms.f: /usr/include/stdc-predef.h
cpl_send_ocn_fields.f: ATMSIZE.h ATMVARS.h CPL_PARAMS.h CPP_EEOPTIONS.h
cpl_send_ocn_fields.f: CPP_OPTIONS.h OCNIDS.h OCNSIZE.h OCNVARS.h
cpl_send_ocn_fields.f: /usr/include/stdc-predef.h
exch_component_configs.f: CPP_EEOPTIONS.h CPP_OPTIONS.h
exch_component_configs.f: /usr/include/stdc-predef.h
generate_tag.f: CPLR_SIG.h /usr/include/stdc-predef.h
initialise.f: CPLIDS.h CPP_EEOPTIONS.h CPP_OPTIONS.h
initialise.f: /usr/include/stdc-predef.h
mds_byteswap.f: CPP_EEOPTIONS.h CPP_OPTIONS.h /usr/include/stdc-predef.h
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
ocn_to_atm_mapxyr8.f: CPP_EEOPTIONS.h CPP_OPTIONS.h /usr/include/stdc-predef.h
set_runoffmap.f: ATMSIZE.h CPL_MAP2GRIDS.h CPL_PARAMS.h CPP_EEOPTIONS.h
set_runoffmap.f: CPP_OPTIONS.h OCNSIZE.h /usr/include/stdc-predef.h
