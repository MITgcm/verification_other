#ifdef ALLOW_SHELFICE

CBOP
C !ROUTINE: SHELFICE_LOCAL.h

C !DESCRIPTION: \bv
C     *================================================================*
C     | SHELFICE_LOCAL.h
C     | o Addition to header file SHELFICE.h specific to this set-up
C     *================================================================*

C-----------------------------------------------------------------------
C
C--   Constants that can be set in data.shelfice
C     SHELFICErealFWflux       :: ensure vert advective flux at bdry uses top
C                                 cell value rather than "boundary layer" value
C                                 def: F
C--   Fields
C     conserve_ssh           :: KS16. Use the obcs to conserve net open
C                               ocean eta to 0m
C-----------------------------------------------------------------------
C \ev
CEOP

      COMMON /SHELFICE_LOCAL_I/
     &     shelfice_etarestore_spongewidth
      INTEGER shelfice_etarestore_spongewidth

      COMMON /SHELFICE_LOCAL_RL/
     &     shelficeEtaRelax
      _RL shelficeEtaRelax
c     _RL SHELFICEGroundW, SHELFICEGroundC

      COMMON /SHELFICE_LOCAL_L/
     &     SHELFICErealFWflux,
c    &     SHELFICEthickBoundaryLayer,
     &     SHELFICEEtaSponge,
     &     SHELFICE_dig_ice,
     &     SHELFICE_massmin_trueDens,
     &     conserve_ssh
      LOGICAL SHELFICErealFWflux
c     LOGICAL SHELFICEthickBoundaryLayer
      LOGICAL SHELFICEEtaSponge
      LOGICAL SHELFICE_dig_ice
      LOGICAL SHELFICE_massmin_trueDens
C   KS16 put var here
      LOGICAL conserve_ssh

c     COMMON /SHELFICE_LOCAL_C/
c    &     SHELFICEGroundTopoFile,
c    &     SHELFICEGroundInitFile
c     CHARACTER*(MAX_LEN_FNAM) SHELFICEGroundTopoFile
c     CHARACTER*(MAX_LEN_FNAM) SHELFICEGroundInitFile

#ifdef ALLOW_SHELFICE_GROUNDED_ICE
      COMMON /SHELFICE_LOCAL_FLD/
     &     EFFMASS, R_MWCT
      _RL EFFMASS        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      _RL R_MWCT         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
#endif
c     _RL SeaLevelRestore(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

#endif /* ALLOW_SHELFICE */
