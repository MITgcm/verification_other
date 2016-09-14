To make this work copy to your mitgcm/verification folder and then:

1) Compile with TAF in build_ad
E.G.
../../../tools/genmake2 -mods ../code_ad -of ../../../tools/build_options/linux_amd64_gfortran -adof ../../../tools/adjoint_options /adjoint_default 

2) The cd ../run_ad
cp ../../../verification/tutorial_global_oce_biogeo/input/*bin .
cp ../input/*bin .
cp ../input_ad/* .
cp ../build_ad/mitgcmuv_ad .

3) RUN IT!
./mitgcmuv_ad




