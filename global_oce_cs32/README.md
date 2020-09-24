
# install `global_oce_cs32/`experiments:

```
cd MITgcm/
git clone https://github.com/MITgcm/verification_other

cd verification_other/global_oce_cs32
wget ftp://mit.ecco-group.org/ecco_for_las/version_4/checkpoints/core2_cnyf.tar
tar xf core2_cnyf.tar
\rm -f core2_cnyf.tar

ln -s ../verification_other/global_oce_cs32 .
```
# run the generic integral function test case

This verification experiment also contains a test of the [generic integral function](https://mitgcm.readthedocs.io/en/latest/ocean_state_est/ocean_state_est.html#generic-integral-function). To set up and run the generic integral function test, after following the steps above and after [compiling the MITgcm executable](https://mitgcm.readthedocs.io/en/latest/getting_started/getting_started.html#building-the-model) (presumably located at `build/mitgcmuv_ad`), carry out the following steps:

```
cd run/
ln -s ../build/mitgcmuv_ad
ln -s ../input_ad.sens/* .
ln -s ../input_ad/* .
ln -s ../input/* .
ln -s ../core2_cnyf/* .
ln -s ../input_fields/* .
```
Now one should be able to [run the experiment](https://mitgcm.readthedocs.io/en/latest/getting_started/getting_started.html#running-the-model). Note that the `ln` command as executed above does not overwrite old links, so it will produce some errors related to not being able to overwrite old files. These errors can be ignored.  


# README file history:

- `2020/09/24` (DJ) add commands for executing the [generic integral function test case](https://mitgcm.readthedocs.io/en/latest/ocean_state_est/ocean_state_est.html#generic-integral-function)
- `2018/12/10` (GF) simplify directions (cd, mv, etc.)
- `2018/11/14` (GF) use [verification_other](https://github.com/MITgcm/verification_other) instead of old [MITgcm_contrib](http://wwwcvs.mitgcm.org/viewvc/MITgcm/MITgcm_contrib/verification_other/)
- `2016/12/15` (GF) get tar files from [ECCO ftp](ftp://mit.ecco-group.org) rather than `MITgcm_contrib`
- `2016/09/26` (GF) add `wget core2_cnyf.tar`
- `2016/09/26` (GF) remove llc90 related commands
- `2016/06/17` (GF) README file creation

