
#object: directions to install the global_oce_llc90 verification experiments

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

#history:
#2018/11/14   Gael Forget         use https://github.com/MITgcm/verification_other instead of old MITgcm_contrib
#2016/12/15   Gael Forget         get tar balls from ftp://mit.ecco-group.org rather than http://mitgcm.org
#2016/09/26   Gael Forget         mv global_oce_input_fields to input_verifs inside global_oce_llc90
#2016/09/26   Gael Forget         add wget core2_cnyf.tar
#2016/09/26   Gael Forget         remove cs32 related commands
#2016/09/26   Gael Forget         remove hidden related commands
#2016/06/17   Gael Forget         README file creation

