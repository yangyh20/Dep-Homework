function [ h ] = enthalpy_r5( p,t )
%ENTHALPY_R5 Summary of this function goes here
%  Detailed explanation goes here
R=0.461526;
h= t*0;
  pai = p./1;
  tao = 1000./t;
% the range coverd by the equation 
  a = (t>=1073.15&t<=2273.15&p<=10) ;
  h(a)=R.*t.*(tao(a).*(Gibbs_ord_tao_R5(p,t)+Gibbs_res_tao_R5(p,t)));