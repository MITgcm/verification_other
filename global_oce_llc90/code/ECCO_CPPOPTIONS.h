C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_llc90/code/Attic/ECCO_CPPOPTIONS.h,v 1.14 2014/10/16 20:12:42 gforget Exp $
C $Name:  $

#ifndef ECCO_CPPOPTIONS_H
#define ECCO_CPPOPTIONS_H
#include "AD_CONFIG.h"
#include "PACKAGES_CONFIG.h"
#include "CPP_OPTIONS.h"

#ifdef ALLOW_ECCO

C CPP flags controlling which code is included in the files that
C will be compiled.
C
C ********************************************************************
C ***                         ECCO Package                         ***
C ********************************************************************
C

C       >>> Do a long protocol.
#undef ECCO_VERBOSE
C       >>> use model/src/forward_step.F
#define ALLOW_ECCO_EVOLUTION

C ********************************************************************
C ***                  Adjoint Support Package                     ***
C ********************************************************************

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
#define ALLOW_PACKUNPACK_METHOD2
#define AUTODIFF_USE_OLDSTORE_2D
#define AUTODIFF_USE_OLDSTORE_3D
#define EXCLUDE_WHIO_GLOBUFF_2D
#define ALLOW_INIT_WHTAPEIO

C ********************************************************************
C ***                     Calender Package                         ***
C ********************************************************************
C 
C CPP flags controlling which code is included in the files that
C will be compiled.

CPH >>>>>> THERE ARE NO MORE CAL OPTIONS TO BE SET <<<<<<

C ********************************************************************
C ***                Cost function Package                         ***
c ********************************************************************
C 

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

#define COST_GENERIC_ASSUME_CYCLIC

#define ALLOW_GENCOST3D

#define ALLOW_GENCOST_SSHV4_OUTPUT
# undef ALLOW_SHALLOW_ALTIMETRY
# undef ALLOW_HIGHLAT_ALTIMETRY
#define ALLOW_PSBAR_MEAN
#define ALLOW_PSBAR_STERIC
#define ALLOW_GENCOST_SEAICEV4

C       >>> In-Situ Profiles.
#define ALLOW_PROFILES_CONTRIBUTION

C ********************************************************************
C ***               Control vector Package                         ***
C ********************************************************************
C 
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

#endif /* ALLOW_ECCO */
#endif /* ECCO_CPPOPTIONS_H */

