function [ gama_tao ] = Gibbs_ord_tao_R5( p,t )
%GIBBS_ORD_TAO_R5 Summary of this function goes here
%  Detailed explanation goes here
n= [-0.13179983674201D2, 0.68540841634434D1, ...
	 -0.24805148933466D-1, 0.36901534980333D0, -0.31161318213925D1,...
	 -0.32961626538917D0];
ji = [0, 1, -3, -2, -1, 2 ];
gama_tao = t*0;

  pai = p./1;
  tao = 1000./t;
% the range coverd by the equation 
  s = (t>=1073.15&t<=2273.15&p<=10) ;
% Calculate the dimensionless Gibbs function at region 1
for (i = 1:6)
  gama_tao(s) = gama_tao(s) + n(i).*ji(i).*tao(s).^(ji(i)-1);
end
