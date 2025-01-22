
fname='northEquatMask.bin';
nx=128; ny=64;

msk=zeros(nx,ny);
msk(:,33:36)=1.;
msk(41:nx,33:36)=2.;

%figure(1);clf;
%imagesc(msk'); set(gca,'YDir','normal');
%colorbar

%fid=fopen(fname,'w','b'); fwrite(fid,msk,'real*8'); fclose(fid);
%fprintf(['write file',fname,'\n']);

%-- cos shape SST:
yy=[1:ny]; yy=yy-mean(yy);
yy=yy*pi*2/ny;
sst=ones(nx,1)*cos(yy);
sst=273.15+9+19*sst;

var=rand([nx,ny]); var=var-mean(var(:));
var=var.*(1+ones(nx,1)*cos(yy));
figure(1);clf;
imagesc(var'); set(gca,'YDir','normal');
colorbar

noise=0.;
%noise=1.e-3;
sst=sst+noise*var;

%rDir='res_n26/';
%namf='SST.check';
%sst=rdmds([rDir,namf]);

figure(3);clf;
var=sst;
zav=mean(var); var=var-ones(nx,1)*zav;
subplot(211);
imagesc(var'); set(gca,'YDir','normal');
colorbar
subplot(212);
plot([1:ny],zav'-273.15);

%fname='SST_sym.bin';
fname='SST_cos0.bin';
%fname='SST_cos1.bin'; % with: noise=1.e-3;
fid=fopen(fname,'w','b'); fwrite(fid,sst,'real*8'); fclose(fid);
fprintf(['write file',fname,'\n']);
