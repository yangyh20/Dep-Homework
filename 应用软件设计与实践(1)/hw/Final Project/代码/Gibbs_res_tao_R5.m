function [ gama_tao ] = Gibbs_res_tao_R5( p,t )
%GIBBS_RES_TAO_R5 Summary of this function goes here
%  Detailed explanation goes here
n = [-0.12563183589592D-3, 0.21774678714571D-2,...
	 -0.45942820899910D-2, -0.39724828359569D-5,0.12919228289784D-6];
	ii = [1,1,1,2,3 ];
	ji= [0,1,3,9,3 ];
    gama_tao = t*0;

  pai = p./1;
  tao = 1000./t;
% the range coverd by the equation 
  s = (t>=1073.15&t<=2273.15&p<=10) ;
   for(i=1:5)
      gama_tao(s)=gama_tao(s)+n(i).*ji(i).*(pai(s).^ii(i)).*tao(s).^(ji(i)-1);
  end