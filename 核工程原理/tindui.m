function [ ] = tindui()
%TINDUI Summary of this function goes here
%  Detailed explanation goes here
t=[0:10:100000];
for i=[15,14,13]
    phi=10.^(i+4);
    rou=0.06-0.1097.*phi.*exp(-2.90e-5.*t)./(2.765.*phi+2.09e17)-0.1097.*phi.*(exp(-2.09e-5.*t)-exp(-2.87e-5.*t))./0.78e17;
    plot(t,rou);
    hold on;
end
legend('15','14','13','12');