function [ h ] = enthalpy_r2( p,t)
%ENTHALPY_R2 Summary of this function goes here
%  Detailed explanation goes here
R=0.461526;
h= t.*0;
ts = t_sat(p);
t23 = t_B23(p);
% calculate the dimensionless pressure and temperature
  pai = p./1;
  tao = 540./t;
% the range coverd by the equation 
  a = ((t>= ts & t<=623.15)|t >= t23&t>=623.15)&t<=1073.15 ;
  %h(a)=R.*t.*(tao(a).*(Gibbs_ord_tao_R2(p,t)+Gibbs_res_tao_R2(p,t)));
   h=R.*t.*(tao.*(Gibbs_ord_tao_R2(p,t)+Gibbs_res_tao_R2(p,t)));
  