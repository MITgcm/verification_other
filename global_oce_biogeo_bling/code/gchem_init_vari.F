C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_biogeo_bling/code/Attic/gchem_init_vari.F,v 1.3 2016/02/28 21:48:37 mmazloff Exp $
C $Name:  $

#include "GCHEM_OPTIONS.h"
#ifdef ALLOW_DARWIN
#include "DARWIN_OPTIONS.h"
#endif
#ifdef ALLOW_DIC
#include "DIC_OPTIONS.h"
#endif
#ifdef ALLOW_BLING
#include "BLING_OPTIONS.h"
#endif

C !INTERFACE: ==========================================================
      SUBROUTINE GCHEM_INIT_VARI(myThid )

C !DESCRIPTION:
C calls subroutines that initialize any time dependent variables
C for any tracer experiment

C !USES: ===============================================================
      IMPLICIT NONE
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "GCHEM.h"
#ifdef ALLOW_AUTODIFF_TAMC
# include "GRID.h"
# include "DYNVARS.h"
#endif /* ALLOW_AUTODIFF_TAMC */

C !INPUT PARAMETERS: ===================================================
C  myThid               :: thread number
      INTEGER myThid
CEOP


#ifdef ALLOW_GCHEM

ccccccccccccccccccccccccccc
c initialize parameters   c
ccccccccccccccccccccccccccc
#ifdef ALLOW_DIC
# ifndef ALLOW_AUTODIFF_TAMC
      IF ( useDIC ) THEN
# endif
         CALL DIC_INIT_VARIA(myThid)
         CALL DIC_INI_FORCING(myThid)
         CALL DIC_SURFFORCING_INIT(myThid)
         CALL DIC_BIOTIC_INIT(myThid)
# ifndef ALLOW_AUTODIFF_TAMC
      ENDIF
# endif
# ifdef ALLOW_CTRL
      CALL DIC_SET_CONTROL(myThid)
# endif
#endif /* ALLOW_DIC */

#ifdef ALLOW_BLING
# ifndef ALLOW_AUTODIFF_TAMC
      IF ( useBLING ) THEN
# endif
         CALL BLING_INIT_VARIA(myThid)
         CALL BLING_INI_FORCING(myThid)
         CALL BLING_CARBONATE_INIT(myThid)
# ifndef ALLOW_AUTODIFF_TAMC
      ENDIF
# endif
#endif /* ALLOW_BLING */

#ifdef ALLOW_DARWIN
      IF ( useDARWIN ) THEN
         call DARWIN_INIT_VARI(myThid )
#ifdef ALLOW_CARBON
         CALL DIC_SURFFORCING_INIT(myThid)
         CALL DIC_DIAGS_INIT(myThid)
#endif
      ENDIF
#endif
#endif /* ALLOW_GCHEM */

      RETURN
      END
