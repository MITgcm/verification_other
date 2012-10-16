C $Header: /u/gcmpack/MITgcm_contrib/verification_other/atm_gray/code_gray/Attic/mypackage_calc_rhs.F,v 1.6 2012/10/16 15:21:39 jmc Exp $
C $Name:  $

#include "MYPACKAGE_OPTIONS.h"

CBOP
C !ROUTINE: MYPACKAGE_CALC_RHS

C !INTERFACE: ==========================================================
      SUBROUTINE MYPACKAGE_CALC_RHS(
     I                     myTime, myIter, myThid )

C !DESCRIPTION:
C Calculate custom tendency terms outside k-loop in DO_OCEANIC_PHYS

C !USES: ===============================================================
      use radiation_mod
      use lscale_cond_mod
      use dargan_bettsmiller_mod
      use surface_flux_mod
      use vert_turb_driver_mod
      use vert_diff_mod, only: gcm_vert_diff_down,
     &                         gcm_vert_diff_up,
     &                         surf_diff_type
      use mixed_layer_mod, only: mixed_layer

      IMPLICIT NONE
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "GRID.h"
#include "DYNVARS.h"
#include "MYPACKAGE.h"

C !INPUT PARAMETERS: ===================================================
C myTime    :: Current time in simulation
C myIter    :: Current time-step number
C myThid    :: my Thread Id number
      _RL     myTime
      INTEGER myIter, myThid

C !OUTPUT PARAMETERS: ==================================================

C !LOCAL VARIABLES: ====================================================
C bi,bj     :: Tile indices
      INTEGER bi, bj
CEOP
      _RL lat2d   (sNx,sNy)
      _RL pHalf3d (sNx,sNy,Nr+1)
      _RL pFull3d (sNx,sNy,Nr)
      _RL zHalf3d (sNx,sNy,Nr+1)
      _RL zFull3d (sNx,sNy,Nr)
      _RL t3d     (sNx,sNy,Nr)
      _RL q3d     (sNx,sNy,Nr)
      _RL u3d     (sNx,sNy,Nr)
      _RL v3d     (sNx,sNy,Nr)
      _RL s_sw_dwn(sNx,sNy)
      _RL s_lw_dwn(sNx,sNy)
      _RL t_surf  (sNx,sNy)
      _RL tdt3d     (sNx,sNy,Nr)
      _RL cond_dt_tg(sNx,sNy,Nr)
      _RL cond_dt_qg(sNx,sNy,Nr)
      _RL rain2d    (sNx,sNy)
      _RL snow2d    (sNx,sNy)
C-- radiation fields:
      _RL albedo_2d (sNx,sNy)
c     _RL dtrans_3d (    sNy,Nr)
      _RL dtrans_3d (sNx,sNy,Nr)
      _RL b_3d      (sNx,sNy,Nr)
      _RL lw_down_3d(sNx,sNy,Nr+1)
      _RL sw_down_3d(sNx,sNy,Nr+1)
      _RL olr_2d    (sNx,sNy)
      LOGICAL coldT (sNx,sNy)
C-- output from convection:
      _RL conv_dt_tg (sNx,sNy,Nr)
      _RL conv_dt_qg (sNx,sNy,Nr)
      _RL q_ref      (sNx,sNy,Nr)
      _RL t_ref      (sNx,sNy,Nr)
      _RL bmflag     (sNx,sNy)
      _RL klzbs      (sNx,sNy)
      _RL cape       (sNx,sNy)
      _RL cin        (sNx,sNy)
      _RL invtau_bm_t(sNx,sNy)
      _RL invtau_bm_q(sNx,sNy)
      _RL capeflag   (sNx,sNy)
C-- Input/Output for surface flux:
      _RL  q_surf(sNx,sNy)
      _RL  u_surf(sNx,sNy), v_surf(sNx,sNy)
      _RL  rough_mom(sNx,sNy), rough_heat(sNx,sNy)
      _RL  rough_moist(sNx,sNy), gust(sNx,sNy)
      _RL  flux_t(sNx,sNy), flux_q(sNx,sNy), flux_r(sNx,sNy)
      _RL  flux_u(sNx,sNy), flux_v(sNx,sNy)
      _RL  drag_m(sNx,sNy), drag_t(sNx,sNy), drag_q(sNx,sNy)
      _RL  w_atm(sNx,sNy)
      _RL  ustar(sNx,sNy), bstar(sNx,sNy), qstar(sNx,sNy)
      _RL  dhdt_surf(sNx,sNy), dedt_surf(sNx,sNy), dedq_surf(sNx,sNy)
      _RL  drdt_surf(sNx,sNy)
      _RL  dhdt_atm(sNx,sNy), dedq_atm(sNx,sNy), dtaudv_atm(sNx,sNy)
      LOGICAL land(sNx,sNy), avail(sNx,sNy)
C-- Input for turb:
      _RL fracland(sNx,sNy)
      _RL rough(sNx,sNy)
C-- Output from turbulence driver:
      _RL  diff_t(sNx,sNy,Nr), diff_m(sNx,sNy,Nr)
c     _RL  gust(sNx,sNy)
      _RL diff_dt_ug (sNx,sNy,Nr)
      _RL diff_dt_vg (sNx,sNy,Nr)
      _RL diff_dt_tg (sNx,sNy,Nr)
      _RL diff_dt_qg (sNx,sNy,Nr)
      _RL diss_heat  (sNx,sNy,Nr)
c     TYPE(surf_diff_type) :: tri_surf ! used by gcm_vert_diff
      _RL tri_surf_dtmass(sNx,sNy)
      _RL tri_surf_dflux_t(sNx,sNy), tri_surf_dflux_q(sNx,sNy)
      _RL tri_surf_delta_t(sNx,sNy), tri_surf_delta_q(sNx,sNy)
      _RL e_global(sNx,sNy,Nr-1)
      _RL f_t_global(sNx,sNy,Nr-1), f_q_global(sNx,sNy,Nr-1)
C-- Mixed Layer fields:
      _RL ocean_qflux(sNx,sNy)
C--
      _RL conv_theta2T, conv_T2theta
      INTEGER j, k, kc, ki, kp
      INTEGER ioUnit
      _RS     dummyRS(1)
      CHARACTER*40 namFile
c     _RL t_surf1d  (Ny)

C--   t_surf(:,:) = 300.
c     DATA t_surf1d /  258, 258, 258, 258, 258, 259.86, 261.72,
c    &                 263.59, 265.45, 267.32, 269.18, 271.05,
c    &                 272.91, 274.77, 276.64, 278.5, 280.36,
c    &                 282.23, 284.09, 285.95, 287.82, 289.68,
c    &                 291.55, 293.41, 295.27, 297.12,
c    &                 300, 300, 300, 300, 300, 300,
c    &                 300, 300, 300, 300, 300, 300, 297.13,
c    &                 295.27, 293.41, 291.55,
c    &                 289.68, 287.82, 285.95, 284.09, 282.23,
c    &                 280.36, 278.5, 276.64, 274.77, 272.91,
c    &                 271.05, 269.18, 267.32, 265.45, 263.59,
c    &                 261.72, 259.86, 258, 258, 258, 258, 258 /

C--   Loops on tile indices bi,bj
      DO bj=myByLo(myThid),myByHi(myThid)
       DO bi=myBxLo(myThid),myBxHi(myThid)

      lat2d(:,:) = yC(1:sNx,1:sNy,bi,bj)*deg2rad
      coldT(:,:) = .FALSE.

      t_surf(:,:) = myPa_Surf1(1:sNx,1:sNy,bi,bj)
      IF ( myIter.EQ.nIter0 ) THEN
        ioUnit = 0
        CALL MDS_WRITEVEC_LOC(
     I                       'SST.check', writeBinaryPrec, ioUnit,
     I                       'RL', sNx*sNy, t_surf, dummyRS,
     I                       bi, bj, 1, myIter, myThid )
      ENDIF
#ifdef MYPACKAGE_TENDENCY
      ocean_qflux(:,:) = myPa_SurfFlux1(1:sNx,1:sNy,bi,bj)
#else
      ocean_qflux(:,:) = 0.
#endif

      rain2d(:,:) = 0.
      snow2d(:,:) = 0.
      DO k=1,Nr
        kc = Nr-k+1
        pFull3d(:,:,k) = rC(kc)
        zFull3d(:,:,k) = ( phiRef(2*kc)
     &                   + totPhiHyd(1:sNx,1:sNy,kc,bi,bj)
     &                   )/gravity
        conv_theta2T = (rC(kc)/atm_po)**atm_kappa
        t3d(:,:,k) = theta(1:sNx,1:sNy,kc,bi,bj)*conv_theta2T
        q3d(:,:,k) = MAX( salt(1:sNx,1:sNy,kc,bi,bj), 0. _d 0 )
        u3d(:,:,k) = ( uVel(1:sNx,  1:sNy,kc,bi,bj)
     &               + uVel(2:sNx+1,1:sNy,kc,bi,bj) )*0.5 _d 0
        v3d(:,:,k) = ( vVel(1:sNx,1:sNy,  kc,bi,bj)
     &               + vVel(1:sNx,2:sNy+1,kc,bi,bj) )*0.5 _d 0
      ENDDO
c       ioUnit = 0
c       WRITE(namFile,'(A,I10.10)') 'z1_Atm.', myIter
c       CALL MDS_WRITEVEC_LOC(
c    I                       namFile, writeBinaryPrec, ioUnit,
c    I                       'RL', sNx*sNy, zFull3d(1,1,Nr), dummyRS,
c    I                       bi, bj, 1, myIter, myThid )
      DO k=1,Nr+1
        ki = Nr-k+2
        pHalf3d(:,:,k) = rF(ki)
        zHalf3d(:,:,k) = phiRef(2*ki-1)/gravity
      ENDDO
      DO k=1,Nr
        kc = Nr-k+1
        kp = MIN(kc+1,Nr)
        zHalf3d(:,:,k) = zHalf3d(:,:,k)
     &                 + ( totPhiHyd(1:sNx,1:sNy,kp,bi,bj)
     &                    +totPhiHyd(1:sNx,1:sNy,kc,bi,bj) )*0.5
     &                    /gravity
      ENDDO

C----- test
      tdt3d = 0.
      conv_dt_tg = 0.
      conv_dt_qg = 0.
      cond_dt_tg = 0.
      cond_dt_qg = 0.

      IF (lwet_convection) THEN
        CALL DARGAN_BETTSMILLER(
     I                   deltaT, t3d, q3d, pFull3d, pHalf3d, coldT,
     O                   rain2d, snow2d, conv_dt_tg, conv_dt_qg,
     O                   q_ref,      bmflag,
     O                   klzbs,        cape,
     O                   cin,         t_ref,
     O                   invtau_bm_t,     invtau_bm_q,
     O                   capeflag,
     I                   bi,bj,myIter,myThid )

      conv_dt_tg = conv_dt_tg / deltaT
      conv_dt_qg = conv_dt_qg / deltaT
      rain2d = rain2d / deltaT
#ifdef ALLOW_DIAGNOSTICS
      IF ( useDiagnostics ) THEN
         CALL DIAGNOSTICS_FILL( rain2d , 'AtPhCnvP',
     &                          0, 1, 3, bi, bj, myThid )
      ENDIF
#endif /* ALLOW_DIAGNOSTICS */
      ENDIF

      rain2d(:,:) = 0.
      CALL LSCALE_COND (
     I                   t3d, q3d, pFull3d, pHalf3d, coldT,
     O                   rain2d, snow2d, cond_dt_tg, cond_dt_qg,
     I                   myThid )
      cond_dt_tg = cond_dt_tg / deltaT
      cond_dt_qg = cond_dt_qg / deltaT
      rain2d = rain2d / deltaT
#ifdef ALLOW_DIAGNOSTICS
      IF ( useDiagnostics ) THEN
         CALL DIAGNOSTICS_FILL( rain2d , 'AtPhLscP',
     &                          0, 1, 3, bi, bj, myThid )
      ENDIF
#endif /* ALLOW_DIAGNOSTICS */

      IF ( two_stream ) THEN
      CALL RADIATION_DOWN(
     I                     sNx,sNy, myTime, lat2d, pHalf3d, t3d, q3d,
     O                     s_sw_dwn, s_lw_dwn,
     O                     albedo_2d, dtrans_3d, b_3d,
     O                     lw_down_3d, sw_down_3d, myThid )

c     write(errorMessageUnit,'(A,I5,I3,4F9.3)')'it,bj,sw,lw:',myIter,bj,
c    &      sw_down_3d(1,1,15), sw_down_3d(1,sNy,15),
c    &      lw_down_3d(1,1,15), lw_down_3d(1,sNy,15)
      ENDIF

      IF (.TRUE.) THEN
       land = .false.
       avail = .true.
       rough_mom = roughness_mom
       rough_heat = roughness_heat
       rough_moist = roughness_moist
       gust = 1.0
       u_surf = 0.
       v_surf = 0.
       CALL SURFACE_FLUX(
     I            t3d(:,:,Nr), q3d(:,:,Nr), u3d(:,:,Nr), v3d(:,:,Nr),
     I            pFull3d(:,:,Nr), zFull3d(:,:,Nr), pHalf3d(:,:,Nr+1),
     I            t_surf, t_surf,
     U            q_surf,
     I            u_surf, v_surf,
     I            rough_mom, rough_heat, rough_moist, gust,
     O            flux_t, flux_q, flux_r, flux_u, flux_v,
     O            drag_m, drag_t, drag_q, w_atm,
     O            ustar, bstar, qstar,
     O            dhdt_surf, dedt_surf, dedq_surf, drdt_surf,
     O            dhdt_atm, dedq_atm, dtaudv_atm,
     I            deltaT, land(:,:), avail(:,:), myThid  )
      ENDIF

      IF ( two_stream ) THEN
        CALL RADIATION_UP(
     I                     sNx,sNy, myTime, lat2d, pHalf3d, t_surf, t3d,
     U                     tdt3d, olr_2d,
     I                     albedo_2d, dtrans_3d, b_3d,
     I                     lw_down_3d, sw_down_3d, myThid )

c     write(errorMessageUnit,'(A,I5,I3,4F9.3)')'it,bj,t,tdt:',myIter,bj,
c    &      t3d(1,1,15), t3d(1,sNy,15),
c    &      tdt3d(1,1,15)*86400., tdt3d(1,sNy,15)*86400.
      ENDIF

      IF (turb) THEN
       fracland = 0.0
       rough = roughness_mom
       CALL VERT_TURB_DRIVER(  1, 1, myTime, myTime+deltaT, deltaT,
     I           fracland(:,:), pHalf3d, pFull3d, zHalf3d, zFull3d,
     I           ustar, bstar, rough,
     I           u3d, v3d, t3d, q3d,
     I           u3d, v3d, t3d, q3d,
     I           u3d, v3d, t3d, q3d,
     O           diff_t(:,:,:), diff_m(:,:,:), gust(:,:),
     I           myThid )
      ENDIF

      diff_dt_ug = 0.
      diff_dt_vg = 0.
      diff_dt_tg = 0.
      diff_dt_qg = 0.

c     STOP 'before GCM_VERT_DIFF_DOWN'
      CALL GCM_VERT_DIFF_DOWN( 1, 1, deltaT,
     I           u3d, v3d, t3d, q3d,
     I           diff_m(:,:,:), diff_t(:,:,:),
     I           pHalf3d, pFull3d, zFull3d,
     U           flux_u(:,:),  flux_v(:,:),  dtaudv_atm,
     U           diff_dt_ug, diff_dt_vg, diff_dt_tg,
     I           diff_dt_qg,
     O           diss_heat(:,:,:),
     U           tri_surf_dtmass,
     U           tri_surf_dflux_t, tri_surf_dflux_q,
     U           tri_surf_delta_t, tri_surf_delta_q,
     O           e_global, f_t_global, f_q_global,
     I           myThid )
c     STOP ' after GCM_VERT_DIFF_DOWN'

      CALL MIXED_LAYER(
     I                   myTime,
     U                   t_surf(:,:),
     I                   flux_t(:,:),
     I                   flux_q(:,:),
     I                   flux_r(:,:),
     I                   deltaT,
     I                   s_sw_dwn(:,:),
     I                   s_lw_dwn(:,:),
     U                   tri_surf_dtmass,
     U                   tri_surf_dflux_t, tri_surf_dflux_q,
     U                   tri_surf_delta_t, tri_surf_delta_q,
     I                   dhdt_surf(:,:),
     I                   dedt_surf(:,:),
     I                   dedq_surf(:,:),
     I                   drdt_surf(:,:),
     I                   dhdt_atm(:,:),
     I                   dedq_atm(:,:),
     I                   ocean_qflux(:,:), myThid )

      CALL GCM_VERT_DIFF_UP ( 1, 1, deltat,
     I           tri_surf_delta_t, tri_surf_delta_q,
     I           e_global, f_t_global, f_q_global,
     O           diff_dt_tg, diff_dt_qg,
     I           myThid )

      DO k=1,Nr
        kc = Nr-k+1
        conv_T2theta = (atm_po/rC(kc))**atm_kappa
        myPa_TendScal1(1:sNx,1:sNy,kc,bi,bj) =
     &      ( 0.
     &        + tdt3d(:,:,k)
     &        + conv_dt_tg(:,:,k)
     &        + cond_dt_tg(:,:,k)
     &        + diff_dt_tg(:,:,k)
     &      )*conv_T2theta
        myPa_TendScal2(1:sNx,1:sNy,kc,bi,bj) = 0.
     &        + conv_dt_qg(:,:,k)
     &        + cond_dt_qg(:,:,k)
     &        + diff_dt_qg(:,:,k)
        myPa_TendVelU(1:sNx,1:sNy,kc,bi,bj) = diff_dt_ug(:,:,k)
        myPa_TendVelV(1:sNx,1:sNy,kc,bi,bj) = diff_dt_vg(:,:,k)
      ENDDO

C--   Update SST
      IF ( myPa_doSwitch1 ) THEN
        myPa_Surf1(1:sNx,1:sNy,bi,bj) = t_surf(:,:)
      ENDIF

#ifdef ALLOW_DIAGNOSTICS
      IF ( useDiagnostics ) THEN
         CALL DIAGNOSTICS_FILL( myPa_TendScal1 , 'AtPhdTdt',
     &                          0, Nr, 1, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( myPa_TendScal2 , 'AtPhdQdt',
     &                          0, Nr, 1, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( myPa_TendVelU , 'AtPhdUdt',
     &                          0, Nr, 1, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( myPa_TendVelV , 'AtPhdVdt',
     &                          0, Nr, 1, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( diff_t , 'AtPhDifT',
     &                          -1, Nr, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( diff_m , 'AtPhDifM',
     &                          -1, Nr, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( sw_down_3d,'AtPhInSR',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( olr_2d ,   'AtPhOLR ',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( s_sw_dwn,  'AtPhNSSR',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( s_lw_dwn,  'AtPhDSLR',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( flux_r ,   'AtPhUSLR',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( flux_t ,   'AtPhSens',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( flux_q ,   'AtPhEvap',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( flux_u , 'AtPhTauX',
     &                          0, 1, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( flux_v , 'AtPhTauY',
     &                          0, 1, 3, bi, bj, myThid )
c        CALL DIAGNOSTICS_FILL( diff_dt_ug , 'AtPhdtUg',
c    &                          -1, Nr, 3, bi, bj, myThid )
c        CALL DIAGNOSTICS_FILL( diff_dt_vg , 'AtPhdtVg',
c    &                          -1, Nr, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( diff_dt_tg , 'AtPhdtTg',
     &                          -1, Nr, 3, bi, bj, myThid )
         CALL DIAGNOSTICS_FILL( diff_dt_qg  , 'AtPhdtQg',
     &                          -1, Nr, 3, bi, bj, myThid )
      ENDIF
#endif /* ALLOW_DIAGNOSTICS */

C--   end bi,bj loops.
       ENDDO
      ENDDO

      CALL EXCH_UV_AGRID_3D_RL( myPa_TendVelU, myPa_TendVelV,
     &                          .TRUE., Nr, myThid )

      RETURN
      END
