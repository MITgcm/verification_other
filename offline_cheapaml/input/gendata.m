
kwr=0;
%kwr=-1;
nx=80; ny=42; nr=3; nt=1;

xc=[1:nx]; xc=xc-mean(xc);
yc=[1:ny]-.5; ymid=mean(yc);
yv=yc-0.5;

%------------------------------------------------------

windx=10.;
H0=-100.;

namf='channel.bin';
depth=H0*ones(nx,ny); depth(:,1)=0.; depth(:,ny)=0.;
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,depth,'real*8'); fclose(fid);
end

namf=['windx_',int2str(windx),'ms.bin'];
uwind=windx*ones(nx,ny,nt);
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,uwind,'real*8'); fclose(fid);
end

namf='windy_conv.bin';
dvdy=-1.e-6*5.e+3; %- uniform convergence: wWind = 10^-6 m/s
yy=yv-ymid; vwind=dvdy*yy; vwind(1)=0;
fld=ones(nx,1)*vwind;
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,fld,'real*8'); fclose(fid);
end

%- file name convention: "const_{xx}.bin" <-> uniform value = xx (in percent)
namf='const_00.bin';
fld=0*ones(nx,ny,nt);
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,fld,'real*8'); fclose(fid);
end

namf='const100.bin'; w0=1.;
%var=w0*ones(nx,ny);
%if kwr > 0,
% fprintf('write to file: %s\n',namf);
% fid=fopen(namf,'w','b'); fwrite(fid,var,'real*8'); fclose(fid);
%end

namf='const+20.bin'; w0=0.2;
var=w0*ones(nx,ny);
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,var,'real*8'); fclose(fid);
end

namf='ice0_area.bin'; iceC0=1.;
iceConc=zeros(nx,ny);
iceConc(21:60,:)=iceC0;
iceConc(:,1)=0; iceConc(:,ny)=0;
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,iceConc,'real*8'); fclose(fid);
end

namf='ice0_heff.bin'; iceH0=0.2;
%iceVol=iceConc*iceH0;
%if kwr > 0,
% fprintf('write to file: %s\n',namf);
% fid=fopen(namf,'w','b'); fwrite(fid,iceVol,'real*8'); fclose(fid);
%end

%------------------------------------------------------

dsw0=70; dswA=30;
ymid=(yc(2)+yc(ny))/2;
ysn=yc-ymid ; ysn=ysn/(yc(ny)-yc(2)); ysn=sin(pi*ysn);

namf=['dsw_',int2str(dsw0),'y.bin'];
dsw_y=dsw0+dswA*ysn;
fld=ones(nx,1)*dsw_y;
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,fld,'real*8'); fclose(fid);
end

dlw0=270; dlwA=-20;
namf=['dlw_',int2str(dlw0),'y.bin'];
dlw_y=dlw0+dlwA*ysn;
fld=ones(nx,1)*dlw_y;
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,fld,'real*8'); fclose(fid);
end

cel2K=273.15; taC=-10;
%ta0=cel2K+taC; 
%- cheapAML works in deg.C
ta0=taC;
ta=ta0*ones(nx,ny);
namf=['tair_',int2str(taC),'.bin'];
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,ta,'real*8'); fclose(fid);
end;

cvapor_fac     =   640380.000  ;
cvapor_exp     =     5107.400  ;
atmrho         =        1.200  ;
rh=70; %- specific humid <--> 70.% relative humid
taK=cel2K+taC;
tmpbulk = cvapor_fac*exp(-cvapor_exp./taK);
qa0= (rh/100.)*tmpbulk/atmrho ;
qa=qa0*ones(nx,ny);
namf=['qa',int2str(rh),'_',int2str(taC),'.bin'];
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,qa,'real*8'); fclose(fid);
end;

%- salinity
sCst=30;
so=sCst*ones(nx,ny,nt);
namf='socn.bin';
%if kwr > 0,
% fprintf('write to file: %s\n',namf);
% fid=fopen(namf,'w','b'); fwrite(fid,so,'real*8'); fclose(fid);
%end;

muTf = 5.4e-2;
tfreeze=-muTf*sCst;
fprintf('T-freeze = %10.6f\n',tfreeze);
dtx=1; %- dtx = amplitude of relaxing ocean temp variations in X-dir
%to_x=tfreeze + dtx*sin(pi*(1+2*xc'/nx)) + dtx;
to_x=tfreeze + dtx*sin(pi*(2*xc'/nx)) + dtx;
  mnV=min(to_x); MxV=max(to_x); Avr=mean(to_x);
  fprintf(' SST* av,mn,Mx: %9.6f , %9.6f , %9.6f , %9.6f\n',Avr,mnV,MxV,MxV-mnV);
to=repmat(to_x,[1 ny nt]);
namf=['tocn_',int2str(dtx),'x.bin'];
if kwr > 0,
 fprintf('write to file: %s\n',namf);
 fid=fopen(namf,'w','b'); fwrite(fid,to,'real*8'); fclose(fid);
end;

%-- make some plots to check: ----------------

hScal=[-1.1 0.1]*abs(H0);
figure(1); clf;
subplot(211);
var=depth;
imagesc(xc,yc,var'); set(gca,'YDir','normal');
%caxis(hScal);
%change_colmap(-1);
colorbar;
title('Depth [m]');

subplot(413);
var=depth;
j1=2;
j2=ny/2;
j3=j2+1;
plot(xc,var(:,j1),'k-')
hold on; j=j+1;
plot(xc,var(:,j2),'ro-')
plot(xc,var(:,j3),'b-')
hold off;
axis([-nx/2 nx/2 hScal]);
grid
legend(int2str(j1),int2str(j2),int2str(j3));
title('Depth @ j= cst');

subplot(414);
i=nx/2;
plot(yc,var(i,:),'k-')
axis([0 ny H0*1.1 -H0*.1]);
grid
title(['Depth @ i=',int2str(i)]);

%--

figure(2);clf;
subplot(211)
plot(xc,to_x,'r-'); hold on;
%plot(xc,dewPt-cel2K,'b-');
plot(xc,tfreeze*ones(nx,1),'k-');
hold off;
AA=axis; axis([-nx/2 nx/2 AA(3:4)]);
legend('To','Tfrz');
grid
title('Ocean Temp ^oC');
%title(['del-Temp-X= ',int2str(dtx),' ; RH= ',int2str(rh),' ; Air Temp (^oC)']);
subplot(212)
plot(yc,dsw_y,'r-'); hold on;
plot(yc,dlw_y-200,'b-');
hold off;
%AA=axis; axis([0 ny AA(3:4)]);
axis([0 ny 30 110]);
grid
legend('sw','lw','Location','South');
title('Downward SW and LW (-200) [W/m^2]');

%--

figure(3);clf;
subplot(311)
var=iceConc; ccB=[-1 12]/10;
imagesc(xc,yc,var'); set(gca,'YDir','normal');
caxis(ccB);
%change_colmap(-1);
colorbar;
title('Ice Concentration in Channel');

iceVol=iceH0*iceConc;
subplot(312)
var=iceVol; ccB=[-1 12]/50;
imagesc(xc,yc,var'); set(gca,'YDir','normal');
caxis(ccB);
%change_colmap(-1);
colorbar;
title('Effective ice thickness in Channel');

subplot(313)
var=iceConc(1,:);
%plot(yc,var,'b-x'); hold on;
semilogy(yc,var,'b-x'); hold on;
var=iceVol(1,:);
%plot(yc,var,'r-x'); hold off;
semilogy(yc,var,'r-x'); hold on;
AA=axis; axis([0 ny [0 2]*iceC0]);
grid
legend('iceC','hEff','Location','South');
title('Initial ice in Channel : y-section');
%--
