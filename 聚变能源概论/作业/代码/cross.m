function [  ] = cross()
%CROSS Summary of this function goes here
%  Detailed explanation goes here
x1=[1:0.5:10];
x2=[15:5:100];
x3=[150:50:1000];
x4=[1500:500:10000];
x5=[15000:5000:95000];
x=[x1 x2 x3 x4 x5];

y1=[0.54835e-5 0.58917e-4 0.26276e-3 0.76096e-3 0.17123e-2 0.3274e-2 0.55843e-2 0.87602e-2 0.12891e-1 0.18039e-1 0.24237e-1 0.31494e-1 0.39797e-1 0.49111e-1 0.59391e-1 0.70576e-1 0.82598e-1 0.95385e-1 0.10886];
y2=[0.26542 0.42434 0.5594 0.66532 0.74479 0.80252 0.84312 0.8705 0.88775 0.89729 0.90097 0.90022 0.89612 0.88951 0.88103 0.87117 0.86003 0.84879];
y3=[0.7277 0.62783 0.55246 0.49542 0.45147 0.41692 0.38927 0.36679 0.34826 0.3328 0.31977 0.30867 0.29916 0.29094 0.28379 0.27754 0.27204 0.26719];
y4=[0.23954 0.22907 0.2247 0.22296 0.22249 0.22266 0.22319 0.2239 0.22471 0.22556 0.22471 0.22556 0.22642 0.22727 0.22811 0.22892 0.22971 0.23191];
y5=[0.23757 0.24154 0.2445 0.24679 0.24862 0.25013 0.2514 0.2525 0.25346 0.25431 0.25507 0.25576 0.25638 0.25694 0.25746 0.25794 0.25838];
y=[y1 y2 y3 y4 y5];

m1=2*938;m2=3*938;
mr=m1*m2/(m1+m2);
y=y.*4.*(mr.^2).*pi./(m2.^2);
x=m1.*x./mr;
loglog(x,y);
xlabel('TEMPRATUER,kev');
ylabel('��ӳ��ϵ����(10^-15)cm^3/sec');