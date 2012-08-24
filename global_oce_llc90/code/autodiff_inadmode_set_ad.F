C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_llc90/code/Attic/autodiff_inadmode_set_ad.F,v 1.1 2012/08/24 16:33:52 gforget Exp $

#include "PACKAGES_CONFIG.h"
#include "CPP_OPTIONS.h"
#if (defined (ALLOW_GMREDI)) 
# include "GMREDI_OPTIONS.h"
#endif

#ifdef ALLOW_AUTODIFF

#include "AUTODIFF_OPTIONS.h"

      subroutine adautodiff_inadmode_set( myThid )
      IMPLICIT NONE
C     /==========================================================\
C     | SUBROUTINE adautodiff_inadmode_set                       |
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
      CHARACTER*(MAX_LEN_MBUF) msgBuf

      inAdmode = inAdTrue

      WRITE(msgBuf,'(A)') ' autodiff_inadmode_set_ad : do 1 ad step'
      CALL PRINT_MESSAGE( msgBuf, standardmessageunit,
     &                    SQUEEZE_RIGHT , myThid)

#ifdef ALLOW_GMREDI
# ifndef GMREDI_WITH_STABLE_ADJOINT
cgf need to check that GMREDI_WITH_STABLE_ADJOINT
cgf gets through from either ECCO_CPPOPTINS.h or GMREDI_OPTIONS.h
      useGMREDI = .FALSE.
# endif
#endif
#ifdef ALLOW_GGL90
      useGGL90  = .FALSE.
#endif
#ifdef ALLOW_KPP
      useKPP    = .FALSE.
#endif
#ifdef ALLOW_SALT_PLUME
      useSALT_PLUME = .FALSE.
#endif
#ifdef ALLOW_SEAICE
      useSEAICE = .FALSE.
      SEAICEadjMODE=-1
      SEAICEuseDYNAMICS=.FALSE.
c      SEAICEuseFREEDRIFT = .TRUE.
c      SEAICEadjMODE=3
      SEAICEadvHeff=.FALSE.
      SEAICEadvArea=.FALSE.
      SEAICEadvSnow=.FALSE.
#endif

      viscFacAdj=2. _d 0

#ifdef ALLOW_VISC_OLD_FIXES
c remarks:
c 1) the following seems un-necessary as long
c as the implicit verctical advection is used
c 2) the values that are coded hereafter suit 
c the case of deltaTmom<=1800 but not the case
c of deltaTmom=3600

      viscAhGrid=6. _d -2

      DO k=1,Nr
       viscArNr(k)  = 4. _d -3
      ENDDO
      viscFacAdj=4. _d 0
#endif

#ifdef ALLOW_SEAICE
# ifdef ALLOW_SEAICE_OLD_FIXES
      epsArea=0.05 _d 0
      epsHeff=0.05 _d 0
# endif
#endif

      end

#endif /* ALLOW_AUTODIFF */

