
gcmfaces_global;
grid_load('../run/',6,'compact');

mskW=convert2gcmfaces(mygrid.LATS_MASKS(100).mskWedge);
mskS=convert2gcmfaces(mygrid.LATS_MASKS(100).mskSedge);
mskW(isnan(mskW))=0;
mskS(isnan(mskS))=0;
write2file('some_maskW',mskW);
write2file('some_maskS',mskS);

msk=convert2gcmfaces(mygrid.mskC);
msk(isnan(msk))=0;
write2file('some_maskC',msk);

msk=convert2gcmfaces(mygrid.mskC(:,:,1));
msk(isnan(msk))=0;
write2file('some_maskCsurf',msk);

