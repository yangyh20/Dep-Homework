function [  ] = cross3(  )
%CROSS3 Summary of this function goes here
%  Detailed explanation goes here
m1=2*938e3;m2=3*938e3;
mr=m1*m2/(m1+m2);
e0=[5 10 20 50 100 500];
lgjiemian=[-3.2632 -1.5731 -0.3991 0.62472 0.53665 -0.53488];
jiemian=10.^lgjiemian;
a=[0 0 0 0 0 0];
for i=1:6;
    a(i)=jiemian(i).*(e0(i).^2.5);
end
a=a.*64.*sqrt(2./mr).*pi./(m2.^2);
scatter(e0,a);
set(gca,'YScale','log') 
set(gca,'XScale','log') 
xlabel('入射粒子能量,kev');
ylabel('反映率系数，(10^-15)cm^3/sec');