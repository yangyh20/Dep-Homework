function [ s ] = entropy_r1( p,t )
%ENTROPY_R1 Summary of this function goes here
%  Detailed explanation goes here
R=0.461526;
%REGION1 Summary of this function goes here
 ps = p_sat(t);
% calculate the dimensionless pressure and temperature
  pai = p./16.53;
  tao = 1386./t;
% the range coverd by the equation 
  a= t>=273.15 & t <=623.15 & p>= ps & p <= 100;
  s=t.*0;

% specific entropy
  %s(a)=(tao(a).*Gibbs_tao_R1(p,t)-Gibbs_R1(p,t)).*R;
 s=(tao.*Gibbs_tao_R1(p,t)-Gibbs_R1(p,t)).*R;