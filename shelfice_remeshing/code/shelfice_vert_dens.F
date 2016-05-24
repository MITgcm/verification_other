C $Header: /u/gcmpack/MITgcm_contrib/verification_other/shelfice_remeshing/code/shelfice_vert_dens.F,v 1.1 2016/05/24 08:26:37 ksnow Exp $
C $Name:  $

C KS_dens------

#include "SHELFICE_OPTIONS.h"

CBOP
      SUBROUTINE SHELFICE_VERT_DENS( vert_rho, myThid )
C     *============================================================*
C     | SUBROUTINE SHELFICE_VERT_DENS
C     | o Routine to determine vertical density profile of all wet cells
C     *============================================================*
C     | Initialize SHELFICE parameters and variables.
C     *============================================================*
      IMPLICIT NONE

C     === Global variables ===
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "GRID.h"
#include "SHELFICE.h"
#include "DYNVARS.h"
#ifdef ALLOW_COST
# include "SHELFICE_COST.h"
#endif /* ALLOW_COST */

C     === Routine arguments ===
C     myThid -  Number of this instance 
C     
C     This subroutine takes all ocean wet cells and calculates the
C     vertical density profile

      _RL vert_rho (Nr)
      INTEGER myThid

CEndOfInterface

#ifdef ALLOW_SHELFICE
C     === Local variables ===
C     i,j,bi,bj - Loop counters
      INTEGER i, j, k, bi, bj
      _RL locsum_dens (nSx,nSy)
      _RL locsum_thick (nSx,nSy)
      _RL dens_loc, thick_loc
      _RL sum_dens, sum_thick
CEOP

C     initilized variables
      sum_dens = 0. _d 0
      sum_thick = 0. _d 0
      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        locsum_dens (bi,bj) = 0. _d 0
        locsum_thick (bi,bj) = 0. _d 0
       ENDDO
      ENDDO

      DO k = 1,Nr
       locsum_dens(bi,bj) = 0. _d 0
       locsum_thick(bi,bj) = 0. _d 0
       DO bj = myByLo(myThid), myByHi(myThid)
        DO bi = myBxLo(myThid), myBxHi(myThid)
         DO j = 1, sNy
          DO i = 1, sNx
           IF (maskC(i,j,k,bi,bj) .EQ. 1) THEN
            dens_loc = rhoInSitu(i,j,k,bi,bj)
            thick_loc = hFacC(i,j,k,bi,bj)*drF(k)
            locsum_dens(bi,bj) = locsum_dens(bi,bj) +
     &       dens_loc * thick_loc
            locsum_thick(bi,bj) = locsum_thick(bi,bj) + 
     &       thick_loc
           ENDIF
          ENDDO
         ENDDO
        ENDDO
       ENDDO

       CALL GLOBAL_SUM_TILE_RL( locsum_dens, sum_dens, myThid )
       CALL GLOBAL_SUM_TILE_RL( locsum_thick, sum_thick, myThid )
       IF (sum_thick .LE. 0.0) THEN
        vert_rho(k) = 0. _d 0
       ELSE
        vert_rho(k) = sum_dens / sum_thick
       ENDIF
       DO bj = myByLo(myThid), myByHi(myThid)
        DO bi = myBxLo(myThid), myBxHi(myThid)
         locsum_dens(bi,bj) = 0. _d 0
         locsum_thick(bi,bj) = 0. _d 0
        ENDDO
       ENDDO
      ENDDO

#endif /* ALLOW_SHELFICE */

      RETURN
      END
