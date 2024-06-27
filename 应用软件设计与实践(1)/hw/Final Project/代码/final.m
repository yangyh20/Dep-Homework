function [cellsh]=final(pl,ph,tl,th)
dist=(th-tl)/16;
y=[tl:dist:th];% the range of temperature

pp=[0.001,0.002,0.005,0.01,0.02,0.05,0.1,0.2,0.5,1,2,5,10,20,50,80];

x=[pl];
for(i=1:16)
   if(pl<pp(i)&pp(i)<ph)
       x=[x,pp(i)];
   end
end
x=[x,ph]; % the range of pressure


[p,t]=meshgrid(x,y);

s=entropy(p,t);
h=enthalpy(p,t);


[cs,ww]=contour(s,h,p,x,'r');
clabel(cs,ww,'fontsize',8,'LabelSpacing',400,'color','r');
hold on;
[css,www]=contour(s,h,t,[tl:dist:th],'b');
clabel(css,www,'fontsize',8,'LabelSpacing',900,'color','b');

cellsh{1,1}=s;
cellsh{1,2}=h;
