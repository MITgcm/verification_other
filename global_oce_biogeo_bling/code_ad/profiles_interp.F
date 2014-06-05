C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_biogeo_bling/code_ad/profiles_interp.F,v 1.1 2014/06/05 21:41:21 mmazloff Exp $
C $Name:  $

#include "PROFILES_OPTIONS.h"

C     o==========================================================o
C     | subroutine profiles_interp                               |
C     | o 3D interpolation of model counterparts                 |
C     |   for netcdf profiles data                               |
C     | started: Gael Forget 15-March-2006                       |
C     o==========================================================o

      SUBROUTINE profiles_interp(
     O traj_cur_out,
     I lon_cur,
     I lat_cur,
     I type_cur,
     I file_cur,
     I mytime,
     I bi,
     I bj,
     I myThid
     & )

      implicit none

C ==================== Global Variables ===========================
#include "EEPARAMS.h"
#include "SIZE.h"
#include "GRID.h"
#include "DYNVARS.h"
#include "PARAMS.h"
#ifdef ALLOW_CAL
#include "cal.h"
#endif
#ifdef ALLOW_PROFILES
# include "profiles.h"
#else
      integer NLEVELMAX
      parameter (NLEVELMAX=1)
#endif
#ifdef ALLOW_PTRACERS
#include "PTRACERS_SIZE.h"
#include "PTRACERS_FIELDS.h"
#endif
CMM(
#ifdef ALLOW_DIC
#include "DIC_VARS.h"
#endif
CMM)
CAV(
#ifdef ALLOW_BLING
#include "BLING_VARS.h"
#endif
CAV)
C ==================== Routine Variables ==========================
      _RL  mytime
      integer mythid
      integer type_cur,file_cur 
      _RL  traj_cur_out(NLEVELMAX)
      _RL  lon_cur,lat_cur
CMM(
      integer iptri
CMM)
#ifdef ALLOW_PROFILES

C ==================== Local Variables ==========================
      _RL tab_coeffs1(2,2),tab_coeffs2(2,2),tab_coeffs3(2,2)
      _RL ponderations(2,2),pondsSUM,distance1,distance2
      integer i,j,k,kk,kcur,bi,bj
      _RL traj_cur(nR),mask_cur(nR)
      integer prof_i,prof_j
      _RL lon_tmp1,lon_tmp2,lon_1,lon_2,lat_1,lat_2,tmp_coeff
c--   == end of interface ==

CMM(
       iptri = 1
CMM)
       prof_i=-10
       prof_j=-10
       lon_1=-10
       lon_2=-10
       lat_1=-10
       lat_2=-10

        DO j=1,sNy+1
         DO i=1,sNx+1

cgf value of j, south of the data point:
      if (type_cur.NE.4) then
        if ((yC(i,j,bi,bj).LE.lat_cur).AND.
     &  (yC(i,j+1,bi,bj).GT.lat_cur)) then
          prof_j=j
          lat_1=yC(i,j,bi,bj)
          lat_2=yC(i,j+1,bi,bj)
        else
          prof_j=prof_j
          lat_1=lat_1
          lat_2=lat_2
        endif
      else
        if ((yG(i,j,bi,bj).LE.lat_cur).AND.
     &  (yG(i,j+1,bi,bj).GT.lat_cur)) then
          prof_j=j
          lat_1=yG(i,j,bi,bj)
          lat_2=yG(i,j+1,bi,bj)
        else
          prof_j=prof_j
          lat_1=lat_1
          lat_2=lat_2
        endif
      endif

cgf value of i, west of the data point:
      if (type_cur.NE.3) then
         if (xC(i+1,j,bi,bj).LT.xC(1,j,bi,bj)) then
         lon_tmp2=xC(i+1,j,bi,bj)+360
         else
         lon_tmp2=xC(i+1,j,bi,bj)
         endif
         if (xC(i,j,bi,bj).LT.xC(1,j,bi,bj)) then
         lon_tmp1=xC(i,j,bi,bj)+360
         else
         lon_tmp1=xC(i,j,bi,bj)
         endif
      else
         if (xG(i+1,j,bi,bj).LT.xG(1,j,bi,bj)) then
         lon_tmp2=xG(i+1,j,bi,bj)+360
         else
         lon_tmp2=xG(i+1,j,bi,bj)
         endif
         if (xG(i,j,bi,bj).LT.xG(1,j,bi,bj)) then
         lon_tmp1=xG(i,j,bi,bj)+360
         else
         lon_tmp1=xG(i,j,bi,bj)
         endif
      endif 
      if ((lon_tmp1.LE.lon_cur).AND.
     &(lon_tmp2.GT.lon_cur)) then
         prof_i=i
         lon_1=lon_tmp1
         lon_2=lon_tmp2
      else
         prof_i=prof_i
         lon_1=lon_1
         lon_2=lon_2
      endif

        ENDDO
       ENDDO


      if ((prof_i.NE.-10).AND.(prof_j.NE.-10)) then
cgf) spatial interpolation 

        distance1=(lat_cur-lat_1)/(lat_2-lat_1)
        distance2=(lon_cur-lon_1)/(lon_2-lon_1) 
        tab_coeffs2(1,1)=(1-distance2)*(1-distance1)
        tab_coeffs2(1,2)=distance2*(1-distance1)
        tab_coeffs2(2,1)=(1-distance2)*distance1
        tab_coeffs2(2,2)=distance2*distance1

       do k=1,nr
       if (type_cur.EQ.1) then
               tab_coeffs1(1,1)=theta(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs1(1,2)=theta(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs1(2,1)=theta(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs1(2,2)=theta(prof_i+1,prof_j+1,k,bi,bj) !NZ              
               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ
       elseif (type_cur.EQ.2) then
               tab_coeffs1(1,1)=salt(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs1(1,2)=salt(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs1(2,1)=salt(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs1(2,2)=salt(prof_i+1,prof_j+1,k,bi,bj) !NZ         
               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ
       elseif (type_cur.EQ.3) then
               tab_coeffs1(1,1)=uVel(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs1(1,2)=uVel(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs1(2,1)=uVel(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs1(2,2)=uVel(prof_i+1,prof_j+1,k,bi,bj) !NZ
               tab_coeffs3(1,1)=maskW(prof_i,prof_j,k,bi,bj) !SO 
               tab_coeffs3(1,2)=maskW(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskW(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskW(prof_i+1,prof_j+1,k,bi,bj) !NZ 
       elseif (type_cur.EQ.4) then
               tab_coeffs1(1,1)=vVel(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs1(1,2)=vVel(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs1(2,1)=vVel(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs1(2,2)=vVel(prof_i+1,prof_j+1,k,bi,bj) !NZ
               tab_coeffs3(1,1)=maskS(prof_i,prof_j,k,bi,bj) !SO 
               tab_coeffs3(1,2)=maskS(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskS(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskS(prof_i+1,prof_j+1,k,bi,bj) !NZ 
       elseif (type_cur.EQ.5) then
#ifdef ALLOW_PTRACERS
cgf if this gets used, an additional common block could be defined, containing
cgf the pTracer number (now 1, hard-coded), that would be read from the .nc input file
c               tab_coeffs1(1,1)=pTracer(prof_i,prof_j,k,bi,bj,1) !SO
c               tab_coeffs1(1,2)=pTracer(prof_i+1,prof_j,k,bi,bj,1) !SE
c               tab_coeffs1(2,1)=pTracer(prof_i,prof_j+1,k,bi,bj,1) !NO
c               tab_coeffs1(2,2)=pTracer(prof_i+1,prof_j+1,k,bi,bj,1) !NZ
CAV( generic tracer is now tracer 7
               tab_coeffs1(1,1)=pTracer(prof_i,prof_j,k,bi,bj,7) !SO
               tab_coeffs1(1,2)=pTracer(prof_i+1,prof_j,k,bi,bj,7) !SE
               tab_coeffs1(2,1)=pTracer(prof_i,prof_j+1,k,bi,bj,7) !NO
               tab_coeffs1(2,2)=pTracer(prof_i+1,prof_j+1,k,bi,bj,7) !NZ
CAV)
#else
               tab_coeffs1(1,1)=0 !SO
               tab_coeffs1(1,2)=0 !SE
               tab_coeffs1(2,1)=0 !NO
               tab_coeffs1(2,2)=0 !NZ
#endif
               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ
       elseif (type_cur.EQ.6) then
               tab_coeffs1(1,1)=etan(prof_i,prof_j,bi,bj) !SO
               tab_coeffs1(1,2)=etan(prof_i+1,prof_j,bi,bj) !SE
               tab_coeffs1(2,1)=etan(prof_i,prof_j+1,bi,bj) !NO
               tab_coeffs1(2,2)=etan(prof_i+1,prof_j+1,bi,bj) !NZ
               tab_coeffs3(1,1)=maskC(prof_i,prof_j,1,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,1,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,1,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,1,bi,bj) !NZ
CMM( 
#ifdef ALLOW_PTRACERS
CMM: BLING tracers:  7=DIC 8=ALK 9=NUT 10=O2 11=FE
CMM: BLING diags:    12=PCO2 13=PH 14=CHL 
C               if (type_cur.EQ. 7) iptri = 1
C               if (type_cur.EQ. 8) iptri = 2 
C               if (type_cur.EQ. 9) iptri = 3
C               if (type_cur.EQ.10) iptri = 5
C               if (type_cur.EQ.11) iptri = 6

        elseif (type_cur.EQ.7) then
               tab_coeffs1(1,1)=pTracer(prof_i,prof_j,k,bi,bj,1) !SO
               tab_coeffs1(1,2)=pTracer(prof_i+1,prof_j,k,bi,bj,1) !SE
               tab_coeffs1(2,1)=pTracer(prof_i,prof_j+1,k,bi,bj,1) !NO
               tab_coeffs1(2,2)=pTracer(prof_i+1,prof_j+1,k,bi,bj,1) !NZ

               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ

        elseif (type_cur.EQ.8) then
               tab_coeffs1(1,1)=pTracer(prof_i,prof_j,k,bi,bj,2) !SO
               tab_coeffs1(1,2)=pTracer(prof_i+1,prof_j,k,bi,bj,2) !SE
               tab_coeffs1(2,1)=pTracer(prof_i,prof_j+1,k,bi,bj,2) !NO
               tab_coeffs1(2,2)=pTracer(prof_i+1,prof_j+1,k,bi,bj,2) !NZ

               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ

        elseif (type_cur.EQ.9) then
               tab_coeffs1(1,1)=pTracer(prof_i,prof_j,k,bi,bj,3) !SO
               tab_coeffs1(1,2)=pTracer(prof_i+1,prof_j,k,bi,bj,3) !SE
               tab_coeffs1(2,1)=pTracer(prof_i,prof_j+1,k,bi,bj,3) !NO
               tab_coeffs1(2,2)=pTracer(prof_i+1,prof_j+1,k,bi,bj,3) !NZ

               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ

        elseif (type_cur.EQ.10) then
               tab_coeffs1(1,1)=pTracer(prof_i,prof_j,k,bi,bj,5) !SO
               tab_coeffs1(1,2)=pTracer(prof_i+1,prof_j,k,bi,bj,5) !SE
               tab_coeffs1(2,1)=pTracer(prof_i,prof_j+1,k,bi,bj,5) !NO
               tab_coeffs1(2,2)=pTracer(prof_i+1,prof_j+1,k,bi,bj,5) !NZ

               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ

        elseif (type_cur.EQ.11) then
               tab_coeffs1(1,1)=pTracer(prof_i,prof_j,k,bi,bj,6) !SO
               tab_coeffs1(1,2)=pTracer(prof_i+1,prof_j,k,bi,bj,6) !SE
               tab_coeffs1(2,1)=pTracer(prof_i,prof_j+1,k,bi,bj,6) !NO
               tab_coeffs1(2,2)=pTracer(prof_i+1,prof_j+1,k,bi,bj,6) !NZ
               
               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ

        elseif (type_cur.EQ.12) then
               tab_coeffs1(1,1)=pCO2(prof_i,prof_j,bi,bj) !SO
               tab_coeffs1(1,2)=pCO2(prof_i+1,prof_j,bi,bj) !SE
               tab_coeffs1(2,1)=pCO2(prof_i,prof_j+1,bi,bj) !NO
               tab_coeffs1(2,2)=pCO2(prof_i+1,prof_j+1,bi,bj) !NZ

               tab_coeffs3(1,1)=maskC(prof_i,prof_j,1,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,1,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,1,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,1,bi,bj) !NZ

        elseif (type_cur.EQ.13) then
               tab_coeffs1(1,1)=pH(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs1(1,2)=pH(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs1(2,1)=pH(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs1(2,2)=pH(prof_i+1,prof_j+1,k,bi,bj) !NZ

               tab_coeffs3(1,1)=maskC(prof_i,prof_j,k,bi,bj) !SO
               tab_coeffs3(1,2)=maskC(prof_i+1,prof_j,k,bi,bj) !SE
               tab_coeffs3(2,1)=maskC(prof_i,prof_j+1,k,bi,bj) !NO
               tab_coeffs3(2,2)=maskC(prof_i+1,prof_j+1,k,bi,bj) !NZ

CMM need to implement CHL

CMM)          
#endif
        else
               tab_coeffs1(1,1)=0.
               tab_coeffs1(2,1)=0.
               tab_coeffs1(1,2)=0.
               tab_coeffs1(2,2)=0.
               tab_coeffs3(1,1)=0.
               tab_coeffs3(2,1)=0.
               tab_coeffs3(1,2)=0.
               tab_coeffs3(2,2)=0.
        endif

        ponderations(1,1)=tab_coeffs3(1,1)*tab_coeffs2(1,1)
        ponderations(1,2)=tab_coeffs3(1,2)*tab_coeffs2(1,2)
        ponderations(2,1)=tab_coeffs3(2,1)*tab_coeffs2(2,1)
        ponderations(2,2)=tab_coeffs3(2,2)*tab_coeffs2(2,2)
        pondsSUM=ponderations(1,1)+ponderations(2,1)+ponderations(1,2)+
     &  ponderations(2,2)


CAV( zero-out weight when in shallow water
       if ( abs(R_low(prof_i,prof_j,bi,bj)).lt.51  ) then
        pondsSUM = 0.
       endif 
CAV)

        if (pondsSUM.GT.0) then
         tab_coeffs1(1,1)=tab_coeffs1(1,1)*ponderations(1,1)/pondsSUM
         tab_coeffs1(1,2)=tab_coeffs1(1,2)*ponderations(1,2)/pondsSUM
         tab_coeffs1(2,1)=tab_coeffs1(2,1)*ponderations(2,1)/pondsSUM
         tab_coeffs1(2,2)=tab_coeffs1(2,2)*ponderations(2,2)/pondsSUM
         traj_cur(k)=tab_coeffs1(1,1)+tab_coeffs1(2,1)+
     &   tab_coeffs1(1,2)+tab_coeffs1(2,2)   
         mask_cur(k)=1
        else
         traj_cur(k)=0
         mask_cur(k)=0
        endif
       enddo

      else  
       do k=1,nr 
         traj_cur(k)=0
         mask_cur(k)=0
       enddo
      endif

cgf vertical interpolation:
      do kk=1,NLEVELMAX
         traj_cur_out(kk)=0
         prof_mask1D_cur(kk,bi,bj)=0
      enddo

CAV( pCO2: 2D field, only consider obs within first layer
c      if (type_cur.EQ.12) then
c       do kk=1,ProfDepthNo(file_cur,bi,bj)
c        if (prof_depth(file_cur,1,bi,bj).LT.-rF(1)) then
c          traj_cur_out(kk)=traj_cur(1)
c          prof_mask1D_cur(kk,bi,bj)=mask_cur(1)
c        else
c          traj_cur_out(kk)=0
c          prof_mask1D_cur(kk,bi,bj)=0
c        endif
c       enddo
c      else
CAV)

      do kk=1,ProfDepthNo(file_cur,bi,bj)
c case 1: above first grid center=> first grid center value 
        if (prof_depth(file_cur,kk,bi,bj).LT.-rC(1)) then
          traj_cur_out(kk)=traj_cur(1)
          prof_mask1D_cur(kk,bi,bj)=mask_cur(1)
c case 2: just below last grid center=> last cell value
        elseif (prof_depth(file_cur,kk,bi,bj).GE.-rC(nr)) then
          if ( prof_depth(file_cur,kk,bi,bj) .LT. 
     &    (-rC(nr)+drC(nr)/2) ) then  
            traj_cur_out(kk)=traj_cur(nr)
            prof_mask1D_cur(kk,bi,bj)=mask_cur(nr)
          endif
c case 3: between two grid centers
        else
          kcur=0
          do k=1,nr-1
            if ((prof_depth(file_cur,kk,bi,bj).GE.-rC(k)).AND.
     &      (prof_depth(file_cur,kk,bi,bj).LT.-rC(k+1))) then
              kcur=k
            endif
          enddo
          if (kcur.EQ.0) then
            WRITE(errorMessageUnit,'(A)')
     & 'ERROR in PROFILES_INTERP: unexpected case 1'
             STOP 'ABNORMAL END: S/R PROFILES_INTERP'
          endif
          if (mask_cur(kcur+1).EQ.1.) then
c  subcase 1: 2 wet points=>linear interpolation
            tmp_coeff=(prof_depth(file_cur,kk,bi,bj)+rC(kcur))/
     &      (-rC(kcur+1)+rC(kcur))
            traj_cur_out(kk)=(1-tmp_coeff)*traj_cur(kcur)
     &      +tmp_coeff*traj_cur(kcur+1)
            prof_mask1D_cur(kk,bi,bj)=1
            if (mask_cur(kcur).EQ.0.) then
            WRITE(errorMessageUnit,'(A)')
     & 'ERROR in PROFILES_INTERP: unexpected case 2'
             STOP 'ABNORMAL END: S/R PROFILES_INTERP'
            endif
          elseif (prof_depth(file_cur,kk,bi,bj).LT.-rF(kcur+1)) then
c  subcase 2: only 1 wet point just above=>upper cell value
            traj_cur_out(kk)=traj_cur(kcur)
            prof_mask1D_cur(kk,bi,bj)=mask_cur(kcur)
          endif
        endif
      enddo

CAV(
c      endif
CAV)

#endif

      end

