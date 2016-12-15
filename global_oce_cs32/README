
#object: directions to install the global_oce_cs32 verification experiments

cd MITgcm/verification/ 

cvs co -P -d global_oce_cs32 MITgcm_contrib/verification_other/global_oce_cs32

cd global_oce_cs32

ln -s code code_ad
wget ftp://mit.ecco-group.org/ecco_for_las/version_4/checkpoints/core2_cnyf.tar
tar xf core2_cnyf.tar
\rm -f core2_cnyf.tar

cd ..

#history:
#2016/12/15   Gael Forget         get tar balls from ftp://mit.ecco-group.org rather than http://mitgcm.org
#2016/09/26   Gael Forget         add wget core2_cnyf.tar
#2016/09/26   Gael Forget         remove llc90 related commands
#2016/06/17   Gael Forget         README file creation

