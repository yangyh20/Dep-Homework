function [ h ] = enthalpy_r3( p,t )
%ENTHALPY_R3 Summary of this function goes here
%  Detailed explanation goes here
R=0.461526;
  s = t*0;
% Calculate the saturation pressure at the temperature of t
   t23 = t_B23(p);
% the range coverd by the equation 
 
  a=t>=623.15&t<=t23;
  
  rho=density_R3half(p,t);
  
  delta = rho./322;
  tao = 647.096./t;
  
  h(a)=R.*t.*(tao(a).*Helmz_tao_R3(rho,t)+delta(a).*Helmz_phi_R3(rho,t));