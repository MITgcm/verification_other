C $Header: /u/gcmpack/MITgcm_contrib/verification_other/shelfice_remeshing/code/shelfice_remeshing.F,v 1.4 2016/02/29 16:05:41 dgoldberg Exp $
C $Name:  $
#include "SHELFICE_OPTIONS.h"
#ifdef ALLOW_CTRL
# include "CTRL_OPTIONS.h"
#endif

CBOP
C     !ROUTINE: SHELFICE_REMESHING
C     !INTERFACE:
      SUBROUTINE SHELFICE_REMESHING(
     I    myTime, myIter, myThid )
C     !DESCRIPTION: \bv
C     *==========================================================*
C     | SUBROUTINE SHELFICE_REMESHING
C     | o If SHELFICERemeshFrequencey is a multiple of mytime,
C     |   checks if etaN under shelfice triggers a remesh
C     *==========================================================*
C     \ev

C     !USES:
      IMPLICIT NONE
C     === Global variables ===
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "DYNVARS.h"
#include "SURFACE.h"
#include "GRID.h"
#include "CG2D.h" 
#ifdef ALLOW_SHELFICE
# include "SHELFICE.h"
#endif /* ALLOW_SHELFICE */

      INTEGER myThid
      INTEGER myIter
      _RL myTime


                 


#ifdef ALLOW_SHELFICE
          IF ((myTime/ShelficeRemeshFrequency) .EQ.
     &     INT (myTime/ShelficeRemeshFrequency) .AND. myTime
     &      .NE. 0.0        ) THEN
         CALL INI_MASKS_ETC_JJ (myThid)
         CALL SHELFICE_INIT_FIXED_JJ ( myThid)
         CALL OBCS_INIT_FIXED( myThid )
         CALL INI_LINEAR_PHISURF(myThid)
         CALL INI_CG2D (myThid) 
         CALL CALC_SURF_DR( etaH, myTime, myIter, myThid )
         CALL CALC_SURF_DR( etaH, myTime, myIter, myThid )
         CALL UPDATE_SURF_DR(.FALSE., myTime, myIter, myThid)
         CALL UPDATE_CG2D(myTime,myIter, myThid)
         CALL INTEGR_CONTINUITY (uVel ,vVel, myTime, niter0, myThid)
         ENDIF 
#endif /* ALLOW_SHELFICE */

      RETURN
      END
