C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_llc90/code/Attic/profiles.h,v 1.8 2015/07/28 01:01:11 gforget Exp $
C $Name:  $

C============================================================
C NOBSMAX : maximal number of profiles
C============================================================
      INTEGER  NOBSGLOB
      PARAMETER ( NOBSGLOB = 20  )
      INTEGER NFILESPROFMAX
      PARAMETER ( NFILESPROFMAX=20 )
      INTEGER NVARMAX
      PARAMETER ( NVARMAX=6 )
      INTEGER NLEVELMAX
      PARAMETER ( NLEVELMAX=110 )
      INTEGER NUM_INTERP_POINTS
#ifndef ALLOW_PROFILES_GENERICGRID
      PARAMETER (NUM_INTERP_POINTS = 4)
#else
      PARAMETER (NUM_INTERP_POINTS = 1)
#endif

C===========================================================
C variables
C===========================================================
      _RL prof_time(NFILESPROFMAX,NOBSGLOB,nsx,nsy),
     & prof_lon(NFILESPROFMAX,NOBSGLOB,nsx,nsy),
     & prof_lat(NFILESPROFMAX,NOBSGLOB,nsx,nsy)

      _RL prof_interp_xC11(NFILESPROFMAX,NOBSGLOB,nsx,nsy)
      _RL prof_interp_yC11(NFILESPROFMAX,NOBSGLOB,nsx,nsy)
      _RL prof_interp_xCNINJ(NFILESPROFMAX,NOBSGLOB,nsx,nsy)
      _RL prof_interp_yCNINJ(NFILESPROFMAX,NOBSGLOB,nsx,nsy)
      _RL prof_interp_weights(NFILESPROFMAX,NOBSGLOB,
     &     NUM_INTERP_POINTS,nsx,nsy)
      integer prof_interp_i(NFILESPROFMAX,NOBSGLOB,
     &     NUM_INTERP_POINTS,nsx,nsy)
      integer prof_interp_j(NFILESPROFMAX,NOBSGLOB,
     &     NUM_INTERP_POINTS,nsx,nsy)

      integer prof_ind_glob(NFILESPROFMAX,NOBSGLOB,nsx,nsy)
      _RL prof_depth(NFILESPROFMAX,NLEVELMAX,nsx,nsy)
      _RL prof_mask1D_cur(NLEVELMAX,nsx,nsy)
      _RL prof_etan_mean(1-olx:snx+olx,1-oly:sny+oly,nsx,nsy)
      _RL prof_theta_mean(1-olx:snx+olx,1-oly:sny+oly,nr,nsx,nsy)
      _RL prof_salt_mean(1-olx:snx+olx,1-oly:sny+oly,nr,nsx,nsy)

      integer profNo(NFILESPROFMAX,nsx,nsy)
      integer profDepthNo(NFILESPROFMAX,nsx,nsy)

      logical vec_quantities(NFILESPROFMAX,NVARMAX,nsx,nsy)
      integer fidforward(NFILESPROFMAX,nsx,nsy), 
     & fidadjoint(NFILESPROFMAX,nsx,nsy), 
     & fidtangent(NFILESPROFMAX,nsx,nsy)
      integer fiddata(NFILESPROFMAX,nsx,nsy)
      character*(8) prof_names(NFILESPROFMAX,NVARMAX)
      character*(8) prof_namesmod(NFILESPROFMAX,NVARMAX)
      character*(12) prof_namesmask(NFILESPROFMAX,NVARMAX)
      character*(14) prof_namesweight(NFILESPROFMAX,NVARMAX)
      integer prof_itracer(NFILESPROFMAX,NVARMAX)

      _RL profiles_data_buff(NLEVELMAX,1000,NVARMAX,nsx,nsy)
      _RL profiles_weight_buff(NLEVELMAX,1000,NVARMAX,nsx,nsy)
      integer profiles_minind_buff(nsx,nsy)
      integer profiles_maxind_buff(nsx,nsy)
      integer profiles_curfile_buff(nsx,nsy)

      logical profilesDoNcOutput, profilesDoGenGrid
      integer prof_num_var_tot(NFILESPROFMAX,nsx,nsy)
      integer prof_num_var_cur(NFILESPROFMAX,NVARMAX,nsx,nsy)

C===========================================================
C Common Blocks
C===========================================================

      COMMON /profiles_r/ prof_time, prof_lon, prof_lat,
     & prof_depth, prof_mask1D_cur, 
     & prof_etan_mean, prof_theta_mean, prof_salt_mean
      COMMON /profiles_i/ prof_ind_glob, profNo, profDepthNo,
     & fidforward, fidadjoint, fidtangent, fiddata,
     & prof_num_var_tot, prof_num_var_cur, prof_itracer
      COMMON /profiles_l/ vec_quantities, profilesDoNcOutput, 
     & profilesDoGenGrid
      COMMON /profiles_c/ prof_names, prof_namesmask,
     & prof_namesweight, prof_namesmod

      COMMON /profiles_GenericGrid_r/ prof_interp_weights,
     & prof_interp_xC11, prof_interp_yC11,
     & prof_interp_xCNINJ, prof_interp_yCNINJ  
      COMMON /profiles_GenericGrid_i/ 
     & prof_interp_i, prof_interp_j

      COMMON /profiles_buff_r/ profiles_data_buff, profiles_weight_buff
      COMMON /profiles_buff_i/
     & profiles_minind_buff, profiles_maxind_buff, profiles_curfile_buff

     
      COMMON /profiles_cost_r/
     &                objf_profiles,
     &                num_profiles,
     &                mult_profiles,
     &                prof_facmod
      _RL  objf_profiles(NFILESPROFMAX,NVARMAX,nsx,nsy)
      _RL  num_profiles(NFILESPROFMAX,NVARMAX,nsx,nsy)
      _RL  mult_profiles(NFILESPROFMAX,NVARMAX)
      _RL  prof_facmod(NFILESPROFMAX,NVARMAX)

      COMMON /profiles_cost_c/
     &        profilesDir, profilesfiles
      character*(MAX_LEN_FNAM) profilesDir
      character*(MAX_LEN_FNAM) profilesfiles(NFILESPROFMAX)

      COMMON /profiles_ctrl_dummy/
     &                profiles_dummy
      _RL profiles_dummy(NFILESPROFMAX,NVARMAX,nsx,nsy)


