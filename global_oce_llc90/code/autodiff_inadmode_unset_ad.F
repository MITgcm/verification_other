C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_llc90/code/Attic/autodiff_inadmode_unset_ad.F,v 1.1 2012/08/24 16:33:53 gforget Exp $

#include "PACKAGES_CONFIG.h"
#include "CPP_OPTIONS.h"
#if (defined (ALLOW_GMREDI))
# include "GMREDI_OPTIONS.h"
#endif

#ifdef ALLOW_AUTODIFF

#include "AUTODIFF_OPTIONS.h"

      subroutine adautodiff_inadmode_unset( myThid )
      IMPLICIT NONE
C     /==========================================================\
C     | SUBROUTINE autodiff_inadmode_unset                       |
C     |==========================================================|
C     == Global variables ===

#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "AUTODIFF_PARAMS.h"
#ifdef ALLOW_SEAICE
# include "SEAICE_SIZE.h"
# include "SEAICE.h"
# include "SEAICE_PARAMS.h"
#endif

C     == Routine arguments ==
C     myThid - Thread number for this instance of the routine.
      integer myThid
      integer k

      inAdMode = inAdFALSE

#ifdef ALLOW_GMREDI
# ifndef GMREDI_WITH_STABLE_ADJOINT
      useGMREDI = .TRUE.
# endif
#endif
#ifdef ALLOW_GGL90
      useGGL90  = .TRUE.
#endif
#ifdef ALLOW_KPP
      useKPP    = .TRUE.
#endif
#ifdef ALLOW_SALT_PLUME  
      useSALT_PLUME = .TRUE.
#endif
#ifdef ALLOW_SEAICE
      useSEAICE = .TRUE.
      SEAICEuseDYNAMICS=.TRUE.
c      SEAICEuseFREEDRIFT = .FALSE.
      SEAICEadjMODE=0
      SEAICEadvHeff=.TRUE.
      SEAICEadvArea=.TRUE.
      SEAICEadvSnow=.TRUE.
#endif

      viscFacAdj=1. _d 0

#ifdef ALLOW_VISC_OLD_FIXES
c remarks:
c 1) the following seems un-necessary as long
c as the implicit verctical advection is used
c 2) the values that are coded hereafter suit
c the case of deltaTmom<=1800 but not the case
c of deltaTmom=3600

      viscAhGrid=2. _d -2

      DO k=1,Nr
       viscArNr(k)  = 1. _d -3
      ENDDO
      viscFacAdj=1. _d 0
#endif

#ifdef ALLOW_SEAICE
# ifdef ALLOW_SEAICE_OLD_FIXES
      epsArea=0. _d 0
      epsHeff=0. _d 0
# endif
#endif 

      end

#endif /* ALLOW_AUTODIFF */

