% This script generates the input files for a trial MITgcm simulation using
% the 'IcePlume' package

% Cowton T, D Slater, A Sole, D Goldberg, P Nienow (2015). Modeling the
% impact of glacial runoff on fjord circulation and submarine melt rate
% using a new subgrid-scale parameterization for glacial plumes. Journal
% of Geophysical Research - Oceans.

% It is also necessary to complete the appropriate 'data' files etc.

% Tom Cowton, February 2015

% Modified by An Nguyen 26 Sep 2022, to create a smaller domain for MITgcm 
% testing during code merge

%% Initial settings

% Accuracy of binary files
acc = 'real*8';

% Number of time levels for time varying forcing
nt = 1;

%% Gridding

% Dimensions of grid
nx=20;
ny=11;
nz=15;

% Cell resolution (m)
deltaX = 200;
deltaY = 200;
deltaZ = 20;

% x scale
delx = zeros(1,nx);
delx(:) = deltaX;
fid=fopen('delx_tiny.bin','w','b'); fwrite(fid,delx,acc);fclose(fid);

% y scale
dely = zeros(1,ny);
dely(:) = deltaY;
fid=fopen('dely_tiny.bin','w','b'); fwrite(fid,dely,acc);fclose(fid);


%% Bathymetry

% Vertical cell spacing (for T and S profiles)
zprof = -((0.5*deltaZ):deltaZ:((nz*deltaZ)-(0.5*deltaZ)));

% Bathymetry
bathymetry = zeros(nx,ny);
bathymetry(:) = -deltaZ*nz;
bathymetry(1,:) = 0; % glacier front
bathymetry(:,[1 end]) = 0; % fjord walls

% write bathymetry
fid=fopen('bathymetry_tiny.bin','w','b'); fwrite(fid,bathymetry,acc);fclose(fid);

% now use same bathy but close open boundary on the east:
bathymetry(end,:)=0;	%close up open ocean side
fid=fopen('bathymetry_tiny_closed.bin','w','b'); fwrite(fid,bathymetry,acc);fclose(fid);

%% Temperature and salinity profiles
% These are used to write initial conditions, boundary conditions etc

% Profiles are an idealised version of a Greenland fjord profile
% modified by atn to squeeze it in z:
z = -[0 100 350 400 500]./500.*300;
t1 = [0.2 0.2 1.7 1.5 1.1];
t(:,1) = interp1(z,t1,zprof,'cubic');

z = -[0 100 200 300 400 500]./500.*300;
s1 = [32 33.8 34.2 34.3 34.4 34.5];
s(:,1) = interp1(z,s1,zprof,'cubic');

%% Initial conditions

saltini = zeros(nx,ny,nz);
tempini = zeros(nx,ny,nz);

for i = 1:nz
    saltini(:,:,i) = s(i);
    tempini(:,:,i) = t(i);
end

fid=fopen('saltini_tiny.bin','w','b'); fwrite(fid,saltini,acc);fclose(fid);
fid=fopen('tempini_tiny.bin','w','b'); fwrite(fid,tempini,acc);fclose(fid);

%% Subglacial runoff

% Where (in the along fjord direction) is the glacier front?
icefront = 2;

% Define the velocity (m/s) of subglacial runoff as it enters the fjord.
% 1 m/s seems a reasonable value (results not sensitive to this value).
wsg = 1;

% Templates
runoffVel   = zeros(nx,ny);
runoffRad   = zeros(nx,ny);
plumeMask   = zeros(nx,ny);

%%% Define plume-type mask %%%
% 1 = ice but no plume (melting only)
% 2 = sheet plume (Jenkins 2011)
% 3 = half-conical plume (Cowton et al 2015)
% 4 = both sheet plume and half-conical plume (NOT YET IMPLEMENTED)
% 5 = detaching conical plume (Goldberg)

% POSITIVE values indicate ice front is orientated north-south
% NEGATIVE values indicate ice front is orientated east-west

% Define melting along the glacier front (located at fjord head)
plumeMask(icefront,2:(end-1)) = 1;

% The plume will be located in the fjord centre at the glacier
% front: 3 = half-conical plume (Cowton et al 2015)
ix_plume=icefront;jy_plume=6; %put the subglacial plume at column [2,6,1:nz]
plumeMask(ix_plume,jy_plume) = 3;

% Specify runoff (m^3/s)
runoff = 10;
% Reduce runoff even more to ensure it does not come to the surface:
runoff = 8;

% Define runoff velocity in each location (as specified above)
runoffVel(ix_plume,jy_plume) = wsg;

% Calculate channel radius to give runoff at velocity
runoffRad(ix_plume,jy_plume) = sqrt(2*runoff/(pi*wsg));

runoffQsg   = zeros(nx,ny);runoffQsg(ix_plume,jy_plume)=runoff;


% Write files.
fid=fopen(['runoffQsg_tiny_' num2str(runoff) 'm3ps.bin'],'w','b'); fwrite(fid,runoffQsg,acc);fclose(fid);
fid=fopen(['runoffVel_tiny_1mps.bin'],'w','b'); fwrite(fid,runoffVel,acc);fclose(fid);
fid=fopen(['runoffRad_tiny_' num2str(runoff) 'm3ps.bin'],'w','b'); fwrite(fid,runoffRad,acc);fclose(fid);
fid=fopen(['plumeMask_tiny.bin'],'w','b'); fwrite(fid,plumeMask,acc);fclose(fid);

%=======================
% atn: We're going to have the domain completely closed to make easy 
% budget calculations
if(0);
%% Boundary conditions

% Eastern boundary conditions (other boundaries closed in this example)

EBCu = zeros(ny,nz);
EBCs = zeros(ny,nz);
EBCt = zeros(ny,nz);

for i = 1:length(t)
        EBCt(:,i) = t(i);
        EBCs(:,i) = s(i);
end

% Apply barotropic velocity to balance input of runoff

fjordMouthCrossSection = -sum(bathymetry(end,:))*deltaY;
fjordMouthVelocity = runoff/fjordMouthCrossSection;

% Out-of-domain velocity is positive at eastern boundary
EBCu(:) = fjordMouthVelocity;

fid=fopen('EBCu_tiny.bin','w','b'); fwrite(fid,EBCu,acc);fclose(fid);
fid=fopen('EBCs_tiny.bin','w','b'); fwrite(fid,EBCs,acc);fclose(fid);
fid=fopen('EBCt_tiny.bin','w','b'); fwrite(fid,EBCt,acc);fclose(fid);
end;
%=======================

%make a zeros file:
tmp=zeros(nx,ny);
fid=fopen(['zeros_tiny_r8.bin'],'w','b');fwrite(fid,tmp,acc);fclose(fid);

tmp=zeros(nx,ny,nz);
fid=fopen(['zeros_3d_r8.bin'],'w','b');fwrite(fid,tmp,acc);fclose(fid);

%make a vvel file with a single grid having 1m/s to generate a flow for testing
tmp=zeros(nx,ny);
tmp(19,6)=1;
writebin(['vvel_init_1mps_ix19_iy6.bin'],tmp,1,'real*8');

%make the Qsg 9 record long to turn on time-dependent forcing
nrec=9;
tmp=readbin(['runoffQsg_tiny_' num2str(runoff) 'm3ps.bin'],[nx ny],1,'real*8');
tmp1=zeros(nx,ny,nrec);tmp1=repmat(tmp,[1 1 nrec]);
fid=fopen(['runoffQsg_tiny_' num2str(runoff) 'm3ps_' num2str(nrec) 'rec_constant.bin'],'w','b'); fwrite(fid,tmp1,acc);fclose(fid);

