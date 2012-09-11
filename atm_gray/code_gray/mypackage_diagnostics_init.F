C $Header: /u/gcmpack/MITgcm_contrib/verification_other/atm_gray/code_gray/Attic/mypackage_diagnostics_init.F,v 1.1 2012/09/11 03:53:04 jmc Exp $
C $Name:  $

#include "MYPACKAGE_OPTIONS.h"

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
CBOP 0
C !ROUTINE: MYPACKAGE_DIAGNOSTICS_INIT

C !INTERFACE:
      SUBROUTINE MYPACKAGE_DIAGNOSTICS_INIT( myThid )

C     !DESCRIPTION:
C     Initialize list of all available diagnostics

C     !USES:
      IMPLICIT NONE
#include "EEPARAMS.h"
#include "SIZE.h"
#include "MYPACKAGE.h"

C     !INPUT/OUTPUT PARAMETERS:
C     myThid ::  my Thread Id number
      INTEGER myThid
CEOP

#ifdef ALLOW_DIAGNOSTICS
C     !LOCAL VARIABLES:
C     === Local variables ===
C     diagNum   :: diagnostics number in the (long) list of available diag.
C     diagMate  :: diag. mate number in the (long) list of available diag.
C     diagName  :: local short name (8c) of a diagnostics
C     diagCode  :: local parser field with characteristics of the diagnostics
C              cf head of S/R DIAGNOSTICS_INIT_EARLY or DIAGNOSTICS_MAIN_INIT
C     diagUnits :: local string (16c): physical units of a diagnostic field
C     diagTitle :: local string (80c): description of field in diagnostic
      INTEGER       diagNum
      INTEGER       diagMate
      CHARACTER*8   diagName
      CHARACTER*16  diagCode
      CHARACTER*16  diagUnits
      CHARACTER*(80) diagTitle

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|

c     IF ( useDiagnotics ) THEN

        diagName  = 'MYPaSta1'
        diagTitle = 'Scalar state variable 1 for package MYPACKAGE'
        diagUnits = 'unit            '
        diagCode  = 'SM      MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPaSta2'
        diagTitle = 'Scalar state variable 2 for package MYPACKAGE'
        diagUnits = 'unit            '
        diagCode  = 'SM      MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPaStaU'
        diagTitle = 'uVel-type state variable for package MYPACKAGE'
        diagUnits = 'unit            '
        diagCode  = 'UM      MR      '
        diagMate  = diagNum + 2
        IF ( myPa_StaV_Cgrid ) diagCode(2:2) = 'U'
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )

        diagName  = 'MYPaStaV'
        diagTitle = 'vVel-type state variable for package MYPACKAGE'
        diagUnits = 'unit            '
        diagCode  = 'VM      MR      '
        diagMate  = diagNum
        IF ( myPa_StaV_Cgrid ) diagCode(2:2) = 'V'
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )

        diagName  = 'MYPaSur1'
        diagTitle = 'Surface field 1 for package MYPACKAGE'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPaSur2'
        diagTitle = 'Surface field 2 for package MYPACKAGE'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPadTdt'
        diagTitle = ' Pot.Temp. tendency from package MYPACKAGE'
        diagUnits = 'K/s             '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPadSdt'
        diagTitle = ' Salinity  tendency from package MYPACKAGE'
        diagUnits = 'psu/s           '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPadUdt'
        diagTitle = 'u-Velocity tendency from package MYPACKAGE'
        diagUnits = 'm/s^2           '
        diagCode  = 'UMR     MR      '
        diagMate  = diagNum + 2
        IF ( myPa_Tend_Cgrid ) diagCode(2:2) = 'U'
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )

        diagName  = 'MYPadVdt'
        diagTitle = 'v-Velocity tendency from package MYPACKAGE'
        diagUnits = 'm/s^2           '
        diagCode  = 'VMR     MR      '
        diagMate  = diagNum
        IF ( myPa_Tend_Cgrid ) diagCode(2:2) = 'V'
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )

C--     an example of how to set "free levels option" diagnostics
        diagName  = 'MYPaLev3'
        diagTitle = '3-levels field for package MYPACKAGE'
        diagUnits = 'unit            '
        diagCode  = 'SM      MX      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        CALL DIAGNOSTICS_SETKLEV( diagName, 3, myThid )

C-- Added:
        diagName  = 'MYPaDifT'
        diagTitle = 'ATM_GRAY: Vertical Diffusion of Temp & Q'
        diagUnits = 'unit            '
        diagCode  = 'WM      LR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'MYPaDifM'
        diagTitle = 'ATM_GRAY: Vertical Diffusion of Momentum'
        diagUnits = 'unit            '
        diagCode  = 'WM      LR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPaCprc'
        diagTitle = 'ATM_GRAY: Convective Precip'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'MYPaLprc'
        diagTitle = 'ATM_GRAY: Large-Scale Precip'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'MYPaflut'
        diagTitle = 'ATM_GRAY: Flux of sensible heat'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'MYPafluq'
        diagTitle = 'ATM_GRAY: Flux of water vapor'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'MYPafluu'
        diagTitle = 'ATM_GRAY: Zonal comp if stress'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'MYPafluv'
        diagTitle = 'ATM_GRAY: Meridional comp of stress'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

c       diagName  = 'MYPadtug'
c       diagTitle = 'ATM_GRAY: diff dt ug'
c       diagUnits = 'unit            '
c       diagCode  = 'UMR     MR      '
c       diagMate  = diagNum + 2
c       CALL DIAGNOSTICS_ADDTOLIST( diagNum,
c    I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )
c       diagName  = 'MYPadtvg'
c       diagTitle = 'ATM_GRAY: diff dt vg'
c       diagUnits = 'unit            '
c       diagCode  = 'VMR     MR      '
c       diagMate  = diagNum
c       CALL DIAGNOSTICS_ADDTOLIST( diagNum,
c    I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )
        diagName  = 'MYPadttg'
        diagTitle = 'ATM_GRAY: diff dt tg'
        diagUnits = 'unit            '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
                        diagName  = 'MYPadtqg'
        diagTitle = 'ATM_GRAY: diff dt qg'
        diagUnits = 'unit            '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

c     ENDIF

#endif /* ALLOW_DIAGNOSTICS */

      RETURN
      END
