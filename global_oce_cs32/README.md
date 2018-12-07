
#install `global_oce_cs32/`experiments:

```
git clone https://github.com/MITgcm/verification_other
mv verification_other MITgcm/

cd MITgcm/verification_other/global_oce_cs32
ln -s code code_ad
wget ftp://mit.ecco-group.org/ecco_for_las/version_4/checkpoints/core2_cnyf.tar
tar xf core2_cnyf.tar
\rm -f core2_cnyf.tar
cd ../../..

cd MITgcm/verification
ln -s ../verification_other/global_oce_cs32 .
```

#README file history:

- `2018/11/14` (GF) use [verification_other](https://github.com/MITgcm/verification_other) instead of old [MITgcm_contrib](http://wwwcvs.mitgcm.org/viewvc/MITgcm/MITgcm_contrib/verification_other/)
- `2016/12/15` (GF) get tar files from [ECCO ftp](ftp://mit.ecco-group.org) rather than `MITgcm_contrib`
- `2016/09/26` (GF) add `wget core2_cnyf.tar`
- `2016/09/26` (GF) remove llc90 related commands
- `2016/06/17` (GF) README file creation

