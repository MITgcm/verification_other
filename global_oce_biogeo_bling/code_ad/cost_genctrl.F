C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_biogeo_bling/code_ad/Attic/cost_genctrl.F,v 1.2 2014/07/25 03:46:54 mmazloff Exp $
C $Name:  $

#include "ECCO_OPTIONS.h"
#ifdef ALLOW_CTRL
# include "CTRL_OPTIONS.h"
#endif

      subroutine cost_genctrl( myiter, mytime, mythid )

c     ==================================================================
c     SUBROUTINE cost_genctrl
c     ==================================================================
c
c     ==================================================================
c     SUBROUTINE cost_genctrl
c     ==================================================================

      implicit none

c     == global variables ==

#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "GRID.h"

#include "cal.h"
#ifdef ALLOW_CTRL
# include "CTRL_SIZE.h"
# include "ctrl.h"
# include "ctrl_dummy.h"
# include "CTRL_GENARR.h"
#endif
#include "ecco_cost.h"
CMM(
#include "optim.h"
CMM)
c     == routine arguments ==

      integer mythid
      integer myiter
      _RL     mytime

c     == local variables ==

      integer startrec
      integer endrec
#if (defined (ALLOW_GENARR2D_CONTROL) || defined (ALLOW_GENARR3D_CONTROL) || defined (ALLOW_GENTIM2D_CONTROL))
      integer iarr
CMM(
      integer il
      _RL     mmmax, mmmin
      integer bi,bj
      integer i,j,k
      integer jmin,jmax
      integer imin,imax
      character*( 80)   fnamegeneric
      logical doglobalread
      logical ladinit
      _RL     tmpx

C     !FUNCTIONS:
      INTEGER  ILNBLNk
      EXTERNAL ILNBLNK
CMM)
CMM(
      doglobalread = .false.
      ladinit      = .false.
      jmin = 1
      jmax = sNy
      imin = 1
      imax = sNx
CMM)
#endif

c     == end of interface ==

c--   Evaluate the individual cost function contributions.

#ifdef ALLOW_CTRL
#ifdef ALLOW_GENTIM2D_CONTROL
      do iarr = 1, maxCtrlTim2D

      startrec = ncvarrecstart(300+iarr)
      endrec   = ncvarrecsend(300+iarr)
      call cost_forcing_gen (
     &     myiter, mytime, startrec, endrec,
     &     xx_gentim2d_file(1),xx_gentim2d_dummy(1),
     &     xx_gentim2d_period(1),
     &     0. _d 0, wgentim2d(1-Olx,1-Oly,1,1,iarr),
     &     num_gentim2d(1,1,iarr), num_gentim2dm(1,1,iarr),
     &     objf_gentim2d(1,1,iarr), objf_gentim2dm(1,1,iarr), 
     &     objf_gentim2dsmoo(1,1,iarr), 0. _d 0, 0. _d 0,
     &     maskC, mythid )

      enddo
#endif
#endif

CMM(
#ifdef ALLOW_GENARR3D_CONTROL
      DO iarr = 1, maxCtrlArr3D
      mmmax = -9999
      mmmin = 9999
       il=ILNBLNK( xx_genarr3d_file(iarr) )
       write(fnamegeneric(1:80),'(2a,i10.10)')
     &     xx_genarr3d_file(iarr)(1:il),'.',optimcycle
       CALL ACTIVE_READ_XYZ( fnamegeneric, tmpfld3d, 1,
     &                       doglobalread, ladinit, optimcycle,
     &                       myThid, xx_genarr3d_dummy(iarr) )
c--     Loop over this thread s tiles.
       DO bj=myByLo(myThid), myByHi(myThid)
        DO bi=myBxLo(myThid), myBxHi(myThid)
c--         Determine the weights to be used.
            do k = 1,nr
             do j = jmin,jmax
              do i = imin,imax
                if (_hFacC(i,j,k,bi,bj) .ne. 0.) then
                  tmpx = tmpfld3d(i,j,k,bi,bj)
                  objf_gencost(bi,bj,iarr) = objf_gencost(bi,bj,iarr)
     &                 + wptrcr(iarr,k,bi,bj)
     &                 *tmpx*tmpx
                  num_gencost(bi,bj,iarr) = num_gencost(bi,bj,iarr) + 1. _d 0
                 if (tmpx.gt.mmmax) mmmax = tmpx
                 if (tmpx.lt.mmmin) mmmin = tmpx
                endif
              enddo
             enddo
            enddo

        ENDDO
       ENDDO
       print *,'CMM Cost XX_Ptracer = ', iarr, objf_gencost(bi,bj,iarr)
       print *,'CMM XX_Ptracer min max = ', mmmin, mmmax
      ENDDO 
#endif /* ALLOW_GENARR3D_CONTROL */

CMM)

      end
