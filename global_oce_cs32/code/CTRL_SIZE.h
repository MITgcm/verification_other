CBOP
C     !ROUTINE: CTRL_SIZE.h
C     !INTERFACE:
C     #include "CTRL_SIZE.h"

C     !DESCRIPTION:
C     *================================================================*
C     | CTRL_SIZE.h
C     | o set number of control variables
C     *================================================================*
CEOP

C     Generic control variable array dimension
C     ----------------------------------------
C
C     maxCtrlArr2D :: number of 2-d generic init. ctrl variables
C     maxCtrlArr3D :: number of 3-d generic init. ctrl variables
C     maxCtrlTim2D :: number of 2-d generic tim-varying ctrl variables
C     maxCtrlProc  :: number of pre-processing options per ctrl variable

      integer     maxCtrlArr2D
      parameter ( maxCtrlArr2D = 1 )

      integer     maxCtrlArr3D
      parameter ( maxCtrlArr3D = 6 )

      integer     maxCtrlTim2D
      parameter ( maxCtrlTim2D = 8 )

      integer     maxCtrlProc
      parameter ( maxCtrlProc = 3 )

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
