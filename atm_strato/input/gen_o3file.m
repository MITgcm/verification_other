
% Make binary file for cube sphere.

% 32x192 (32x32x6), 40 vertical levels
% 96x576 (96x96x6), 40 vertical levels

%- switch to local vertical resolution:
rF=squeeze(rdmds('RF'));
rC=squeeze(rdmds('RC'));
nr=length(rC);

% atm_phys_STRAT vertical pressure levels (layer mid-points):
nlevel=nr; apS_levs=rC/100;
kplot=1;

% Read APE ozone climatology:
nyO=64 ; npO=59;
fileID = fopen('apeo3_lats.dat');
fileID2 = fopen('apeo3_press.dat');
fileID3 = fopen('apeo3_o3.dat');

lat_data = textscan(fileID,'%f64',nyO,'Delimiter',' ');
press_data = textscan(fileID2,'%f64',npO,'Delimiter',' ');
o3_data = textscan(fileID3,'%f64',nyO*npO,'Delimiter',' ');

fclose('all');

apelat = lat_data{1};
apelev = press_data{1};
apeo3 = o3_data{1};

%disp(' ')

 apeo3_grid = reshape(apeo3,[nyO npO]);
%apeo3_grid = zeros(nyO,npO,'double');
%for k = 0:58
%    apeo3_grid(:,k+1) = apeo3(k*64+1:k*64+64);  % 64x59, nlat x nlev
%end
if kplot,
 figure(1); clf;
 colormap('jet');
 var=apeo3_grid;
 imagesc(var'); %set(gca,'YDir','normal');
 colorbar
end
%return

% Load the horizontal grid from folder where it is contained
gDir='../grid_cs32/';
G=load_grid(gDir,10);
%G=load_grid('/net/spat-ocean/disk1/mk1812/MITgcm/mk_test/cs96_init/run/',0);
% Spec grid for making bin variable
nx=G.dims(1); ny=G.dims(2); nc=ny;
xc=G.xC; yc=G.yC; xg=G.xG; yg=G.yG;

ccB=[0 0]; shift=-1; cbV=1; AxBx=[-180 180 -90 90]; kEnv=0;

% 1) Interpolate o3_grid onto MITgcm 40 levels:
apeo3_40lev = zeros(nyO,nlevel);
for j = 1:nyO
   %apeo3_40lev(j,:) = exp(interp1(apelev,log(apeo3_grid(j,:)),apS_levs,'linear','extrap'));
    apeo3_40lev(j,:) = interp1(apelev,apeo3_grid(j,:),apS_levs,'linear','extrap');
   %apeo3_40lev(j,:) = interp1(log(apelev),apeo3_grid(j,:),log(apS_levs),'linear','extrap');
end
if kplot,
 figure(2); clf;
 colormap('jet');
 var=apeo3_40lev;
 imagesc(var'); set(gca,'YDir','normal');
%imagesc((var-sav)'); set(gca,'YDir','normal');
%caxis([-1 1]*0.05);
 colorbar
 fprintf(' min,max= %9.6f, %9.6f\n',min(var(:)),max(var(:)));
 figure(3); clf;
 yp=log10(apelev); js=32;
 plot(yp,apeo3_grid(js,:),'g-x');hold on;
 yp=log10(apS_levs);
 plot(yp,var(js,:),'r-');
%plot(yp,sav(js,:),'b-');
 hold off; grid
end
%return

% 2) Interpolate onto yc cubed-sphere latitudes:
mito3 = zeros(nx,ny,nlevel);
yc_vec = reshape(yc,nx*ny,1);
for k = 1:nlevel
    mito3_2d = interp1(apelat,apeo3_40lev(:,k),yc_vec,'linear','extrap');
    mito3(:,:,k) = reshape(mito3_2d,nx,ny);
end

% % Plot 2D map of O3 field at a given level:
% grph_CS(mito3(:,:,25),xc,yc,xg,yg,ccB(1),ccB(2),shift,cbV,AxBx,kEnv);

ozone = mito3 * 1.e-6;  % Convert from ppmv to vmr

if kplot,
% Convert back to lat-lon and plot zonal mean profile to check it looks right:
%lon = [1:2:360];
 lon = [-179:2:179];
 lat = [-89.:2:89.];
 z = cube2latlon(xc,yc,ozone,lon,lat);
 zav=squeeze(mean(z));

 figure(4); clf;
 colormap('jet');
 var=zav;
 imagesc(var'); set(gca,'YDir','normal');
 colorbar
end
%return

% disp(z);

%directory = '/home/mk1812/';
% fname=['Azi10_Equator_geofile_1000mWm2_Noise100.bin'];
% fname=['Uniform_geofile_1000mWm2.bin'];
% fname=['Lat40_geofile_1000mWm2.bin'];
% fname=['Equator_geofile_1mWm2.bin'];
fname=sprintf('ape_ozone_cs%i_%il.bin',nc,nr);
fid=fopen(fname,'w','b'); fwrite(fid,ozone,'real*8'); fclose(fid);
fprintf(['write file: ',fname,'\n']);
