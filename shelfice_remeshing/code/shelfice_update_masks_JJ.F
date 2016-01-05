C $Header: /u/gcmpack/MITgcm_contrib/verification_other/shelfice_remeshing/code/Attic/shelfice_update_masks_JJ.F,v 1.2 2016/01/05 16:04:36 dgoldberg Exp $
C $Name:  $

#include "SHELFICE_OPTIONS.h"
#ifdef ALLOW_CTRL
# include "CTRL_OPTIONS.h"
#endif

CBOP
C     !ROUTINE: SHELFICE_UPDATE_MASKS
C     !INTERFACE:
      SUBROUTINE SHELFICE_UPDATE_MASKS_JJ(
     I     rF, recip_drF,
     U     hFacC,
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
#include "DYNVARS.h"
#include "SURFACE.h"
#ifdef ALLOW_SHELFICE
# include "SHELFICE.h"
#endif /* ALLOW_SHELFICE */

C     !INPUT/OUTPUT PARAMETERS:
C     == Routine arguments ==
C     rF        :: R-coordinate of face of cell (units of r).
C     recip_drF :: Recipricol of cell face separation along Z axis ( units of r ).
C     hFacC     :: Fraction of cell in vertical which is open (see GRID.h)
C     myThid    :: Number of this instance of SHELFICE_UPDATE_MASKS
      _RS rF        (1:Nr+1)
      _RS recip_drF (1:Nr)
      _RS hFacC     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,1:Nr,nSx,nSy)
      
      INTEGER myThid

#ifdef ALLOW_SHELFICE
C     !LOCAL VARIABLES:
C     == Local variables ==
C     bi,bj   :: tile indices
C     I,J,K   :: Loop counters
      INTEGER bi, bj
      INTEGER I, J, K
      _RL hFacCtmp
      _RL hFacMnSz

C- Update etaN
       DO bj = myByLo(myThid), myByHi(myThid)
        DO bi = myBxLo(myThid), myBxHi(myThid)
         DO J = 1-OLy,sNy+OLy
          DO I = 1-OLx,sNx+OLx
           IF ( R_shelfice(I,J,bi,bj) .LT. 0.0) THEN
            IF (etah(I,J,bi,bj) .GT. SHELFICESplitThreshold ) THEN
             K  = MAX(1,kTopC(I,J,bi,bj))
             etaN(I,J,bi,bj) = etaN(I,J,bi,bj) - 1/recip_drF(K)
             etaH(I,J,bi,bj) = etaH(I,J,bi,bj) - 1/recip_drF(K)
            R_shelfIce(I,J,bi,bj) = R_shelfIce(I,J,bi,bj)+1/recip_drF(K)
             uVel(I,J,K-1,bi,bj)=uVel(I,J,K,bi,bj)
             uVel(I+1,J,K-1,bi,bj)=uVel(I+1,J,K,bi,bj)
             vVel(I,J,K-1,bi,bj)=vVel(I,J,K,bi,bj)
             vVel(I,J+1,K-1,bi,bj)=vVel(I,J+1,K,bi,bj)

             gvnm1(I,J,K-1,bi,bj)=gvnm1(I,J,K,bi,bj)
             gvnm1(I,J+1,K-1,bi,bj)=gvnm1(I,J+1,K,bi,bj)
             gunm1(I,J,K-1,bi,bj)=gunm1(I,J,K,bi,bj)
             gunm1(I+1,J,K-1,bi,bj)=gunm1(I,J,K,bi,bj)

             salt(I,J,K-1,bi,bj)=salt(I,J,K,bi,bj)
             theta(I,J,K-1,bi,bj)=theta(I,J,K,bi,bj)
             hfacC(I,J,K,bi,bj)=1.0
           Rmin_surf(I,J,bi,bj) = Rmin_surf(I,J,bi,bj)+1/recip_drF(K)

           ENDIF
             IF (R_shelfice(i,j,bi,bj) .NE. R_grounding(i,j,bi,bj))THEN
             IF (etah(I,J,bi,bj) .LT. SHELFICEMergeThreshold ) THEN
             K = MAX(1,kTopC(I,J,bi,bj))

             salt(I,J,K+1,bi,bj)=((salt(I,J,K,bi,bj)*(1/recip_drF(K)+
     &       etaN(I,J,bi,bj)))+(salt(I,J,K+1,bi,bj)*1/recip_drF(K+1)))/(
     &       1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

             theta(I,J,K+1,bi,bj)=((theta(I,J,K,bi,bj)*(1/recip_drF(K)+
     &      etaN(I,J,bi,bj)))+(theta(I,J,K+1,bi,bj)*1/recip_drF(K+1)))/(
     &       1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

             vVel(I,J,K+1,bi,bj)=((vVel(I,J,K,bi,bj)*(1/recip_drF(K)+
     &       etaN(I,J,bi,bj)))+(vVel(I,J,K+1,bi,bj)*1/recip_drF(K+1)))/(
     &       1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

            vVel(I,J+1,K+1,bi,bj)=((vVel(I,J+1,K,bi,bj)*(1/recip_drF(K)+
     &      etaN(I,J,bi,bj)))+(vVel(I,J+1,K+1,bi,bj)*1/recip_drF(K+1)))/
     &       (1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

             uVel(I,J,K+1,bi,bj)=((uVel(I,J,K,bi,bj)*(1/recip_drF(K)+
     &       etaN(I,J,bi,bj)))+(uVel(I,J,K+1,bi,bj)*1/recip_drF(K+1)))/(
     &      1/recip_ drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

            uVel(I+1,J,K+1,bi,bj)=((uVel(I+1,J,K,bi,bj)*(1/recip_drF(K)+
     &      etaN(I,J,bi,bj)))+(uVel(I+1,J,K+1,bi,bj)*1/recip_drF(K+1)))/
     &       (1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

             etaN(I,J,bi,bj) = etaN(I,J,bi,bj) +1/recip_drF(K)
             etaH(I,J,bi,bj) = etaH(I,J,bi,bj) +1/recip_drF(K)
           R_shelfice(I,J,bi,bj) = R_shelfice(I,J,bi,bj) -1/recip_drF(K)
           Rmin_surf(I,J,bi,bj) = Rmin_surf(I,J,bi,bj) -1/recip_drF(K)

         gunm1(I+1,J,K+1,bi,bj)=((gunm1(I+1,J,K,bi,bj)*(1/recip_drF(K)+
     &     etaN(I,J,bi,bj)))+(gunm1(I+1,J,K+1,bi,bj)*1/recip_drF(K+1)))/
     &       (1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

         gunm1(I,J,K+1,bi,bj)=((gunm1(I,J,K,bi,bj)*(1/recip_drF(K)+
     &     etaN(I,J,bi,bj)))+(gunm1(I,J,K+1,bi,bj)*1/recip_drF(K+1)))/
     &       (1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))

      gvnm1(I,J+1,K+1,bi,bj)=((gvnm1(I,J+1,K,bi,bj)*(1/recip_drF(K)+
     &     etaN(I,J,bi,bj)))+(gvnm1(I,J+1,K+1,bi,bj)*1/recip_drF(K+1)))/
     &       (1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))


      gvnm1(I,J,K+1,bi,bj)=((gvnm1(I,J,K,bi,bj)*(1/recip_drF(K)+
     &     etaN(I,J,bi,bj)))+(gvnm1(I,J,K+1,bi,bj)*1/recip_drF(K+1)))/
     &       (1/recip_drF(K)+1/recip_drF(K+1)+etaN(I,J,bi,bj))





             hfacC(I,J,K,bi,bj)=1.0
             ENDIF 
            ENDIF
           ENDIF
          ENDDO
         ENDDO
        ENDDO
       ENDDO

     
       DO bj = myByLo(myThid), myByHi(myThid)
        DO bi = myBxLo(myThid), myBxHi(myThid)
         DO J = 1-OLy,sNy+OLy
          DO I = 1-OLx,sNx+OLx
            etaH(I,J,bi,bj)=etaN(I,J,bi,bj)
            etaHnm1(I,J,bi,bj)=etaH(I,J,bi,bj)
          ENDDO
         ENDDO
        ENDDO
       ENDDO



        DO   bj = myByLo(myThid), myByHi(myThid)
        DO bi = myBxLo(myThid), myBxHi(myThid)
         DO J = 1-OLy,sNy+OLy
          DO I = 1-OLx,sNx+OLx
               K = MAX(1,kTopC(I,J,bi,bj))

            hfac_surfc(I,J,bi,bj)= ((etaH(I,J,bi,bJ) +(1/recip_drF(K)))
     &     *recip_drF(K))



          ENDDO
         ENDDO
        ENDDO
       ENDDO

     



C- fill in the overlap (+ BARRIER):
      _EXCH_XY_RS(R_shelfIce, myThid )

C--   Calculate lopping factor hFacC : Remove part outside of the domain
C     taking into account the Reference (=at rest) Surface Position Ro_shelfIce
      DO bj=myByLo(myThid), myByHi(myThid)
       DO bi=myBxLo(myThid), myBxHi(myThid)

C--   compute contributions of shelf ice to looping factors
        DO K=1, Nr
         hFacMnSz=max( hFacMin, min(hFacMinDr*recip_drF(k),1. _d 0) )
         DO J=1-OLy,sNy+OLy
          DO I=1-OLx,sNx+OLx
C      o Non-dimensional distance between grid boundary and model surface
           hFacCtmp = (rF(k)-R_shelfIce(I,J,bi,bj))*recip_drF(K)
C      o Reduce the previous fraction : substract the outside part.
           hFacCtmp = hFacC(I,J,K,bi,bj) - max( hFacCtmp, 0. _d 0)
C      o set to zero if empty Column :
           hFacCtmp = max( hFacCtmp, 0. _d 0)
C      o Impose minimum fraction and/or size (dimensional)
           IF (hFacCtmp.LT.hFacMnSz) THEN
            IF (hFacCtmp.LT.hFacMnSz*0.5) THEN
             hFacC(I,J,K,bi,bj)=0.
            ELSE
             hFacC(I,J,K,bi,bj)=hFacMnSz
            ENDIF
           ELSE
             hFacC(I,J,K,bi,bj)=hFacCtmp
           ENDIF
          ENDDO
         ENDDO
        ENDDO

#ifdef ALLOW_SHIFWFLX_CONTROL
C     maskSHI is a hack to play along with the general ctrl-package
C     infrastructure, where only the k=1 layer of a 3D mask is used
C     for 2D fields. We cannot use maskInC instead, because routines
C     like ctrl_get_gen and ctrl_set_unpack_xy require 3D masks.
        DO K=1,Nr
         DO J=1-OLy,sNy+OLy
          DO I=1-OLx,sNx+OLx
           maskSHI(I,J,K,bi,bj) = 0. _d 0
          ENDDO
         ENDDO
        ENDDO
        DO K=1,Nr
         DO J=1-OLy,sNy+OLy
          DO I=1-OLx,sNx+OLx
           IF ( ABS(R_shelfice(I,J,bi,bj)) .GT. 0. _d 0
     &          .AND. hFacC(I,J,K,bi,bj) .NE. 0. _d 0 ) THEN
            maskSHI(I,J,K,bi,bj) = 1. _d 0
            maskSHI(I,J,1,bi,bj) = 1. _d 0
           ENDIF
          ENDDO
         ENDDO
        ENDDO
#endif /* ALLOW_SHIFWFLX_CONTROL */

C - end bi,bj loops.
       ENDDO
      ENDDO
#endif /* ALLOW_SHELFICE */
      RETURN
      END
