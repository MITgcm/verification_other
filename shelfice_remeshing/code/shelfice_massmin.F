C $Header: /u/gcmpack/MITgcm_contrib/verification_other/shelfice_remeshing/code/shelfice_massmin.F,v 1.2 2016/05/26 11:32:17 ksnow Exp $
C $Name:  $

C KS_dens------

#include "SHELFICE_OPTIONS.h"

CBOP
      SUBROUTINE SHELFICE_MASSMIN( R_min, massMin, myThid )
C     *============================================================*
C     | SUBROUTINE SHELFICE_MASSMIN
C     | o Routine to determine the minimum mass based on MCWT
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
C     This subroutine calculates the minimum mass to allow MWCT space
C     under the grounded ice.

      _RL massMin(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      _RL R_min(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER myThid

CEndOfInterface

#ifdef ALLOW_SHELFICE
C     === Local variables ===
C     i,j,bi,bj - Loop counters
      INTEGER i, j, k, bi, bj, k2
      _RL drho (Nr)
      _RL phiHydF(Nr+1)
      _RL phiHydC(Nr)
      _RL vert_rho(Nr)
      _RL drLoc, pLoad_min, sum_hFac
      _RL SEALEVEL, ETA
CEOP

C Initialize variables
      R_min = 0 _d 0
      drLoc = 0 _d 0
      pLoad_min = 0 _d 0
      DO k=1,Nr
       vert_rho(k) = 0 _d 0
      ENDDO
      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-OLy,sNy+OLy
         DO i=1-OLx,sNx+OLx
          massMin(i,j,bi,bj) = 0 _d 0
         ENDDO
        ENDDO
       ENDDO
      ENDDO

C First need vertical profile of density anomaly;
      CALL SHELFICE_VERT_DENS( vert_rho, myThid )
C Get the average open ocean ssh
      SEALEVEL = 0. _d 0
      ETA = 0. _d 0
      CALL SHELFICE_SEA_LEVEL_AVG( SEALEVEL,ETA, myThid )
C calcaulte hydrostatic pressure based on density profile
      DO k = 1,Nr
       drho(k) = vert_rho(k)
        IF (k.EQ.1) THEN
          phiHydF(k) = 0.
C          phiHydF(k) = SEALEVEL*gravity*drho(k)*recip_rhoConst
        ENDIF
          phiHydC(k)=phiHydF(k) + halfRL*drF(k)*gravity*drho(k)
     &                                        *recip_rhoConst
          phiHydF(k+1)=phiHydC(k) + halfRL*drF(k)*gravity*drho(k)
     &                                        *recip_rhoConst
       ENDDO

C calculate the level of minimum pressure and from that massMin
C based on R_MCWT
       DO bj = myByLo(myThid), myByHi(myThid)
        DO bi = myBxLo(myThid), myBxHi(myThid)
         DO j=1-OLy,sNy+OLy
          DO i=1-OLx,sNx+OLx
           R_min(i,j,bi,bj)=R_Low(i,j,bi,bi)+R_MWCT(i,j,bi,bj)
           DO k =1,Nr
            IF ((R_min(i,j,bi,bj) .GT. rF(k+1)) .AND.
     &          (R_min(i,j,bi,bj) .LE. rF(k)))  THEN
              drLoc = (rF(k)-R_min(i,j,bi,bj))/drF(k)

             pLoad_min = (phiHydF(k) + drLoc*
     &           (phiHydF(k+1)-phiHydF(k)))*rhoConst
     &           + gravity*rhoConst*(drLoc*drF(k))

             massMin(i,j,bi,bj) = pLoad_min*recip_gravity - 
     &             rF(k)*rhoConst
            ENDIF
           ENDDO
          ENDDO
         ENDDO
        ENDDO
       ENDDO

#endif /* ALLOW_SHELFICE */

      RETURN
      END
