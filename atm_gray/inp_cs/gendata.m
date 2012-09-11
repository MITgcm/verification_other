
%gDir='../run_cs/';
gDir='../cs_grid/';
G=load_grid(gDir,0);

nx=G.dims(1); ny=G.dims(2); nc=ny;
xc=G.xC; yc=G.yC; xg=G.xG; yg=G.yG;

ccB=[0 0]; shift=-1; cbV=1; AxBx=[-180 180 -90 90]; kEnv=0;
%figure(1);clf;
%imagesc(msk'); set(gca,'YDir','normal');
%colorbar

%-- make SST field (cos shape, no noise) from grid-output file YC:
yy=yc*pi/90;
sst=273.15+9+19*cos(yy);

figure(1);clf;
var=sst;
grph_CS(var,xc,yc,xg,yg,ccB(1),ccB(2),shift,cbV,AxBx,kEnv);

%fname='SST_cos0.bin';
%fid=fopen(fname,'w','b'); fwrite(fid,sst,'real*8'); fclose(fid);
%fprintf(['write file: ',fname,'\n']);

%return
%-- make initial pot-temp field by adding noise to T(iter=0) output file:

rDir=gDir;
namf='T'; it=0;
tini=rdmds([rDir,namf],it);
nr=size(tini,3);

var=rand([nx,ny]); var=var-mean(var(:));
yy=yc*pi/90;
var=var.*(2+cos(yy))/3;
figure(2);clf;
%var=sst0;
grph_CS(var,xc,yc,xg,yg,ccB(1),ccB(2),shift,cbV,AxBx,kEnv);

noise=1.e-3;
tini1=tini+noise*reshape(reshape(var,[nx*ny 1])*ones(1,nr),[nx ny nr]);
%size(tini1)

%fname='ini_theta.bin';
%fid=fopen(fname,'w','b'); fwrite(fid,tini1,'real*8'); fclose(fid);
%fprintf(['write file: ',fname,'\n']);

%- spec-humid : put constant Rel-Humid in the lowest troposphere
relhum=0.8 ; pHum=800.e+2;
khum=max(find(G.rC > pHum));

%- taken from AIM -> qsat in g/kg, pIn = normalised Pressure
P0=1.e+5; pIn=G.rC/P0;
qsat=calc_Qsat(1,pIn,tini);
qsat=reshape(qsat,[nx ny nr]);
qini=qsat*1.e-3*relhum; 
qini(:,:,khum+1:end)=0;

figure(3);clf;
pax=G.rC/100; %- in mb
i1=1; j1=1;
var=squeeze(qini(i1,j1,:));
plot(var,pax,'k-'); hold on;
i1=nc/2; j1=nc/2;
var=squeeze(qini(i1,j1,:));
plot(var,pax,'r-');
i1=nc*2.5; j1=nc*0.5;
var=squeeze(qini(i1,j1,:));
plot(var,pax,'b-');
hold off
set(gca,'YDir','reverse');
grid
legend('mid','eq','pol');
title('Q-ini profile');

%fname='ini_specQ.bin';
%fid=fopen(fname,'w','b'); fwrite(fid,qini,'real*8'); fclose(fid);
%fprintf(['write file: ',fname,'\n']);

return
