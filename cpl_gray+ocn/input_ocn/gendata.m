
nc=32;

%-- make flat bathy (4.km deep, but real depth will be smaller if sum(drF) < 4.km)
%yy=yc*pi/90;
depth=4000.;
var=-depth*ones(6*nc,nc);
fname='flat_4km.bin';
%fid=fopen(fname,'w','b'); fwrite(fid,var,'real*8'); fclose(fid);
%fprintf(['write file: ',fname,'\n']);

%var=rdda(fname,[6*nc nc],1,'real*8','b');
%mnV=min(var(:)); MxV=max(var(:));

rDir='../cpl_idl_05.ocn_c300/'; it=2592000;
namf='Ttave';
var=rdmds([rDir,namf],it);
mnV=min(var(:)); MxV=max(var(:));
fprintf(' file: "%s" loaded: min,Max= %8.3f , %8.3f\n',namf,mnV,MxV);
fname='tIni_cpl.bin';
fid=fopen(fname,'w','b'); fwrite(fid,var,'real*8'); fclose(fid);
fprintf(['write file: ',fname,'\n']);

namf='Stave';
var=rdmds([rDir,namf],it);
mnV=min(var(:)); MxV=max(var(:));
fprintf(' file: "%s" loaded: min,Max= %8.3f , %8.3f\n',namf,mnV,MxV);
fname='sIni_cpl.bin';
fid=fopen(fname,'w','b'); fwrite(fid,var,'real*8'); fclose(fid);
fprintf(['write file: ',fname,'\n']);

return
