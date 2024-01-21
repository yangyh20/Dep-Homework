function [ ] = cross2(  )
%CROSS2 Summary of this function goes here
%  Detailed explanation goes here
m1=2*938e3;m2=3*938e3;
mr=m1*m2/(m1+m2);
k1=(m1^1.5)/(((2*pi)^1.5)*mr);



lgjiemian=[-10.856 -9.3303 -7.9804 -6.7876 -5.7342 -4.8046 -3.9851 -3.2632 -2.6273 -2.067 -1.5731 -1.136 -0.74739 -0.3991 -0.084144 0.1996 0.44475 0.62472 0.69946 0.65748 -0.53665 0.38188 0.21833 0.05609 -0.10137 -0.25289 -0.39774 -0.53488 -0.66266 -0.77855 -0.87942 -0.96188 -1.0227 -1.059 -1.076 -1.1019 -1.1537 -1.2286 -1.3061 -1.3787 -1.4451];
jiemian=10.^lgjiemian;
result=[0:0.1:3.5];
count1=1;
count2=1;
for i=0:0.1:3.5
    t=10.^i;
    result(count1)=0;
    count2=1;
    for j=0:0.1:4;
        e=10.^j;
        ans=jiemian(count2).*exp(-(m1.*e)./(mr.*t)).*(e.^2);
        ans=ans.*16.*sqrt(2.*(m1.^3).*pi)./((t.^1.5).*(m2.^2).*mr);
        count2=count2+1;
        result(count1)=result(count1)+ans;
    end
    count1=count1+1;
end

x=[0:0.1:3.5];
t=10.^x;
loglog(t,result);
xlabel('TEMPRATUER,kev');
ylabel('反映率系数，(10^-15)cm^3/sec');