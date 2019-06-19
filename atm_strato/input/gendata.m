
kwr=0;
%kwr=1;

%gDir='../run_26l/';
gDir='../grid_cs32/';
%gDir='~/grid_cs96/';
G=load_grid(gDir,10);

nx=G.dims(1); ny=G.dims(2); nc=ny;
xc=G.xC; yc=G.yC; xg=G.xG; yg=G.yG;

ccB=[0 0]; shift=-1; cbV=1; AxBx=[-180 180 -90 90]; kEnv=0;
y1d=[-89.5:1:90];
%figure(1);clf;
%imagesc(msk'); set(gca,'YDir','normal');
%colorbar

%-- make SST field (cos shape, no noise) from grid-output file YC:
 yy=yc*pi/90; sst1=9+19*cos(yy);
%sst=273.15+sst1;
%pfx='SST_cos0';
%- just for doing a plot
 yy=y1d*pi/90; sst1_1d=9+19*cos(yy); %- just for doing a plot

%-- follow APE profile:
 yy=yc*pi/180;
 var=sin(1.5*yy); var=1.-var.*var;
 var(find(abs(yc) > 60.))=0.; sst2=27*var;
%sst=273.15+sst2;
%pfx='SST_APE_1';
%- just for doing a plot
 yy=y1d*pi/180;
 var=sin(1.5*yy); var=1.-var.*var;
 var(find(abs(y1d) > 60.))=0.; sst2_1d=27*var;

%-- close to Symetric zonally-average current SST:
 yyp=abs(yc/90); phi=yyp.^3.;
 sst3=27.8*exp(-7*phi) - 1 ;
 sst=273.15+sst3;
 pfx='SST_symEx3';
%- just for doing a plot
 yyp=abs(y1d/90); phi=yyp.^3.;
 sst3_1d=27.8*exp(-7*phi) - 1 ;

if kwr > 0,
 fname=sprintf('%s_cs%i%s',pfx,nc,'.bin');
 fid=fopen(fname,'w','b'); fwrite(fid,sst,'real*8'); fclose(fid);
 fprintf(['write file: ',fname,'\n']);
end

figure(1);clf;
colormap('jet');
subplot(211)
var=sst;
grph_CS(var,xc,yc,xg,yg,ccB(1),ccB(2),shift,cbV,AxBx,kEnv);
title('SST');

subplot(212)
plot(y1d,sst1_1d,'g-'); hold on;
plot(y1d,sst2_1d,'b-');
plot(y1d,sst3_1d,'r-');
hold off;
axis([-90 90 -5 29]); grid
legend('cos','ape','sym')
title('SST ^oC');
%return

%-- make Q-flux file (similar to the one used by Paul, hard coded
%                     in original version of mixed_layer.f90)
qflx_ampl=50. ;
qflx_width=90.;
yy=yc/qflx_width;
yy=yy.*yy;
qflx=qflx_ampl*(1-2*yy);
qflx=qflx.*exp(-yy);

%figure(2);clf;
%colormap('jet');
%var=qflx;
%grph_CS(var,xc,yc,xg,yg,ccB(1),ccB(2),shift,cbV,AxBx,kEnv);
%title('Q-flux [W/m^2]');

%if kwr > 0,
% fname='Qflux_w90.bin';
% fid=fopen(fname,'w','b'); fwrite(fid,qflx,'real*8'); fclose(fid);
% fprintf(['write file: ',fname,'\n']);
%end
%return

%-- make initial pot-temp field from Held & Suarez T*
atm_cst;
rF=squeeze(rdmds('RF'));
rC=squeeze(rdmds('RC')); nr=length(rC);

%-- first just try a 2-D map to plot:
 nn1=length(y1d);
 hcol=ones(1,nn1).*rF(1);
 [th2d]=calc_hs_forcing(y1d,hcol,rF,rC,kappa);
 th2d=squeeze(th2d);

figure(3);clf;
 colormap('jet');
subplot(211);
 var=th2d;
%var=log10(var);
 yax=rC/100;
%yax=[1:nr];
 imagesc(y1d,yax,var');
%set(gca,'YDir','normal');
 colorbar

 ti=(rC/atm_Po).^kappa;
 ti=ones(nn1,1)*ti';
 ti=ti.*th2d;

subplot(212);
 var=ti;
 imagesc(y1d,yax,var');
%set(gca,'YDir','normal');
 colorbar
%return

fprintf('New Theta profile (tRef):\n')
is=45;
for js=1:10:nr,
 je=min(nr,js-1+10);
 var=th2d(is,js:je);
%fprintf(' %6.2f,',var); fprintf('\n');
 if th2d(is,je) > 1000,
   fprintf(' %4.0f.,',var);
 else
   fprintf(' %5.1f,',var);
 end
 fprintf('\n');
end

%-- then do it for CS-grid:
 hcol=ones(nx,ny).*rF(1);
 [th3d]=calc_hs_forcing(yc,hcol,rF,rC,kappa);

if kwr > 0,
 pfx='theta_hs94';
 fname=sprintf('%s_cs%i_%il%s',pfx,nc,nr,'.bin');
 fid=fopen(fname,'w','b'); fwrite(fid,th3d,'real*8'); fclose(fid);
 fprintf(['write file: ',fname,'\n']);
end

%-- initial surf. pressure (similar shape as SST-sym):
 yyp=abs(yc/90); phi=yyp.^3.;
 eta0=35-55*exp(-7*phi); %- in mb
 var=eta0.*G.rAc;
 etAv=sum(var(:))./sum(G.rAc(:));
 fprintf('Eta0 glob-mean = %8.6f [mb]\n',etAv);
 eta1=(eta0-etAv)*100.;

if kwr > 0,
 pfx='psAnom_ini';
 fname=sprintf('%s_cs%i%s',pfx,nc,'.bin');
 fid=fopen(fname,'w','b'); fwrite(fid,eta1,'real*8'); fclose(fid);
 fprintf(['write file: ',fname,'\n']);
end

