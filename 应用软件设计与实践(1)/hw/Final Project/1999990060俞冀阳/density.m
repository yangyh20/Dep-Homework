function rho = density(p,t)
% Calculate the density 
%
%  Purpose: 
%    This function calculates  the density 
% 
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    2010/07/09   Jiyang Yu              Original code 
%
% Define variables:
%   t             -- Temperature in K
%   p            -- Pressure in MPa, p and t should have same size.
%   rho         -- density in kg/m^3
%
ts = t_sat(p);
t23 = t_B23(p);
ps = p_sat(t);
rho = p.*0;
s1 = t>=273.15 & t <=623.15 & p>= ps & p<=100 ;
rho(s1) =1./(Gibbs_pai_R1(p(s1),t(s1))./16.53e6*0.461526e3.*t(s1));
s2 = ((t>= ts & t<=623.15)|(t >= t23 & t >= 623.15) ) & t <= 1073.15 & p<=100;
rho(s2) =1e6./((Gibbs_pai_R2(p(s2),t(s2))+1./p(s2)).*0.461526e3.*t(s2));
s3 = t > 623.15 & t < t23 & p<=100;
rho(s3) = density_R3half(p(s3),t(s3));