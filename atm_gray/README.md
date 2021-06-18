# `verification_other/atm_gray/`

Provide source code and input files for 3 simple sep-up,
 using gray atmospheric physics [O'Gorman and Schneider, JCl, 2008](http://doi.org/10.1175/2007JCLI2065.1)
ported to `MITgcm` dynamical core (see package `atm_phys`).

_Note: Initially (before addition of `pkg/atm_phys` on `2013/05/08`) this was using
 modified (and original) `mypackage` source code and atmospheric gray physics
 code in `atm_gray/code_gray/`._

### 1) standard cubed-sphere set-up 

Uses 6 faces 32x32, 26 levels, non uniform deltaP.

- `atm_gray/code/`   : specific code 
  
Primary set-up uses 10m mixed layer depth with evolving SST (including a Q-flux)
      + damping of stratospheric winds ; starts @ t= 1.yr from pickup files.
   
- `atm_gray/input/`  : input files (+ uses script `prepare_run` in input)
- `atm_gray/results/output.txt` : standard output of a short reference run
 
Secondary set-up (using same executable) uses fixed SST (APE) and improved radiation code from Ruth Geen.
 
- `atm_gray/inputu.ape/`  : specific input files (remaining files from dir input)
- `atm_gray/results/output.ape.txt` : secondary output of a short reference run

### 2) simplified cubed-sphere set-up

Uses 6 faces 32x32, 25 levels, deltaP = 40.mb with fixed (prescribed) SST.

- `atm_gray/code_cs/` : specific code
- `atm_gray/inp_cs/`  : input files (+ uses script "prepare_run" in inp_cs)
- `atm_gray/results/output.cs.txt` : standard output of a short reference run

### 3) lat-lon grid set-up

Uses 128x64 horizontal grid, 25 levels, 2.8 x 2.8 degree, deltaP = 40.mb

- `atm_gray/code_ll/` : specific code
- `atm_gray/inp_ll/`  : input files
- `atm_gray/results/output.ll.txt` : standard output of a short reference run

## Instructions

Download `MITgcm` itself and then the `atm_gray` set-up in `verification_other/`.

```
git clone https://github.com/MITgcm/MITgcm
git clone https://github.com/MITgcm/verification_other
mv verification_other MITgcm
```

### To build and run the 1rst (standard) `cs32` set-up:

```
cd atm_gray/build
# if done after a previous build: 
# make Clean
../../../tools/genmake2 -mods ../code -of ../../../tools/build_options/[Selected-Option-File]
make depend
make

cd ../run
# if done after a previous run, clean-up all files
ln -s ../input/* .
../input/prepare_run
ln -s ../build/mitgcmuv .
mitgcmuv > output.txt
```

The `output.txt` file, once completed, can be compared with `atm_gray/results/output.txt`

### To build and run the 2nd (simplified) `cs32` set-up:

```
cd atm_gray/build
# if done after a previous build: 
# make Clean
../../../tools/genmake2 -mods ../code_cs -of ../../../tools/build_options/[Selected-Option-File]
make depend
make

cd ../run
# if done after a previous run, clean-up all files
ln -s ../inp_cs/* .
../inp_cs/prepare_run
ln -s ../build/mitgcmuv .
mitgcmuv > output.txt
```

The `output.txt` file, once completed, can be compared with `atm_gray/results/output.cs.txt`

### To build and run the 3rd, `Lat-Lon` set-up:

```
cd atm_gray/build
# if done after a previous build:
# make Clean
../../../tools/genmake2 -mods ../code_ll -of ../../../tools/build_options/[Selected-Option-File]
make depend
make

cd ../run
# if done after a previous run, clean-up all files
ln -s ../inp_ll/* .
ln -s ../build/mitgcmuv .
mitgcmuv > output.txt
```

The `output.txt` file, once completed, can be compared with `atm_gray/results/output.ll.txt`

