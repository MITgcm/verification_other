%-----------------------
%- set constant: g(=gravity), rad(=pi/180)
%            omega, Rt(=earth radius, in 10^3 km)
%            atm_Cp, kappa, atm_Po (=ref. pressure in Theta def)
%            Rd,Rv = gas constant dry air & vapor,
%            HLv = Latent Heat vaporisation
%            Tt,Pt = temp & pressure at triple point
Rt=6.370; rad=pi/180.; g=9.80;
omega=2*pi/86164 ;
%omega=2*pi/86400 ; omega=omega*366.25/365.25 ;
atm_Cp=1004.64; kappa=2./7.; atm_Po=1.e5;
atm_Rd=atm_Cp*kappa; atm_Rv=461.5; atm_HLv=2.5e6 ; 
atm_Tt=273.16; atm_Pt=610.78 ;
%-----------------------
