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

C     == Routine arguments ==
C     myThid - Thread number for this instance of the routine.
      integer myThid

      inAdmode = inAdTrue

      useGMREDI = .FALSE.
      useKPP    = .FALSE.

      end









