C $Header: /u/gcmpack/MITgcm_contrib/verification_other/cpl_gray+ocn/code_cpl/OCNSIZE.h,v 1.1 2013/09/25 19:28:28 jmc Exp $
C $Name:  $

C     /==========================================================\
C     | OCN_SIZE.h Declare size of underlying computational grid |
C     |            for ocean component.                          |
C     \==========================================================/
C     Nx_ocn  - No. points in X for the total domain.
C     Ny_ocn  - No. points in Y for the total domain.
      INTEGER Nx_ocn
      INTEGER Ny_ocn
      PARAMETER (
     &           Nx_ocn  = 192,
     &           Ny_ocn  =  32)
