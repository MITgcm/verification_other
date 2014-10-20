C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_llc90/code/Attic/ECCO_CPPOPTIONS.h,v 1.17 2014/10/20 03:29:00 gforget Exp $
C $Name:  $

#ifndef ECCO_CPPOPTIONS_H
#define ECCO_CPPOPTIONS_H

C-- Collect here, in a single option-file, options to control which optional
C   features to compile in packages AUTODIFF, COST, CTRL, ECCO, CAL and EXF.
C   If used, this option-file needs to be directly included in CPP_OPTIONS.h
C   Although this method, inherited from ECCO setup, has been traditionally
C   used for all adjoint built, work is in progess to allow to use the
C   standard metod (each of the above pkg get its own options from its
C   specific option-file) also for adjoint built.

C ********************************************************************
C ***                         ECCO Package                         ***
C ********************************************************************
C

#ifdef ALLOW_ECCO

C       >>> use model/src/forward_step.F
#define ALLOW_ECCO_EVOLUTION

C       >>> Cost function contributions
#define ALLOW_ECCO_OLD_FC_PRINT

C       >>> ALLOW_GENCOST_CONTRIBUTION: interactive way to add basic 2D cost function terms.
C       > In data.ecco, this requires the specification of data file (name, frequency,
C         etc.), bar file name for corresp. model average, standard error file name, etc.
C       > In addition, adding such cost terms requires editing ecco_cost.h to increase
C         NGENCOST, and editing cost_gencost_customize.F to implement the actual
C         model average (i.e. the bar file content).
#define ALLOW_GENCOST_CONTRIBUTION
C       >>> free form version of GENCOST: allows one to use otherwise defined elements (e.g.
C         psbar and and topex data) while taking advantage of the cost function/namelist slots
C         that can be made available using ALLOW_GENCOST_CONTRIBUTION. To this end
C         ALLOW_GENCOST_CONTRIBUTION simply switches off tests that check whether all of the
C         gencost elements (e.g. gencost_barfile and gencost_datafile) are specified in data.ecco.
C       > While this option increases flexibility within the gencost framework, it implies more room
C         for error, so it should be used cautiously, and with good knowledge of the rest of pkg/ecco.
C       > It requires providing a specific cost function routine, and editing cost_gencost_all.F accordingly.
#define ALLOW_GENCOST_FREEFORM
C       >>> 3 dimensional version of GENCOST:
#define ALLOW_GENCOST3D

c in case there is a single observational file (rather than yearly files)
c assume it contains a climatology (otherwise, assume it is a full time series)
#define COST_GENERIC_ASSUME_CYCLIC

c include global mean steric sea level correction in etanFull
#define ALLOW_PSBAR_STERIC

C       >>> In-Situ Profiles.
#define ALLOW_PROFILES_CONTRIBUTION

#endif /* ALLOW_ECCO */

C ********************************************************************
C ***                  Adjoint Support Package                     ***
C ********************************************************************

#ifdef ALLOW_AUTODIFF

#define ALLOW_AUTODIFF_TAMC
C
C       >>> Checkpointing as handled by TAMC
#define ALLOW_TAMC_CHECKPOINTING
# undef AUTODIFF_2_LEVEL_CHECKPOINT
C
C       >>> Extract adjoint state
#define ALLOW_AUTODIFF_MONITOR
C
C o use divided adjoint to split adjoint computations
#undef ALLOW_DIVIDED_ADJOINT
#undef ALLOW_DIVIDED_ADJOINT_MPI

#define ALLOW_AUTODIFF_WHTAPEIO
#define AUTODIFF_USE_OLDSTORE_2D
#define AUTODIFF_USE_OLDSTORE_3D
#define EXCLUDE_WHIO_GLOBUFF_2D
#define ALLOW_INIT_WHTAPEIO

#endif /* ALLOW_AUTODIFF */

C ********************************************************************
C ***               Control vector Package                         ***
C ********************************************************************
C 

#ifdef ALLOW_CTRL

#define ALLOW_PACKUNPACK_METHOD2
# undef  CTRL_SET_OLD_MAXCVARS_30
#define  CTRL_SET_PREC_32
#define  ALLOW_NONDIMENSIONAL_CONTROL_IO
# undef  CTRL_UNPACK_PRECISE
# undef  CTRL_PACK_PRECISE
#define ALLOW_GENTIM2D_CONTROL
#define ALLOW_GENARR2D_CONTROL
#define ALLOW_GENARR3D_CONTROL

C       >>> Spatial Correlation Operator.
#define ALLOW_SMOOTH_CORREL3D
#define ALLOW_SMOOTH3D
#define ALLOW_SMOOTH_CORREL2D
#define ALLOW_SMOOTH2D
#define ALLOW_ADCTRLBOUND

C       >>> rotation of xx for wind
#define ALLOW_ROTATE_UV_CONTROLS

#endif /* ALLOW_CTRL */

C ********************************************************************
#endif /* ECCO_CPPOPTIONS_H */

