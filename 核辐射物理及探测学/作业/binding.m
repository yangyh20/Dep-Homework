function [ b ] = binding( z,a )
%to caculate bingding energy
%  Detailed explanation goes here
format long;
b1=15.835.*a;
b2=18.33.*(a.^(2/3));
b3=0.714.*z.*z.*(a.^(-1/3));
b4=92.8.*((a./2-z).^2)./a;
c=mod(a,2);
d=mod(z,2);
if(c)
    theta=0;
else
    if(d)
        theta=-1;
    else
        theta=1;
    end
end
b5=11.2.*theta.*(a.^(-1/2));
b=b1-b2-b3-b4+b5;
