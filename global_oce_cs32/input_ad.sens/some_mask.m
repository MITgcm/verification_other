
gcmfaces_global;
grid_load('../run/',6,'compact');

if 0;
    mskW=convert2gcmfaces(mygrid.LATS_MASKS(100).mskWedge);
    mskS=convert2gcmfaces(mygrid.LATS_MASKS(100).mskSedge);
    mskW(isnan(mskW))=0;
    mskS(isnan(mskS))=0;
    write2file('north10_maskW',mskW);
    write2file('north10_maskS',mskS);
end;

if 0;
    msk=mygrid.YC<-30;    
    msk=convert2gcmfaces(msk.*mygrid.mskC(:,:,1));
    msk(isnan(msk))=0;
    write2file('south30_maskC',msk);
    %
    msk=ones(1,50); msk(11:end)=0;
    write2file('south30_maskK',msk);
    msk=zeros(1,10); msk(5)=1;
    write2file('south30_maskT',msk);
end;


