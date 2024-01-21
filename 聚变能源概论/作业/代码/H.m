function [ output_args ] = H( input_args )
%H Summary of this function goes here
%  Detailed explanation goes here
x=[0:0.1:3.5];
t=10.^x;
lgf=[-26.165 -25.578 -25.035 -24.534 -24.069 -23.637 -23.236 -22.864 -22.524 -22.216 -21.945 -21.713 -21.519 -21.364 -21.244 -21.156 -21.097 -21.063 -21.05 -21.055 -21.074 -21.107 -21.149 -21.2 -21.256 -21.316 -21.379 -21.44 -21.499 -21.553 -21.6 -21.641 -21.675 -21.707 -21.741 -21.781];
jiemian=10.^lgf;
tL=0.28.*((1/3).^0.74).*(2.^2.67).*(1.7.^3.29).*(6.^3.48).*(2.5^0.61)./((1.7.^3).*((1.5).^0.91).*(t.^2.23));
Sk=3.*(1.5e20).*t./tL;
SB=(1.625e-38).*((1.5e20)^2).*sqrt(t.*1000)./(1.6e-16);
Sf=17.6e3.*((1.5e20)^2).*(jiemian)./4
Sext=Sk+SB-0.2.*Sf;
loglog(t,Sk,'b');
hold on;
loglog(t,SB,'r');
%loglog(t,Sext,'g');
loglog(t,Sf,'k');
xlabel('T[kev]');
ylabel('S[kev/m3*s]');
legend('Sk','SB','Sf');