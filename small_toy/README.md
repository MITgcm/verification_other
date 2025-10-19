Example: "Tiny set-up to test time-dependent forcing"
====================================================================

The purpose of this experiment is to provide a fast and extremely simple set-up
to illustrate and test how time-dependent forcing can be specified.
It uses the smallest domain (single grid-cell, overlap size of 1) with everything
turned off except SST relaxation to prescribed target.

### Overview:
This experiment contains 4 set-ups (with corresponding `input[.*]/` dir) that
can be run with the same executable (built from `build/` dir using customized
code from `code/`);
binary input files (all `real*8`) have been generated using matlab script
`gendata.m` from `input` dir.

The prescribed SST target time-series is the sum of a linear warming trend (2.K/yr)
starting at $`0.^oC`$ plus a simplistic seasonal cycle, with only 2 records per year,
alternating -2.K / + 2.K. In all 4 tests, the simulation starts (nIter0=0) 300.days
after the starting point of the SST time-series; this can be interpreted as
starting the simulation at the beginning of the year while SST time-series starts 
on March 01 (NH winter) of the previous year, assuming a 360.days year
("TheCalendar='model'," in `data.cal`).
The relaxation time scale is set to 100.days (8640000.s), either in `data.exf`
(`climsstfile`, `climsstTauRelax`) if using `pkg/exf` ("useEXF=.TRUE.," in `data.pkg`)
or in `data` (`thetaClimFile`, `tauThetaClimRelax`).

The **primary** test, using input files from `input/` dir, use `pkg/exf`
and `pkg/cal`to specify the SST relaxation forcing. Here the SST time-series is
set to start on March 01 of 2000 at 00:00:00 hh:mn:ss (climsststartdate1,2)
while the model run starts at t=0 corresponding January 01, 2001 at 00:00:00 hh:mn:ss
(in `data.cal`, `startDate_1,2`). 

The **secondary** test, using `input.baseTime/` dir, is very similar to the primary test
except that the model run starts (nIter0=0) at t= 360.day (=1.yr) by setting
`baseTime= 31104000.,` in data, PARM03 namelist, and switching the calendar starting
date to  January 01, 2000 at 00:00:00 hh:mn:ss (in `data.cal`, `startDate_1,2`).
Note that identical results can be produced without `pkg/cal` simply by commenting out:
`climsststartdate1,2` and un-commenting: `climsstStartTime = = 5184000.` in `data.exf`.

The **secondary** test, using `input.no_exf/` dir, try to mimic the primary test
without using `pkg/exf` nor `pkg/cal`. This can be achieve by setting
`tauThetaClimRelax`, `thetaClimFile`, `periodicExternalForcing` (to activate time-dependent forcing),
`externForcingPeriod`, and `externForcingCycle` (set to an arbitrary long time) in `data`
and adjusting `baseTime` setting to 390.days to account for the 300.day time delay
between the SST time-series start time in the model starting time plus half of
the `externForcingPeriod` to account for a different convention for default
MITgcm repeating cycle forcing.

The **secondary** test, using `input.ctrl/` dir, is similar to the primary test
except for using pkg/ctrl to provide the relaxation SST time-series as a control adjustment
(`xx_sst.0000000001`) to the model relaxation target SST. The baseline relaxation SST,
before adding the control, is simply set to a time-invariant zero value in
`data.exf` ("climsstfile = 'zero_64b.bin',", "climsstperiod = 0.,").

### Instructions:
Configure and compile the code:

```
  cd build
  ../../../tools/genmake2 -mods ../code [-of my_platform_optionFile]
  make depend
  make
  cd ..
```

To run primary test:

```
  cd run
  ln -s ../input/* .
  ../build/mitgcmuv > output.txt
```

There is comparison output in the directory:

  `results/output.txt`

To run any of secondary `$st` test (`$st` in: `baseTime`, `no_exf`, `ctrl`):

```
  cd run
  rm *
  ln -s ../input.$st/* .
  ln -s ../input/* .
  ../build/mitgcmuv > output.txt
```
There is comparison output in the directory:

  `results/output.$st.txt`

### Notes:
