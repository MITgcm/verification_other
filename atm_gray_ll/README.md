## `verification_other/atm_gray_ll/`

Provide source code and input files for a simple sep-up,
 using gray atmospheric physics [O'Gorman and Schneider, JCl, 2008](http://doi.org/10.1175/2007JCLI2065.1)
inside `MITgcm` dynamical core (see package `atm_phys`).

### History:
Initially (before addition of `pkg/atm_phys` on `2013/05/08`) this was using
 modified (and original) `mypackage` source code and atmospheric gray physics
 code in `atm_gray/code_gray/` ; this has now been replaced by `pkg/atm_phys`.

In February 2025, as main set-up (26.levels on CS-32 grid) got moved into MITgcm/verification
(PR https://github.com/MITgcm/MITgcm/pull/883), a new/renamed test-experiments "atm_gray_ll"
was made from the lat-Lon `atm_gray` set-up (previously `atm_gray/code_ll`, `atm_gray/inp_ll`).

### Overview

Uses 128x64 horizontal, lat-lon grid, 2.8 x 2.8 degree, and 25 vertical levels with uniform deltaP = 40.mb

- `atm_gray_ll/code/` : specific code
- `atm_gray_ll/input/`: input files
- `atm_gray_ll/results/output.txt` : standard output of a short reference run

## Instructions

Download `MITgcm` itself and then, in MITgcm directory, download a clone of this current repository
so that `verification_other` and `verification` will be at the same level in the directory tree:

```
  git clone git@github.com:MITgcm/MITgcm.git
  cd MITgcm
  git clone git@github.com:MITgcm/verification_other.git
  cd verification_other
```

### Quick way to build and run this test experiment, using `testreport`:

```
../verification/testreport -of ../tools/build_options/[Selected-Option-File] -t atm_gray_ll
```
If run successfully, the results (`output.txt` file) will be compared with rerefence output
`atm_gray_ll/results/output.txt`

### To build this test experiment executable:
```
  cd atm_gray_ll/build
  # if done after a previous built, do "make Clean" first
  ../../../tools/genmake2 -mods ../code -of ../../../tools/build_options/[Selected-Option-File]
  make depend
  make
```

### To run this simple set-up:
```
  cd ../run
  # if done after a previous run, clean-up all files: "/bin/rm -f *"
  ln -s ../input/* .
  ln -s ../build/mitgcmuv .
  mitgcmuv >& output.txt
```
The `output.txt` file, once completed, can be compared with `atm_gray_ll/results/output.txt`

### Notes:
There are special compiler options inside `build/genmake_local` to allow to compile
some of the files from `pkg/atm_phy` ; this requires to provide explicitly an optfile
to the `genmake2` command.

