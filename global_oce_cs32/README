
#object: directions to install the global_oce_cs32 and global_oce_llc90 verification experiments

cd MITgcm/verification/ 

cvs co -P -d global_oce_llc90 MITgcm_contrib/verification_other/global_oce_llc90
cvs co -P -d global_oce_cs32 MITgcm_contrib/verification_other/global_oce_cs32

cd global_oce_cs32
ln -s code code_ad
cvs co -P -d input_fields MITgcm_contrib/gael/verification/global_oce_cs32/input_fields
cd ..

cd global_oce_llc90
ln -s code code_ad
cvs co -P -d input_fields MITgcm_contrib/gael/verification/global_oce_llc90/input_fields
cd input_fields
./gunzip_files
cd ..
cd results
ln -s hidden/ou* .
cd ..
cd ..

#history:
#2016/06/17   Gael Forget         README file creation

