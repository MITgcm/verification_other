
#object: directions to install the global_oce_llc90 verification experiments

cd MITgcm/verification/ 

cvs co -P -d global_oce_llc90 MITgcm_contrib/verification_other/global_oce_llc90

cd global_oce_llc90

ln -s code code_ad

cvs co -P -d input_fields MITgcm_contrib/gael/verification/ECCO_v4_r2/input_fields

cd input_fields
./gunzip_files
cd ..

wget http://mitgcm.org/~gforget/global_oce_input_fields.tar.gz
gunzip global_oce_input_fields.tar.gz
tar xf global_oce_input_fields.tar
\rm -f global_oce_input_fields.tar

mv global_oce_input_fields input_verifs

wget http://mitgcm.org/~gforget/core2_cnyf.tar
tar xf core2_cnyf.tar
\rm -f core2_cnyf.tar

mv core2_cnyf input_verifs/.

cd ..

#history:
#2016/09/26   Gael Forget         mv global_oce_input_fields to input_verifs inside global_oce_llc90
#2016/09/26   Gael Forget         add wget core2_cnyf.tar
#2016/09/26   Gael Forget         remove cs32 related commands
#2016/09/26   Gael Forget         remove hidden related commands
#2016/06/17   Gael Forget         README file creation

