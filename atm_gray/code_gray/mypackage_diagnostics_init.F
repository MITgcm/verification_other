C $Header: /u/gcmpack/MITgcm_contrib/verification_other/atm_gray/code_gray/Attic/mypackage_diagnostics_init.F,v 1.4 2012/12/03 03:53:30 jmc Exp $
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
        diagName  = 'AtPhdTdt'
        diagTitle = ' Pot.Temp. tendency from package ATM_PHYS'
        diagUnits = 'K/s             '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'AtPhdQdt'
        diagTitle = ' Spec.Humid tendency from package ATM_PHYS'
        diagUnits = '1/s             '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'AtPhdUdt'
        diagTitle = 'u-Velocity tendency from package ATM_PHYS'
        diagUnits = 'm/s^2           '
        diagCode  = 'UMR     MR      '
        diagMate  = diagNum + 2
        IF ( myPa_Tend_Cgrid ) diagCode(2:2) = 'U'
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )

        diagName  = 'AtPhdVdt'
        diagTitle = 'v-Velocity tendency from package ATM_PHYS'
        diagUnits = 'm/s^2           '
        diagCode  = 'VMR     MR      '
        diagMate  = diagNum
        IF ( myPa_Tend_Cgrid ) diagCode(2:2) = 'V'
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I   diagName, diagCode, diagUnits, diagTitle, diagMate, myThid )

        diagName  = 'AtPhDifT'
        diagTitle = 'ATM_PHYS: Vertical Diffusion for Temp & Q'
        diagUnits = 'unit            '
        diagCode  = 'WM      LR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhDifM'
        diagTitle = 'ATM_PHYS: Vertical Diffusion for Momentum'
        diagUnits = 'unit            '
        diagCode  = 'WM      LR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'AtPhCnvP'
        diagTitle = 'ATM_PHYS: Convective Precip'
        diagUnits = 'kg/m^2/s        '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhLscP'
        diagTitle = 'ATM_PHYS: Large-Scale Precip'
        diagUnits = 'kg/m^2/s        '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'AtPhInSR'
        diagTitle = 'ATM_PHYS: Incoming Shortwave Radiation (+=dw)'
        diagUnits = 'W/m^2           '
        diagCode  = 'SM P    U1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhOLR '
        diagTitle = 'ATM_PHYS: Outgoing Longwave  Radiation (+=up)'
        diagUnits = 'W/m^2           '
        diagCode  = 'SM P    U1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhNSSR'
        diagTitle = 'ATM_PHYS: Net Surface Shortwave Radiation (+=dw)'
        diagUnits = 'W/m^2           '
        diagCode  = 'SM P    L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhDSLR'
        diagTitle = 'ATM_PHYS: Downward Surface Longwave Rad. (+=dw)'
        diagUnits = 'W/m^2           '
        diagCode  = 'SM P    L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhUSLR'
        diagTitle = 'ATM_PHYS: Upward Surface Longwave Rad. (+=up)'
        diagUnits = 'W/m^2           '
        diagCode  = 'SM P    L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'AtPhSens'
        diagTitle = 'ATM_PHYS: surface sensible heat flux (+=up)'
        diagUnits = 'W/m^2           '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhEvap'
        diagTitle = 'ATM_PHYS: surface evaporation'
        diagUnits = 'kg/m^2/s        '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhTauX'
        diagTitle = 'ATM_PHYS: Zonal comp of surface stress'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhTauY'
        diagTitle = 'ATM_PHYS: Meridional comp of surface stress'
        diagUnits = 'unit            '
        diagCode  = 'SM      L1      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

        diagName  = 'AtPhdtTg'
        diagTitle = 'ATM_PHYS: vertical diff. tendency of temp.'
        diagUnits = 'K/s             '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhdtQg'
        diagTitle = 'ATM_PHYS: vertical diff. tendency of spec.humid'
        diagUnits = '1/s             '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )
        diagName  = 'AtPhDisH'
        diagTitle = 'ATM_PHYS: heating from dissipation'
        diagUnits = 'K/s             '
        diagCode  = 'SMR     MR      '
        CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

c     ENDIF

#endif /* ALLOW_DIAGNOSTICS */

      RETURN
      END
