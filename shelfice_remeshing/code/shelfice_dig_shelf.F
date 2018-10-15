#include "SHELFICE_OPTIONS.h"


CBOP
C     !ROUTINE: SHELFICE_UPDATE_MASKS
C     !INTERFACE:
      SUBROUTINE SHELFICE_DIG_SHELF(
     I     myThid )
C     !DESCRIPTION: \bv
C     *==========================================================*
C     | SUBROUTINE SHELFICE_UPDATE_MASKS
C     | o modify topography factor hFacC according to ice shelf
C     |   topography
C     *==========================================================*
C     \ev

C     !USES:
      IMPLICIT NONE
C     === Global variables ===
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#ifdef ALLOW_SHELFICE
# include "SHELFICE.h"
#endif /* ALLOW_SHELFICE */
#include "GRID.h"

C     !INPUT/OUTPUT PARAMETERS:
C     == Routine arguments ==
C     rF        :: R-coordinate of face of cell (units of r).
C     recip_drF :: Recipricol of cell face separation along Z axis ( units of r ).
C     hFacC     :: Fraction of cell in vertical which is open (see GRID.h)
C     myThid    :: Number of this instance of SHELFICE_UPDATE_MASKS
!       _RS recip_drF (1:Nr)
!       _RS hFacC     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,1:Nr,nSx,nSy)
      INTEGER myThid

#ifdef ALLOW_SHELFICE
#ifdef ALLOW_SHELFICE_GROUNDED_ICE
C     !LOCAL VARIABLES:
C     == Local variables ==
C     bi,bj   :: tile indices
C     I,J,K   :: Loop counters
      INTEGER bi, bj
      INTEGER I, J, K
      _RL hFacCtmp
      _RL hFacMnSz
      _RL draft_west, draft_east, draft_south, draft_north
      _RS min_draft (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER ktmp (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
CEOP

      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-OLy,sNy+OLy
         DO i=1-OLx,sNx+OLx
          DO k= 1, Nr
           IF (hFacC(i,j,k,bi,bj).NE.0) THEN
              ktmp(i,j,bi,bj) = k
           ENDIF
          ENDDO
         ENDDO
        ENDDO
       ENDDO
      ENDDO

      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-OLy+1,sNy+OLy-1
         DO i=1-OLx,sNx+OLx
         
          R_MWCT(i,j,bi,bj) = 0. _d 0

         ENDDO
        ENDDO
       ENDDO
      ENDDO

!     FIND MIN COL THICKNESS REGARDLESS OF NEIGHBORING CELLS

      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-OLy,sNy+OLy
         DO i=1-OLx,sNx+OLx

          IF(maskInC(i,j,bi,bj).eq.1) THEN
           min_draft(i,j,bi,bj) = R_low(i,j,bi,bj) + 
     &     1.5*hfacmin*drF(ktmp(i,j,bi,bj))
          ENDIF

         ENDDO
        ENDDO
       ENDDO
      ENDDO

      if (shelfice_dig_ice) then

!     NOW FIND MIN COL THICKNESS BASED ON U POINTS

      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-OLy,sNy+OLy
         DO i=1-OLx+1,sNx+OLx-1
         
          IF(maskInC(i,j,bi,bj).eq.1 .AND.
     &       maskInC(i-1,j,bi,bj).eq.1) THEN

           draft_west = max (
     &       min_draft(i-1,j,bi,bj),
     &       R_low(i,j,bi,bj) + hfacmin * drF(ktmp(i,j,bi,bj)))

           draft_east = max (
     &       min_draft(i,j,bi,bj),
     &       R_low(i-1,j,bi,bj) + hfacmin * drF(ktmp(i-1,j,bi,bj)))

           min_draft(i-1,j,bi,bj) = max 
     &       (draft_west, min_draft(i-1,j,bi,bj))

           min_draft(i,j,bi,bj) = max 
     &       (draft_east, min_draft(i,j,bi,bj))

          ENDIF

         ENDDO
        ENDDO
       ENDDO
      ENDDO

      _EXCH_XY_RS(min_draft, myThid)

!     NOW FIND MIN COL THICKNESS BASED ON V POINTS

      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-OLy+1,sNy+OLy-1
         DO i=1-OLx,sNx+OLx
         
          IF(maskInC(i,j,bi,bj).eq.1 .AND.
     &       maskInC(i,j-1,bi,bj).eq.1) THEN

           draft_south = max (
     &       min_draft(i,j-1,bi,bj),
     &       R_low(i,j,bi,bj) + hfacmin * drF(ktmp(i,j,bi,bj)))

           draft_north = max (
     &       min_draft(i,j,bi,bj),
     &       R_low(i,j-1,bi,bj) + hfacmin * drF(ktmp(i,j-1,bi,bj)))

           min_draft(i,j-1,bi,bj) = max 
     &       (draft_south, min_draft(i,j-1,bi,bj))

           min_draft(i,j,bi,bj) = max 
     &       (draft_north, min_draft(i,j,bi,bj))

          ENDIF

         ENDDO
        ENDDO
       ENDDO
      ENDDO

      _EXCH_XY_RS(min_draft, myThid)

      endif

      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-OLy+1,sNy+OLy-1
         DO i=1-OLx,sNx+OLx
         
          IF(maskInC(i,j,bi,bj).eq.1) THEN
           R_MWCT(i,j,bi,bj) = min_draft(i,j,bi,bj) -
     &              R_low(i,j,bi,bj)
          ENDIF

         ENDDO
        ENDDO
       ENDDO
      ENDDO

      
      

      IF ( debugLevel .GE. debLevD ) THEN

       CALL WRITE_FLD_XY_RL ("ShelficeMinColThick","",R_MWCT,0,mythid)

      ENDIF

#endif /* GROUNDED_ICE */    
#endif /* ALLOW_SHELFICE */

      RETURN
      END
