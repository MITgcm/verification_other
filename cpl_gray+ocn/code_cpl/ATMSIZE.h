C $Header: /u/gcmpack/MITgcm_contrib/verification_other/cpl_gray+ocn/code_cpl/ATMSIZE.h,v 1.1 2013/09/25 19:28:28 jmc Exp $
C $Name:  $

C     /==========================================================\
C     | ATMSIZE.h  Declare size of underlying computational grid |
C     |            for atmosphere component.                     |
C     \==========================================================/
C     Nx_atm  - No. points in X for the total domain.
C     Ny_atm  - No. points in Y for the total domain.
      INTEGER Nx_atm
      INTEGER Ny_atm
      PARAMETER (
     &           Nx_atm  = 192,
     &           Ny_atm  =  32)
