
kwr=[1 1 1]*0;
%kwr=[0 1 0];

%G=rdmnc('../grid_cs32_ocn/grid.*');

gDir='../grid_cs32_ocn/';
G=load_grid(gDir,1,180,360);

%nc=33; nr=15; nx=6; nPxy=193*33; nPp2=nPxy+2;
%ncx=193;

nc=G.dims(2); nr=G.dims(3); nPxy=G.dims(1)*G.dims(2); nPp2=nPxy+2;
ncx=6*nc; np1=nc+1; globArea=sum(G.rAc(:));
rad=pi/180.; rEarth=6370.e+3;
%--
yg2=zeros(nPp2,1); yg2([1:nPxy],1)=reshape(G.yG,[nPxy 1]);
xg2=zeros(nPp2,1); xg2([1:nPxy],1)=reshape(G.xG,[nPxy 1]);
rAz2=zeros(nPp2,1); rAz2([1:nPxy],1)=reshape(G.rAz,[nPxy 1]);
%-- add missing corner:
xg2(nPxy+1)=xg2(1); yg2(nPxy+1)=yg2(1+2*nc); rAz2(nPxy+1)=rAz2(1);
xg2(nPxy+2)=xg2(1+3*nc); yg2(nPxy+2)=yg2(1); rAz2(nPxy+2)=rAz2(1);

% [y6t]=split_Z_cub(yg2);
%  y6u=y6t(:,1:nc,:)+y6t(:,2:np1,:); yu=0.5*y6u(1:nc,:,:);
% yu=reshape(permute(yu,[1 3 2]),[ncx nc]);
%  y6v=y6t(1:nc,:,:)+y6t(2:np1,:,:); yv=0.5*y6v(:,1:nc,:);
% yv=reshape(permute(yv,[1 3 2]),[ncx nc]);

% %- to make plots:
% y1d=G.yAxC;

%-- make flat bathy (4.km deep, but real depth will be smaller if sum(drF) < 4.km)
depth=4000.;
var=-depth*ones(6*nc,nc);
if kwr(1) > 0,
 fname='flat_4km.bin';
 fid=fopen(fname,'w','b'); fwrite(fid,var,'real*8'); fclose(fid);
 fprintf(['write file: ',fname,'\n']);
end

%-- make thin walls:
 wallW=zeros(nc,6,nc); wallS=zeros(nc,6,nc);
 mid=nc/2;
 mdp=mid+1;

%-- 1 single ridge from South to North poles, @ long 180:
wallS(mdp:nc,3,mdp)=1;
wallS(:,4,mdp)=1;
wallW(mdp,6,1:mid)=1;

%-- Double Drake type, from North pole to 34.S, at long 90 and 180:
%   [J]=find(y6t(mdp,:,1)< -33.); js=J(end);
%  fprintf(' wall ends at Lat= %8.4f\n',y6t(mdp,js,1));
% %- 1srt wall @ 90 (western Wall on face 3 & 2):
%   wallW(mdp,3,1:mid)=1;
%   wallW(mdp,2,js:nc)=1;
% %- 2nd wall @ 180 (southern Wall on face 3 & 4):
%   wallS(mdp:nc,3,mdp)=1;
%   wallS(1:np1-js,4,mdp)=1;

 wallW=reshape(wallW,[ncx nc]); wallS=reshape(wallS,[ncx nc]);
if kwr(2) > 0,
 fname='wall_W_ridge.bin';
 fid=fopen(fname,'w','b'); fwrite(fid,wallW,'real*8'); fclose(fid);
 fprintf(['write file: ',fname,'\n']);
 fname='wall_S_ridge.bin';
 fid=fopen(fname,'w','b'); fwrite(fid,wallS,'real*8'); fclose(fid);
 fprintf(['write file: ',fname,'\n']);
end

if kwr(3) > 0,
%- linked to danton:~jmc/exp/cpl_ideal/cpl_idl_05/ocn_c300
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
end

%return
%imagesc(xc,yc,hh');set(gca,'YDir','normal');
%scalHV_colbar([1. 1. 0.5 0.7],1);
%grid;

 shift=-1; ccB=[0 0]; cbV=1; AxBx=[-180 180 -90 90]; kEnv=0;
 xc1=G.xC; yc1=G.yC;

 figure(2);clf;
 ns=0;
%var=txu;
%grph_CS(var,xc1,yc1,xg2,yg2,ccB(1),ccB(2),shift,cbV+ns/1000,AxBx,kEnv);
 ccB=[-.5 1.5];
 subplot(211);
 var=wallW;
 grph_CS(var,xc1,yc1,xg2,yg2,ccB(1),ccB(2),shift,cbV+ns/1000,AxBx,kEnv);
 title('Western Wall');
 subplot(212);
 var=wallS;
 grph_CS(var,xc1,yc1,xg2,yg2,ccB(1),ccB(2),shift,cbV+ns/1000,AxBx,kEnv);
 title('Southern Wall');

% figure(3);clf;
%  var=wallW;
%  grph_CS_6t(var,ccB(1),ccB(2),nc,'W-wall',1);
% figure(4);clf;
%  var=wallS;
%  grph_CS_6t(var,ccB(1),ccB(2),nc,'S-wall',2);

return 
