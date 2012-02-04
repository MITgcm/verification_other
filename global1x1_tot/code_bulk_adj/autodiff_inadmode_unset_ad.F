C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global1x1_tot/code_bulk_adj/autodiff_inadmode_unset_ad.F,v 1.1 2012/02/04 02:45:02 jmc Exp $

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

C     == Routine arguments ==
C     myThid - Thread number for this instance of the routine.
      integer myThid

      inAdMode = inAdFALSE

      useGMREDI = .TRUE.
      useKPP    = .TRUE. 

      end









