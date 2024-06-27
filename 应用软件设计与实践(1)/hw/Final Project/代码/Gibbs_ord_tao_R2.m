function [gama_tao ] = Gibbs_ord_tao_R2( p,t )
%GIBBS_ORD_TAO_R2 Summary of this function goes here
%  Detailed explanation goes here
n = [-0.96927686500217D1, 0.10086655968018D2, ...
	 -0.56087911283020D-2, 0.71452738081455D-1, -0.40710498223928D0,...
	  0.14240819171444D1 ,-0.43839511319450D1 , -0.28408632460772D0,...
	  0.21268463753307D-1];
ji = [0, 1, -5, -4, -3, -2, -1, 2, 3 ];
gama_tao = t*0;
ts = t_sat(p);
  t23 = t_B23(p);
% calculate the dimensionless pressure and temperature
  pai = p./1;
  tao = 540./t;
% the range coverd by the equation 
  s = ((t>= ts & t<=623.15)|t >= t23&t>=623.15)&t<=1073.15 ;
% Calculate the dimensionless Gibbs function at region 1
for (i = 1:9)
  gama_tao(s) = gama_tao(s) + n(i).*ji(i).*tao(s).^(ji(i)-1);
end