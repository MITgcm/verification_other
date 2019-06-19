function [tStar,kStar]=calc_hs_forcing(ycs,hcol,rF,rC,kappa);
% Input: 
% ycs   :: 2-D array, latitude (in deg)
% hcol  :: 2-D array, column total thickness (in Pa)
% rF,rC :: 1-D vector, pressure level interface and center
% kappa :: scalar, ideal gas Rd/Cp ratio (=2/7 for air)
%-- note: assume p=0 at the top (i.e., rF(end)=0).

ka=1./(40*86400);
ks=1./(4 *86400);

%ycs=rdmds([rac,'YC']);
nxc=size(ycs,1); nyc=size(ycs,2); nr=length(rC);
rad=pi/180;
%hcol=rF(1)*ones(nxc,nyc); % <- no topo case
%hcol=rdmds([rac,'Depth']);

tStar=zeros(nxc,nyc,nr); kStar=zeros(nxc,nyc,nr);

cosy=cos(ycs*rad); siny=sin(ycs*rad);
  term0=cosy.*cosy;
  term1=60*siny.*siny ;
for k=1:nr,
  termP=rC(k)/rF(1);
  term2=10*log(termP)*term0;
  thetaLim = 200/(termP^kappa);
  tStar(:,:,k)=max(thetaLim,315-term1-term2);

  term_p=min(rF(k),hcol)+rF(k+1);
  term_p=term_p/2;
  term_p=term_p./hcol;
  if rem(k,5) == 6, figure(k/5); grph_CS(term_p,xcs,ycs,xcg,ycg,0,0,0); end
  tmpfac=(term_p-0.7)/0.3;
  tmpfac=max(tmpfac,0);
  tmpfac=term0.*tmpfac;
  tmpfac=term0.*tmpfac;
  kStar(:,:,k)=ka+ (ks-ka)*tmpfac;
end

return
