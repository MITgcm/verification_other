# Introduction

This is the readme.md for `MITgcm_contrib/verification_other/cpl_gray+swamp+ocn` a directory which provides source code and input files for a coupled setup using gray atmospheric physics (O'Gorman and Schneider, JCl, 2008)
plugged into the MITgcm dynamical core, with part of the surface being a slab ocean (swamp or continent) and some being a dynamic ocean. This setup uses a standard cubed-sphere for atmosphere and ocean (6 faces, each 32x32), non-uniform pressure levels in the atmopshere (26), and non-uniform depth levels in the ocean. The code runs on 28 nodes, with 3 being for the ocean (2 faces per node), 24 being for the atmosphere (4 nodes per face), and 1 for coupling.

The code here is for the continental configuration used in Tuckman et al., The Zonal Seasonal Cycle of Tropical Precipitation: Introducing the Indo-Pacific Monsoonal Mode, Journal of Climate, 2024, for the dynamic ocean simulation. However, in the version in this directory, the ocean's vertical resolution is higher and albedo is symmetric.

# Components

This directory consists of:

* `cpl_gray+swamp+ocn/build_atm/`   : directory to build atmospheric component executable
* `cpl_gray+swamp+ocn/code_atm/`    : specific code for atmosphere
* `cpl_gray+swamp+ocn/input_atm/`   : specific input for atmosphere

* `cpl_gray+swamp+ocn/build_ocn/`   : directory to build oceanic component executable
* `cpl_gray+swamp+ocn/code_ocn/`    : specific code for ocean
* `cpl_gray+swamp+ocn/input_ocn/`   : specific input for ocean

* `cpl_gray+swamp+ocn/build_cpl/`   : directory to build coupler executable
* `cpl_gray+swamp+ocn/code_cpl/`    : specific code for coupler
* `cpl_gray+swamp+ocn/input_cpl/`   : specific input for coupler
* `cpl_gray+swamp+ocn/shared_code/` : specific coupling code shared by all 3 components

* `cpl_gray+swamp+ocn/run_dir/`  : Folder where you should run the code

The `runi_dir` folder is where the code will be run and the output will end up. It consists of:

* `cpl_gray+swamp+ocn/run_dir/sgm_run` : Progress tracker
* `cpl_gray+swamp+ocn/run_dir/run_cpl.slurm` : Slurm script to start the run
* `cpl_gray+swamp+ocn/run_dir/rank_0` : The folder which controls the coupling node
* `cpl_gray+swamp+ocn/run_dir/rank_[1-3]` : The folders which control the ocean code. `rank_2` and `rank_3` have soft links to `rank_1`, so if anything is to be changed you only need to change `rank_1`
* `cpl_gray+swamp+ocn/run_dir/rank_[4-28]` : The folders which control the atmosphere code. `rank_[5-28]` have soft links to `rank_4`
* `cpl_gray+swamp+ocn/run_dir/rank_0` : The folder which controls the coupling code
* `cpl_gray+swamp+ocn/run_dir/bin` : The folder which contains the executable for each of the model components. There are currently executables in the folder, but they will need to be replaced with ones that are compiled on the same system on which you plan on running the code
* `cpl_gray+swamp+ocn/run_dir/Output` : The folder which will contain all the output when the code is done running

# Instructions:

Download MITgcm from the MITgcm repository to `$my_base_dir$/MITgcm` and, in `MITgcm` directory,
download `cpl_gray_swamp+ocn` from the `MITgcm/verification_other/` repository.

## Short test run to check:
One could compile and run a very short test (4.h simulated time), using only 3 processors
(one for each component), by running the batch script `MITgcm/tools/run_cpl_test`
following the same instructions as described in `MITgcm/verification/cpl_aim+ocn/README.md`.
This provide a quick way to check that everything is in place for a longer and more meaningful
simulation as described below.

## Preparing the executables:
1. Go to the node on which you will be running the simulation
2. Load the relevant modules (usually intel and openmpi)
3. In each build directory (atm, ocn, and cpl)
	a. `make Clean`
	b. `$my_dir$/MITgcm/tools/genmake2 -mpi -rootdir $my_dir$/MITgcm`
	c. `make depend`
	d. `make`
	e. The resulting executable will be named `mitgcmuv` -- rename it to `mitgcmuv.atm`, `mitgcmuv.ocn`, or `mitgcmuv.cpl`
4. Copy each of the three executables to `cpl_gray+swamp+ocn/run_dir/bin/`

## Changing runtime parameters:

1. Continental configuration
	a. In this setup, the continental configuration is controlled by the `bathymetry.bin`, `wall_S.bin`, and `wall_W.bin` (`rank_1`) for the ocean, and `mixed_layer_depth.bin` for the atmosphere (`rank_4`). All of these are binary files containing 192 X 32 matrices.
	b. The `bathymetry.bin` file represents the ocean depth. For regions that are meant to be a swamp/slab ocean, set this to zero. Otherwise, set it to the ocean depth
	c. The `wall_S.bin` and `wall_W.bin` represent whether ocean flow is prevented from going from the cell in question to the one in the negative y direction (for `wall_S.bin`) or the negative X direction (for `wall_W.bin`). Note that this does not always correspond to Geographic South and West. These walls are used to separate basins from each other and have a large impact on ocean dynamics.
	d. The `mixed_layer_depth.bin` file controls the heat capacity of the ocean in regions without ocean dynamics (i.e., where `bathymetry.bin` has a value of zero). The value corresponds to a depth of water, while the surface heat capacity of that cell (in units of J/m^2 K) will be that height multiplied by the density of water and the specific heat of water at constant pressure.
	e. The `freshwater_balance_weights.bin` file in rank_1 controls how extra water that precipitates over the continent gets distributed over the ocean. This is done as E-P may not be zero over the continent, but we want freshwater to be conserved in the simulation.

2. Diagnostics to output
	a. `rank_4/data.diagnostics` controls the atmosphere output
	b. `rank_1/data.diagnostics` controls the ocean output
	c. See MITgcm documentation for details on how to change these. By default, outputs monthly averages of many relevant variables.
	d. It is possible to change the rate at which diagnostics are output midway through the run. This can be useful if you want higher resolution data for the last few years of the run (i.e., once it's in steady state). In order to do this, create a `data.diagnostics_fast` file in both `rank_1` and `rank_4` to replace `data.diagnostics`. Create links in all the other `rank_*` folders to the appropriate one. Then, uncomment the relevant lines (175-181) in `run_cpl.slurm`. The `FastDiagnosticsNumber` variable controls after how many runs it switches to the new file.

3. sgm_run
	a. sgm_run is the progress tracker. The first number is the number of iterations that have finished, the second number is the total number that will be run

4. run_cpl.slurm
	a. The slurm script to submit the job
	b. Several options here (e.g., partition) will have to be changed depending on the cluster
	c. The current configuration is meant to be run on 28 nodes (3 for ocean, 24 for atmosphere, 1 for coupling)
	d. Make sure the run directory is what you want it to be.

## Final checks and running
1. Make sure all files in `rank_2` and `rank_3` match those in `rank_1`. Make sure all files in `rank_[5-28]` match those in `rank_4`. It is recommended to do this through symbolic links so any changes to `rank_1` or `rank_4` do the same thing in all other ranks. This should be currently set up
2. `sbatch run_cpl.slurm` to begin the run

## Accessing Output:

After the simulation has run, there will be four folders in `run_dir/Output`, one each for the atmosphere and ocean and output (`mnc_atm` and `mnc_ocn`) and pickup files (`pick_atm` and `pick_ocn`). In the `mnc` folders, there will be `Surface` and `Fields` output files for each time segment of the simulation run, labeled with the iteration number on which the time segment began and the `rank` folder and the tile that ran the code. There are 24 for the atmosphere, and 6 for the ocean. These can be consolidated with the `rdmnc` function in the `utils` folder of the base MITgcm directory.

--------------

