C $Header: /u/gcmpack/MITgcm_contrib/verification_other/global_oce_llc90/code/SEAICE_OPTIONS.h,v 1.1 2012/10/03 20:27:37 gforget Exp $
C $Name:  $

C     *==========================================================*
C     | SEAICE_OPTIONS.h
C     | o CPP options file for sea ice package.
C     *==========================================================*
C     | Use this file for selecting options within the sea ice
C     | package.
C     *==========================================================*

#ifndef SEAICE_OPTIONS_H
#define SEAICE_OPTIONS_H
#include "PACKAGES_CONFIG.h"
#include "CPP_OPTIONS.h"

#ifdef ALLOW_SEAICE
C     Package-specific Options & Macros go here

C--   Write "text-plots" of certain fields in STDOUT for debugging.
#undef SEAICE_DEBUG

C--   Allow sea-ice dynamic code.
C     This option is provided to allow use of TAMC
C     on the thermodynamics component of the code only.
C     Sea-ice dynamics can also be turned off at runtime
C     using variable SEAICEuseDYNAMICS.
#define SEAICE_ALLOW_DYNAMICS

C--   By default, the sea-ice package uses its own integrated bulk
C     formulae to compute fluxes (fu, fv, EmPmR, Qnet, and Qsw) over
C     open-ocean.  When this flag is set, these variables are computed
C     in a separate external package, for example, pkg/exf, and then
C     modified for sea-ice effects by pkg/seaice.
#define SEAICE_EXTERNAL_FLUXES

C--   The actual number of ice categories used to solve for seaice flux is
C     now a run-time parameter (SEAICE_multDim).
C     This CPP-flag will be completely removed soon (no longer in main code);
C     it is just used to set default number of categories, i.e., =1 if undef,
C     or =MULTDIM if defined (MULTDIM=7 in default SEAICE_SIZE.h).
C     Note: be aware of pickup_seaice.* compatibility issues when restarting
C     a simulation with a different number of categories.
c#define SEAICE_MULTICATEGORY

C--   Use the Old version of seaice_growth (close to cvs version 1.70)
C     otherwise, use the merged version (with some of Ian Fenty s code)
#undef SEAICE_GROWTH_LEGACY

C--   Since the missing sublimation term is now included
C     this flag is needed for backward compatibility
#undef SEAICE_DISABLE_SUBLIM

C--   Suspected missing term in coupled ocn-ice heat budget (to be confirmed)
#undef SEAICE_DISABLE_HEATCONSFIX

C--   Default is constant seaice salinity (SEAICE_salt0); Define the following
C     flag to consider (space & time) variable salinity: advected and forming
C     seaice with a fraction (=SEAICE_saltFrac) of freezing seawater salinity.
C- Note: SItracer also offers an alternative way to handle variable salinity.
#undef SEAICE_VARIABLE_SALINITY

C--   Tracers of ice and/or ice cover.
#undef ALLOW_SITRACER
#ifdef ALLOW_SITRACER
C--   To try avoid 'spontaneous generation' of tracer maxima by advdiff.
# define ALLOW_SITRACER_ADVCAP
#endif

C--   By default the seaice model is discretized on a B-Grid (for
C     historical reasons). Define the following flag to use a new
C     (not thoroughly) test version on a C-grid
#define SEAICE_CGRID

C--   Only for the C-grid version it is possible to
#ifdef SEAICE_CGRID
C     enable EVP code by defining the following flag
# define SEAICE_ALLOW_EVP
# ifdef SEAICE_ALLOW_EVP
C--   When set use SEAICE_zetaMin and SEAICE_evpDampC to limit viscosities
C     from below and above in seaice_evp: not necessary, and not recommended
#  undef SEAICE_ALLOW_CLIPZETA
# endif /* SEAICE_ALLOW_EVP */
C     allow the truncated ellipse rheology (runtime flag SEAICEuseTEM)
# undef SEAICE_ALLOW_TEM
#else /* not SEAICE_CGRID, but old B-grid */
C--   By default for B-grid dynamics solver wind stress under sea-ice is
C     set to the same value as it would be if there was no sea-ice.
C     Define following CPP flag for B-grid ice-ocean stress coupling.
# define SEAICE_BICE_STRESS

C--   By default for B-grid dynamics solver surface tilt is obtained
C     indirectly via geostrophic velocities. Define following CPP
C     in order to use ETAN instead.
# define EXPLICIT_SSH_SLOPE
C--   Defining this flag turns on FV-discretization of the B-grid LSOR solver.
C     It is smoother and includes all metric terms, similar to C-grid solvers.
C     It is here for completeness, but its usefulness is unclear.
# undef SEAICE_LSRBNEW
#endif /* SEAICE_CGRID */

C--   When set use MAX_HEFF to cap seaice thickness in seaice_growth;
C     currently only relevant for SEAICE_GROWTH_LEGACY
#undef SEAICE_CAP_HEFF
C--   When set limit the Ice-Loading to mass of 1/5 of Surface ocean grid-box
#undef SEAICE_CAP_ICELOAD
C--   When set use SEAICE_clipVelocties = .true., to clip U/VICE at 40cm/s,
C     not recommended
#define SEAICE_ALLOW_CLIPVELS
C--   When set cap the sublimation latent heat flux in solve4temp according
C     to the available amount of ice+snow. Otherwise this term is treated
C     like all of the others -- residuals heat and fw stocks are passed to
C     the ocean at the end of seaice_growth in a conservative manner.
C     SEAICE_CAP_SUBLIM is not needed as of now, but kept just in case.
#undef SEAICE_CAP_SUBLIM

C--   Enable free drift code
#define SEAICE_ALLOW_FREEDRIFT

C--   enforce cfl condition without cuting sensitivity flow
c#define ALLOW_CFL_FIX

C--   cut the adjoint dependency to hactual, etc.
c# undef SEAICE_SIMPLIFY_GROWTH_ADJ

C--   go through heff and open ocean
c#define SEAICE_MODIFY_GROWTH_ADJ

#endif /* ALLOW_SEAICE */
#endif /* SEAICE_OPTIONS_H */

CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
