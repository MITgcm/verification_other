## MITgcm verification_other

Additional set of experiments to complement main set of regression tests
(from [MITgcm/verification](https://github.com/MITgcm/MITgcm/tree/master/verification)
see README there)

### Requirements:
In order to compile and run any experiments here,
a current copy (clone) of the main [MITgcm](https://mitgcm.org) code is needed.
It is recommended to download a clone of this current repository inside
a main [MITgcm](https://github.com/MITgcm/MITgcm) clone:
```
   > git clone git@github.com:MITgcm/MITgcm.git
   > cd MITgcm
   > git clone git@github.com:MITgcm/verification_other.git
```
This way `verification_other` and `verification` directories are at the same level in the tree,
so that relative paths work the same way for this additional set of experiments as
they do in `verification`, allowing to use, e.g., `testreport`:
```
   > cd verification_other
   > ../verification/testreport -of [my_optfile] -t offline_cheapaml
```

## List of maintained experiments
  1. atm_gray_ll : use gray atmospheric physics (`pkg/atm_phys`) on Lat-Lon grid, 25 levels
     with uniform $\Delta P$, with prescribed SST.
  2. atm_strato  : use gray atmospheric physics (`pkg/atm_phys`) on cube-sphere `cs32` grid,
     with better vertical resolution near the top (total 40 levels) and prescribed Ozone
     to represent the stratosphere.
  3. cpl_aqua_cs24 : coupled AIM - ocean set-up on cubed-sphere `cs24` grid with interactive
     CO<sub>2</sub> feedback.
  4. cpl_gray+ocn  : coupled gray atmosphere - ocean set-up on cubed-sphere `cs32` grid
  5. cpl_gray+swamp+ocn : coupled gray atmosphere - swamp and ocean set-up on cubed-sphere `cs32` grid
  6. global_ocean.gm_k3d : coarse global ocean (at $4^o$) using Bates etal (2014) (`GM_useBatesK3d`) 3-d K
  7. global_ocean.gm_res : similar to `gm_k3d` above in a Residual Mean formulation (`GM_InMomAsStress`)
  8. global_oce_llc90  : ECCO-v4 (release 1) set-ups
  9. global_oce_cs32   : low-resolution version of ECCO-v4 (release 1), on cs32 grid
 10. offline_cheapaml  : simple passive ocean test with cheapAML (`pkg/cheapaml`) and seaice,
     both thermodynamics (`pkg/thsice`) and with seace dynamics (secondary test `input.dyn`).
 11. shelfice_remeshing : simple test with `pkg/streamice` and evolving shelf-ice geometry
     (`pkg/shelfice`, `SHELFICEremeshFrequency > 0`)

## Unsupported old set-up
  - global1x1_tot  : old ECCO (version 1 or 2 ?) set-up (no Bulk-Formulae)
  - global2x2_tot  : coarser version of old ECCO set-up
  - lab_sea        :  old Adjoint set-up derived from verification exp. lab_sea
  - natl_box_adjoint : old Adjoint set-up derived from verification exp. nalt_box
                       (lab_sea/input.natl_box)

