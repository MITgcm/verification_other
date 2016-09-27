
#object: directions to install the global_oce_cs32 verification experiments

cd MITgcm/verification/ 

cvs co -P -d global_oce_cs32 MITgcm_contrib/verification_other/global_oce_cs32

cd global_oce_cs32

ln -s code code_ad
cvs co -P -d input_fields MITgcm_contrib/gael/verification/global_oce_cs32/input_fields
wget http://mitgcm.org/~gforget/core2_cnyf.tar
tar xf core2_cnyf.tar
\rm -f core2_cnyf.tar

cd ..

#history:
#2016/09/26   Gael Forget         add wget core2_cnyf.tar
#2016/09/26   Gael Forget         remove llc90 related commands
#2016/06/17   Gael Forget         README file creation

