C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_biogeo_bling/code_ad/BLING_OPTIONS.h,v 1.1 2014/06/05 21:41:20 mmazloff Exp $
C $Name:  $

#ifndef BLING_OPTIONS_H
#define BLING_OPTIONS_H
#include "PACKAGES_CONFIG.h"
#include "CPP_OPTIONS.h"

#ifdef ALLOW_BLING
C     Package-specific Options & Macros go here

c Use nitrate instead of phosphate as macro-nutrient
#undef  NITROGEN_CURRENCY

c Prevents negative values in nutrient fields
c (note: if defined causes recomputations)
#undef  BLING_NO_NEG

c Replace Liebig nutrient limitation function by 
c the product of macro- and micro-nutrient limitations
#undef  MULT_NUT_LIM

c Assume that phytoplankton in the mixed layer experience
c the average light over the mixed layer
c (as in original BLING model)
#undef  ML_MEAN_LIGHT

c Determine PAR from shortwave radiation from EXF package
#undef  USE_EXFQSW

c Read atmospheric pCO2 values from EXF package
c *** requires modifications to pkg/exf, not checked in yet ***
c #undef  USE_EXFPCO2

c Simplify some parts of the code that are problematic 
c when using the adjoint
#define BLING_ADJOINT_SAFE

#endif /* ALLOW_BLING */
#endif /* BLING_OPTIONS_H */

CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
