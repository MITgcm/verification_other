# MITgcm coupled Ocean - Atmosphere set-up

From David Ferreira (@dfer22), using with pkg/aim_v23 simplified atmospheric physics
with interactive CO2 feedback.

## Description:

Low resolution (cs24) "Double Drake" configuration similar to
[this one](http://wwwcvs.mitgcm.org/viewvc/MITgcm/MITgcm_contrib/dfer/cpl_aim+ocn_fast/)
With ocean biochemistry (pkg/dic) and coupled atmospheric pCO2 concentration
(assuming well mixed atmosphere) including CO2 radiation effect.

## History:
- Original set-up from David Ferreira (2015).

- Updated to MITgcm checkpoint66n code (Jan 2018) after most specific code
  changes were added to main code (pkg/dic, pkg/aim_v23 & coupling pkgs).

- Updated to use latest code (checkpoint68c) in Oct 2021 with reference output
  added in dir "results".

