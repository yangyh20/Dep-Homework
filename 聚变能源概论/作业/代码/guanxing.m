function [ output_args ] = guanxing( input_args )
%GUANXING Summary of this function goes here
%  Detailed explanation goes here
lgf=[-26.165 -25.578 -25.035 -24.534 -24.069 -23.637 -23.236 -22.864 -22.524 -22.216 -21.945 -21.713 -21.519 -21.364 -21.244 -21.156 -21.097 -21.063 -21.05 -21.055 -21.074 -21.107 -21.149 -21.2 -21.256 -21.316 -21.379 -21.44 -21.499 -21.553 -21.6 -21.641 -21.675 -21.707 -21.741 -21.781];
jiemian=10.^lgf;
result=[0:0.1:3.5];
count=1;
for i=0:0.1:3.5
    t=10.^i;
    result(count)=(1.6e-16).*sqrt(1.6e-16).*t.*sqrt(t)./jiemian(count);
    count=count+1;
end
x=[0:0.1:3.5];
t=(10.^x).*(1.6e-16);
loglog(t,result,'b');
