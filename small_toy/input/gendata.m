% This is a matlab script that generates the input binary files

prec='real*8';
typ='b';
kwr=1;

% Dimensions of grid
nx=1; ny=1; nr=1;

% Vertical grid (meters)
dz = 10;

if kwr > 0,
 fNam='bathy_1km.bin'; var=-1000.;
 fprintf(' - writing file "%s" ...',fNam);
 fid=fopen(fNam,'w',typ); fwrite(fid,var,prec); fclose(fid);
 fprintf(' done\n');

 fNam='ones_64b.bin'; var=1.;
 fprintf(' - writing file "%s" ...',fNam);
 fid=fopen(fNam,'w',typ); fwrite(fid,var,prec); fclose(fid);
 fprintf(' done\n');
end

%- SST relaxation:
nRec=100; dTsais=4;
t0=[1:nRec];
t1=ones(2,nRec/2); t1(1,:)=-1.; t1=reshape(t1,[1 nRec]);
t1=t1*0.5*dTsais;
sst=t0+t1;

figure(1); clf;
 xax=([1:nRec]-0.5)*0.5; %- time in years
 plot(xax,t0,'k-');
 hold on
 plot(xax,t1,'b-');
 plot(xax,sst,'r-');
 hold off
 grid
 axis([0 50 -5 105]);

if kwr > 0,
%- split seasonal cycle and (linear) trend (for pkg/exf and pkg/ctrl)
 fNam=['trend_SST.',int2str(nRec),'.bin']; var=t0;
 fprintf(' - writing file "%s" ...',fNam);
 fid=fopen(fNam,'w',typ); fwrite(fid,var,prec); fclose(fid);
 fprintf(' done\n');

 fNam=['saison_SST.',int2str(nRec),'.bin']; var=t1;
 fprintf(' - writing file "%s" ...',fNam);
 fid=fopen(fNam,'w',typ); fwrite(fid,var,prec); fclose(fid);
 fprintf(' done\n');
end
if kwr > 0,
%- seasonal cycle and (linear) trend all together (for pkg/exf)
 fNam=['target_SST.',int2str(nRec),'.bin']; var=sst;
 fprintf(' - writing file "%s" ...',fNam);
 fid=fopen(fNam,'w',typ); fwrite(fid,var,prec); fclose(fid);
 fprintf(' done\n');
end

return
