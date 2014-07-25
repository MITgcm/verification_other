C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_biogeo_bling/code_ad/ctrl_map_ini_genarr.F,v 1.3 2014/07/25 03:58:45 mmazloff Exp $
C $Name:  $

#include "CTRL_OPTIONS.h"

CBOP
C     !ROUTINE: CTRL_MAP_INI_GENARR
C     !INTERFACE:
      SUBROUTINE CTRL_MAP_INI_GENARR( myThid )

C     !DESCRIPTION: \bv
C     *=================================================================
C     | SUBROUTINE CTRL_MAP_INI_GENARR
C     | Add the generic arrays of the
C     | control vector to the model state and update the tile halos.
C     | The control vector is defined in the header file "ctrl.h".
C     *=================================================================
C     \ev

C     !USES:
      IMPLICIT NONE

C     == global variables ==
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "GRID.h"
#include "DYNVARS.h"
#include "FFIELDS.h"
#include "CTRL_SIZE.h"
#include "ctrl.h"
#include "CTRL_FIELDS.h"
#include "CTRL_GENARR.h"
#include "ctrl_dummy.h"
#include "optim.h"
#ifdef ALLOW_PTRACERS
# include "PTRACERS_SIZE.h"
# include "PTRACERS_FIELDS.h"
#endif

C     !INPUT/OUTPUT PARAMETERS:
C     == routine arguments ==
      INTEGER myThid

C     !FUNCTIONS:
      INTEGER  ILNBLNk
      EXTERNAL ILNBLNK

C     !LOCAL VARIABLES:
C     == local variables ==
      integer bi,bj
      integer i,j,k
      integer jmin,jmax
      integer imin,imax
      integer il
      integer iarr

      logical doglobalread
      logical ladinit
      character*( 80)   fnamegeneric
      _RL     fac
CEOP

      jmin = 1
      jmax = sNy
      imin = 1
      imax = sNx

      doglobalread = .false.
      ladinit      = .false.
      fac = 1. _d 0

#ifdef ALLOW_GENARR2D_CONTROL
C--   An example of connecting specific fields
C--   to 3 generic 2D control arrays
--->>>
--->>> COMPILE FAILURE IS DELIBERATE
--->>> BE SURE WHAT YOU ARE DOING AND CUSTOMIZE <<<---
--->>>
C--   generic - user-defined control vars
      DO iarr = 1, maxCtrlArr2D

       il=ILNBLNK( xx_genarr2d_file(iarr) )
       write(fnamegeneric(1:80),'(2a,i10.10)')
     &     xx_genarr2d_file(iarr)(1:il),'.',optimcycle
       CALL ACTIVE_READ_XY ( fnamegeneric, tmpfld2d, 1,
     &                      doglobalread, ladinit, optimcycle,
     &                      myThid, xx_genarr2d_dummy(iarr) )
       DO bj=myByLo(myThid), myByHi(myThid)
        DO bi=myBxLo(myThid), myBxHi(myThid)
          do j = jmin,jmax
            do i = imin,imax
              if ( iarr .eq. 1 ) then
#ifdef ALLOW_BOTTOMDRAG_CONTROL
                bottomDragFld(i,j,bi,bj) = bottomDragFld(i,j,bi,bj)
     &                                   + tmpfld2d(i,j,bi,bj)
#endif
              elseif ( iarr. eq. 2 ) then
                theta(i,j,1,bi,bj) = theta(i,j,1,bi,bj)
     &                             + tmpfld2d(i,j,bi,bj)
              elseif ( iarr .eq. 3 ) then
                salt(i,j,1,bi,bj) = salt(i,j,1,bi,bj)
     &                            + tmpfld2d(i,j,bi,bj)
              endif
            enddo
          enddo
        ENDDO
       ENDDO
C--   end iarr loop
      ENDDO
#ifdef ALLOW_BOTTOMDRAG_CONTROL
       _EXCH_XY_RL( bottomDragFld, myThid )
#endif
       _EXCH_XYZ_RL( theta, myThid )
       _EXCH_XYZ_RL( salt, myThid )

#endif /* ALLOW_GENARR2D_CONTROL */

#ifdef ALLOW_GENARR3D_CONTROL
C--   An example of connecting specific fields
C--   to 3 generic 3D control arrays
CMM--->>>
CMM--->>> COMPILE FAILURE IS DELIBERATE
CMM--->>> BE SURE WHAT YOU ARE DOING AND CUSTOMIZE <<<---
CMM--->>>
C--   generic - user-defined control vars
CMM(
C INITIALIZE
       DO bj=myByLo(myThid), myByHi(myThid)
        DO bi=myBxLo(myThid), myBxHi(myThid)
          do k = 1,nr
            do j = jmin,jmax
              do i = imin,imax
                tmpfld3d(i,j,k,bi,bj) = 0.0
              enddo
            enddo
          enddo
        enddo
      enddo
CMM)
      DO iarr = 1, maxCtrlArr3D
       il=ILNBLNK( xx_genarr3d_file(iarr) )
       write(fnamegeneric(1:80),'(2a,i10.10)')
     &     xx_genarr3d_file(iarr)(1:il),'.',optimcycle
       CALL ACTIVE_READ_XYZ( fnamegeneric, tmpfld3d, 1,
     &                       doglobalread, ladinit, optimcycle,
     &                       myThid, xx_genarr3d_dummy(iarr) )
CMM(
#ifdef ALLOW_SMOOTH
# ifdef ALLOW_SMOOTH_CTRL3D
      if (useSMOOTH) then
        call smooth3D(tmpfld3d,1,mythid)
        write(fnamegeneric(1:80),'(2a,i10.10)')
     &   xx_genarr3d_file(iarr)(1:il),'.smooth.',optimcycle
        call mdswritefield(fnamegeneric,ctrlprec,.FALSE.,'RL',
     &   nr, tmpfld3d, 1, optimcycle, mythid)
      endif
# endif
#endif
CMM)
       DO bj=myByLo(myThid), myByHi(myThid)
        DO bi=myBxLo(myThid), myBxHi(myThid)
          do k = 1,Nr
           do j = jmin,jmax
            do i = imin,imax
CMM(
              ptracer(i,j,k,bi,bj,1) = ptracer(i,j,k,bi,bj,1)
     & + tmpfld3d(i,j,k,bi,bj)
                tmpfld3d(i,j,k,bi,bj) = 0.0
CMM)
            enddo
           enddo
          enddo
        ENDDO
       ENDDO
C--   end iarr loop
      ENDDO
CMM(
      CALL PTRACERS_FIELDS_BLOCKING_EXCH( myThid )
CMM)

#endif /* ALLOW_GENARR3D_CONTROL */

      RETURN
      END
