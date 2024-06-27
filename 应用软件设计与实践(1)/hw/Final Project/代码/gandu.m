function[cellsh1]=gandu(pl,ph);
pp=[0.001,0.002,0.005,0.008,0.01:0.01:0.1,0.2,0.5,1:10];
x1=0.2:0.05:1; 
x=[pl];
if(ph>10)ph=10;
end
for(i=1:20)
    if(pl<pp(i)&pp(i)<ph)
        x=[x,pp(i)];
    end
end
x=[x,ph];% the range of pressure

[x11,p11]=meshgrid(x1,x);
t11=t_sat(p11);

s1=x11.*entropy_r2(p11,t11)+(1-x11).*entropy_r1(p11,t11);
h1=x11.*enthalpy_r2(p11,t11)+(1-x11).*enthalpy_r1(p11,t11);
[cs,ww]=contour(s1,h1,x11,x1,'g');
clabel(cs,ww,'fontsize',8,'color','g');
cellsh1={s1,h1};
