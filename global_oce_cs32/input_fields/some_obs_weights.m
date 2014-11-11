
sig0=0.1;

sca=sqrt(convert2gcmfaces(mygrid.RAC));
write2file('some_scale.bin',sca);

for vv=1:2;
    if vv==1; nm='sst';
    elseif vv==2; nm='eta';
    else; nm='unknown';
    end;
    fld=rdmds([nm 'step.0000000000']);
    siz=size(fld);
    msk=convert2gcmfaces(mygrid.mskC(:,:,1));
    msk=repmat(msk,[1 1 siz(3)]);
    noi=sig0*randn(prod(siz),1);
    noi=reshape(noi,siz);
    noi(isnan(msk))=0;
    fld=fld+noi;
    sig=sig0*ones(siz(1:2));
    write2file(['some_' nm '_step.bin'],fld);
    write2file(['some_' nm '_sigma.bin'],sig);
end;





