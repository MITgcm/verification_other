C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_cs32/code/Attic/autodiff_inadmode_unset_ad.F,v 1.1 2012/08/24 16:27:27 gforget Exp $
C $Name:  $

#include "AUTODIFF_OPTIONS.h"

      SUBROUTINE ADAUTODIFF_INADMODE_UNSET( myThid )
C     *==========================================================*
C     | SUBROUTINE ADAUTODIFF_INADMODE_UNSET
C     *==========================================================*

      IMPLICIT NONE
C     == Global variables ===
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "AUTODIFF_PARAMS.h"
#ifdef ALLOW_SEAICE
#include "SEAICE_PARAMS.h"
#endif

C     == Routine arguments ==
C     myThid :: my Thread Id number
      INTEGER myThid
      CHARACTER*(MAX_LEN_MBUF) msgBuf

      inAdMode  = inAdFalse

      useKPP    = useKPPinFwdMode
      useGMRedi = useGMRediInFwdMode
      useSEAICE = useSEAICEinFwdMode

#ifdef ALLOW_GGL90
      useGGL90  = .TRUE.
#endif
#ifdef ALLOW_SALT_PLUME
      useSALT_PLUME = .TRUE.
#endif

      IF ( debugLevel.GE.debLevC ) THEN
       WRITE(msgBuf,'(A,L5)')
     &      'S/R ADAUTODIFF_INADMODE_UNSET: useKPP    =', useKPP
       CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                     SQUEEZE_RIGHT, myThid )
       WRITE(msgBuf,'(A,L5)')
     &      'S/R ADAUTODIFF_INADMODE_UNSET: useGMRedi =', useGMRedi
       CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                     SQUEEZE_RIGHT, myThid )
       WRITE(msgBuf,'(A,L5)')
     &      'S/R ADAUTODIFF_INADMODE_UNSET: useSEAICE =', useSEAICE
       CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                     SQUEEZE_RIGHT, myThid )
      ENDIF

#ifdef ALLOW_SEAICE
      IF ( turnFreeDriftInAdMode ) THEN
        SEAICEuseFREEDRIFT = .FALSE.
        IF ( debugLevel.GE.debLevC ) THEN
          WRITE(msgBuf,'(2A,L5)') 'S/R ADAUTODIFF_INADMODE_UNSET: ',
     &         'SEAICEuseFREEDRIFT =', SEAICEuseFREEDRIFT
          CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                        SQUEEZE_RIGHT, myThid )
        ENDIF
      ENDIF
#endif /* ALLOW_SEAICE */

      RETURN
      END
