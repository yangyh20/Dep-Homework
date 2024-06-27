function [ s ] = entropy( p,t )
%ENTROPY Summary of this function goes here
%  Detailed explanation goes here
s=t.*0;
ps = p_sat(t);
ts = t_sat(p);
t23 = t_B23(p);
aa=(t>=273.15 & t <=623.15 & p>= ps & p <= 100);
bb=(((t>= ts & t<=623.15)|t >= t23&t>=623.15)&t<=1073.15);
cc=(t>=623.15&t<=t23);
dd=(t>=1073.15&t<=2273.15&p<=10);
 s(aa)=entropy_r1(p(aa),t(aa));
 s(bb)=entropy_r2(p(bb),t(bb));
 s(cc)=entropy_r3(p(cc),t(cc));
 s(dd)=entropy_r5(p(dd),t(dd));
