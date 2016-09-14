C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_biogeo_bling/code_ad/PROFILES_SIZE.h,v 1.1 2016/09/14 21:18:41 mmazloff Exp $
C $Name:  $

C============================================================
C NOBSGLOB            :: maximum number of profiles per file and tile
C NFILESPROFMAX       :: maximum number of files
C NVARMAX             :: maximum number of variables 
C NLEVELMAX           :: maximum number of vertical levels 
C NUM_INTERP_POINTS   :: number of points used in horizontal averaging
C============================================================

      INTEGER  NOBSGLOB
      PARAMETER ( NOBSGLOB = 500  )
      INTEGER NFILESPROFMAX
      PARAMETER ( NFILESPROFMAX=20 )
      INTEGER NVARMAX
      PARAMETER ( NVARMAX=15 )
      INTEGER NLEVELMAX
      PARAMETER ( NLEVELMAX=110 )
      INTEGER NUM_INTERP_POINTS
      PARAMETER (NUM_INTERP_POINTS = 4)

