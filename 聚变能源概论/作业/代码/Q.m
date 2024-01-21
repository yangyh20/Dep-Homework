function [ output_args ] = Q( input_args )
%Q Summary of this function goes here
%  Detailed explanation goes here
k1=0;k2=0.5;k3=1;
a=17.6*1000*5.7*(10^-22)/4;
t=25;
f=[1*10^18:1*10^18:6*10^20];
y1=(2.*a.*f.*k1-0.72.*3.*t.*t)./(3.*t.*t-a.*f.*k1);
y2=(2.*a.*f.*k2-0.72.*3.*t.*t)./(3.*t.*t-a.*f.*k2);
y3=(2.*a.*f.*k3-0.72.*3.*t.*t)./(3.*t.*t-a.*f.*k3);
plot(f,y1,'b');
hold on;
plot(f,y2,'r');
plot(f,y3,'g');
legend('k=0','k=0.5','k=1');
xlabel('F ');
ylabel('ÔöÒæ');