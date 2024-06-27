function [  ] = td()
%T-DISTRIBUTION Summary of this function goes here
%  Detailed explanation goes here
x=[-10:0.001:10];
y1=1./(pi.*(1.+x.^2));
y2=1./(2.*sqrt(2).*((1.+0.5.*x.^2).^1.5));
y10=945./(768.*sqrt(10).*((1.+0.1.*x.^2).^5.5));
y50=4.976065./(sqrt(50.*pi).*((1.+0.02.*x.^2).^25.5));
y100=7.054832./(10.*sqrt(pi).*((1.+0.01.*x.^2).^50.5));
axy1=plot(x,y1,'r');
hold on;
axy2=plot(x,y2,'b');
axy10=plot(x,y10,'g');
axy50=plot(x,y50,'k');
axy100=plot(x,y100,'m');
legend('t=1','t=2','t=10','t=50','t=100');