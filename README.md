## MITgcm verification_other

Additional set of experiments to complement main set of regression tests 
(from [MITgcm/verification](https://github.com/MITgcm/MITgcm/tree/master/verification)
see README there) 

### Requirements:
In order to compile and run any experiments here, 
a current copy (clone) of the main [MITgcm](https://mitgcm.org) code is needed.
It is recommanded to download a clone of this repository within 
a main [MITgcm](https://github.com/MITgcm/MITgcm) http://mitgcm.org) clone:
```
   > git clone git@github.com:MITgcm/MITgcm.git
   > cd MITgcm
   > git clone git@github.com:MITgcm/verification_other.git
```
This way `verification_other` and `verification` directories are at the same level in the tree,
so that relative paths work the same way for this additional set of experiments as 
they do in `verifiation`, allowing to use, e.g., `testreport`:
```
   > cd verification_other
   > ../verification/testreport -of [my_optfile] -t offline_cheapaml
```

## List of maintained experiments
  1. atm_gray/   --> atm_gray_ll
  2. atm_strato/
  3. cpl_gray+ocn/
  4. global_ocean.gm_k3d/
  5. global_ocean.gm_res/
  6. global_oce_cs32/
  7. global_oce_llc90/
  8. offline_cheapaml/
  9. shelfice_remeshing/
 10. shelfice_remesh_vrm/

## Unsupported old set-up
  - global1x1_tot/  ECCO version 2 ?
  - global2x2_tot/  ECCO version 1 ?
  - lab_sea/        old Adjoint set-up derived from verification exp. lab_sea
  - natl_box_adjoint/ old Adjoint set-up derived from verification exp. nalt_box (lab_sea/input.natl_box)

