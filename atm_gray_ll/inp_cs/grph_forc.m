
ny=64;
rad=pi/180;
cel2k=273.15; cel2k=0;

%-- cos shape SST:
yc=[1:ny]; yc=yc-mean(yc); yy=yc*pi*2/ny; yc=yc*180/ny;

yy=2*yc*rad;
sst1=cel2k+9+19*cos(yy);

%-fizhi aqua-planet (Neele & Hoskin)
sn=1.5*yc*rad; sn=sin(sn);

sst2=27.*(1.-sn.*sn);
sst2(find(abs(yc) > 60.))=0;
sst2=cel2k+sst2;

figure(3);clf;
%subplot(211);
%imagesc(var'); set(gca,'YDir','normal');
%colorbar
%subplot(212);
plot(yc,sst1,'b-');
hold on 
plot(yc,sst2,'r-');
hold off 
legend('cos0','aqua');
grid;
AA=axis; axis([-90 90 AA(3:4)]);
