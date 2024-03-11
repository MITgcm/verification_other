# MITgcm coupled Ocean - Atmosphere set-up

From David Ferreira (@dfer22), using with pkg/aim_v23 simplified atmospheric physics
with interactive CO<sub>2</sub> feedback.

## Description:

Low resolution (cs24) "Double Drake" configuration similar to
Ferreira *etal*, J. Climate, [2010](https://doi.org/10.1175/2009JCLI3197.1),
with ocean biochemistry (pkg/dic) and coupled atmospheric pCO<sub>2</sub> concentration
(assuming well mixed atmosphere) including CO<sub>2</sub> radiation effect
(calibration of CO2-ALBCO2 relationship from Alexandre Pohl).

This coupled atmospheric CO<sub>2</sub>-biogeochemistry model was used in
- Ferreira *etal*, GRL, [2018](https://doi.org/10.1029/2018GL077019),
where the atmospheric CO2 is passive (no radiative effect)
-  Zhu and Rose,  J. Climate, [2022](https://doi.org/10.1175/JCLI-D-21-0984.1),
which uses a radiatively active CO<sub>2</sub>

## History:
- Original set-up from David Ferreira (2015), derived from
  [this set-up](http://wwwcvs.mitgcm.org/viewvc/MITgcm/MITgcm_contrib/dfer/cpl_aim+ocn_fast/).

- Updated to MITgcm checkpoint66n code (Jan 2018) after most specific code
  changes were added to main code (pkg/dic, pkg/aim_v23 & coupling pkgs).

- Updated to use latest code (checkpoint68c) in Oct 2021 with reference output
  added in dir "results".


### Instructions:
To clean everything:
```
  ../../tools/run_cpl_test 0
```

Configure and compile, e.g., using gfortran optfile:
```
  ../../tools/run_cpl_test 1 -of ../../tools/build_options/linux_amd64_gfortran
```

To run:
```
  ../../tools/run_cpl_test 2
  ../../tools/run_cpl_test 3
```
Step 2 above copies input files and directories, step 3 runs the coupled model.

Results are written in rank_{0,1,2} dir, for coupler, ocean and atmos comp. respectively

There is comparison output in the directory:<br>
 *results/atmSTDOUT.0000* & *results/ocnSTDOUT.0000*<br>

Note:<br>
To check the results, monitor output could be compared to reference (in results/) using "run_cpl_test".<br>
```
  ../../tools/run_cpl_test 4
```
but this requires, in your path, a simple comparison script "comp_res"
which is not provided here but could be found
[here](http://wwwcvs.mitgcm.org/viewvc/MITgcm/MITgcm_contrib/jmc_script/) along with some other files found in this archive.
