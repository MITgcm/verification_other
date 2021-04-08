# install `global_oce_cs32/`experiments:

```
cd MITgcm/
git clone https://github.com/MITgcm/verification_other

cd verification_other/global_oce_cs32
wget ftp://mit.ecco-group.org/ecco_for_las/version_4/checkpoints/core2_cnyf.tar
tar xf core2_cnyf.tar
# in case you want to save some space:
#rm core2_cnyf.tar
```

# compile the code
### compiling for forward simuations

The following steps are basically what `../verification/testreport -t global_oce_cs32` does if executed in directory `verification_other`.

```
cd build
 ../../../tools/genmake2 -mods ../code -of your_build_options_file [other options, e.g. -nocat4ad]
make CLEAN
make depend
make

```

The final `make` command will build `mitgcmuv` for forward integrations.

### AD-compilation
[Note that building the AD-executable requires access to [TAF](http://www.fastopt.de) licensed sofware.]

The same Makefile can be used to generate the AD-executable so that, either after `make depend` step above,
or after `make`:

```
cd build
make adall

```

The `make adall` command will build `mitgcmuv_ad` for adjoint integrations.

# run the experiments

### forward experiment

The following lines exempify the general instruction found in the [online-manual](https://mitgcm.readthedocs.io/en/latest/examples/examples.html#mitgcm-tutorial-example-experiments). Here we assume that `mitgcmuv` has been built and resides in `build`:

```
cd run ; rm -f *
ln -s ../build/mitgcmuv
ln -s ../input/* .
../input/prepare_run
```
Run the model with:

```
./mitgcmuv > output.txt
```


### AD experiments: the generic integral function test case

This verification experiment also contains a test of the [generic integral function](https://mitgcm.readthedocs.io/en/latest/ocean_state_est/ocean_state_est.html#generic-integral-function). To set up and run the generic integral function test, after following the steps above and after [compiling the MITgcm executable](https://mitgcm.readthedocs.io/en/latest/getting_started/getting_started.html#building-the-model) (presumably located at `build/mitgcmuv_ad`), carry out the following steps:

```
cd run ; rm -f *
ln -s ../build/mitgcmuv_ad
ln -s ../input_ad/* .
../input_ad/prepare_run
```
or similarly for the second AD experiment:

```
cd run ; rm -f *
ln -s ../build/mitgcmuv_ad
ln -s ../input_ad.sens/* .
../input_ad.sens/prepare_run
ln -s ../input_ad/* .
../input_ad/prepare_run
```

Note that the `ln` command as executed above does not overwrite old links, so it will produce some errors related to not being able to overwrite old files. These errors can be ignored.

Now one should be able to [run the AD experiment](https://mitgcm.readthedocs.io/en/latest/getting_started/getting_started.html#running-the-model).

```
./mitgcmuv_ad > output_adm.txt
```

# README file history:

- `2020/09/24` (DJ) add commands for executing the [generic integral function test case](https://mitgcm.readthedocs.io/en/latest/ocean_state_est/ocean_state_est.html#generic-integral-function)
- `2018/12/10` (GF) simplify directions (cd, mv, etc.)
- `2018/11/14` (GF) use [verification_other](https://github.com/MITgcm/verification_other) instead of old [MITgcm_contrib](http://wwwcvs.mitgcm.org/viewvc/MITgcm/MITgcm_contrib/verification_other/)
- `2016/12/15` (GF) get tar files from [ECCO ftp](ftp://mit.ecco-group.org) rather than `MITgcm_contrib`
- `2016/09/26` (GF) add `wget core2_cnyf.tar`
- `2016/09/26` (GF) remove llc90 related commands
- `2016/06/17` (GF) README file creation
