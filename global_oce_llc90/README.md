
#install `global_oce_llc90` experiments:

```
git clone https://github.com/MITgcm/verification_other
mv verification_other MITgcm/

cd MITgcm/verification_other/global_oce_llc90

###[begin; stuff below should also be rellocated]

ln -s code code_ad

cvs co -P -d input_fields MITgcm_contrib/gael/verification/ECCO_v4_r2/input_fields

cd input_fields
./gunzip_files
cd ..

wget ftp://mit.ecco-group.org/ecco_for_las/version_4/checkpoints/global_oce_input_fields.tar.gz
gunzip global_oce_input_fields.tar.gz
tar xf global_oce_input_fields.tar
\rm -f global_oce_input_fields.tar

mv global_oce_input_fields/* input_verifs
rmdir global_oce_input_fields

wget ftp://mit.ecco-group.org/ecco_for_las/version_4/checkpoints/core2_cnyf.tar
tar xf core2_cnyf.tar
\rm -f core2_cnyf.tar

mv core2_cnyf input_verifs/.

###[end; stuff above should also be rellocated]

cd ../../..

cd MITgcm/verification
ln -s ../verification_other/global_oce_llc90 .

```

#README file history:

- `2018/11/14` (GF) use [verification_other](https://github.com/MITgcm/verification_other) instead of old [MITgcm_contrib](http://wwwcvs.mitgcm.org/viewvc/MITgcm/MITgcm_contrib/verification_other/)
- `2016/12/15` (GF) [ECCO ftp](ftp://mit.ecco-group.org) rather than `MITgcm_contrib`
- `2016/09/26` (GF) mv `global_oce_input_fields` to `global_oce_llc90/input_verifs`
- `2016/09/26` (GF) add `wget core2_cnyf.tar`
- `2016/09/26` (GF) remove cs32 related commands
- `2016/09/26` (GF) remove hidden related commands
- `2016/06/17` (GF) README file creation

