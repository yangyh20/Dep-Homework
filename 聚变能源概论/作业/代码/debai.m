function [ output_args ] = debai( input_args )
%DEBAI Summary of this function goes here
%  Detailed explanation goes here


logkt=-2:0.1:5;
kt=10.^logkt;
logd=[1 -2 -4 -6 -8];
d=[10e1 10e-2 10e-4 10e-6 10e-8];
%ne=[[-2:0.1:5],kt kt kt kt ];
ne1=5.52621e7.*kt./(d(1).^2);
ne2=5.52621e7.*kt./(d(2).^2);
ne3=5.52621e7.*kt./(d(3).^2);
ne4=5.52621e7.*kt./(d(4).^2);
ne5=5.52621e7.*kt./(d(5).^2);
    %loglog(kt,ne);
    


n=[10e3 10e6 10e9];
ne6=1.68765e23.*(kt.^3)./(n(1).^2);
ne7=1.68765e23.*(kt.^3)./(n(2).^2);
ne8=1.68765e23.*(kt.^3)./(n(3).^2);
loglog(kt,ne1,kt,ne2,kt,ne3,kt,ne4,kt,ne5,kt,ne6,kt,ne7,kt,ne8);

legend('\nambda D=10e1','\nambda D=10e-2','\nambda D=10e-4','\nambda D=10e-6','\nambda D=10e-8','ND=10e3','ND=10e6','ND=10e9',2)
text(30000,10e20,'Typical fusion reactor');
text(30000,10e20,'\diamondsuit');

text(1000,10e23,'Typical fusion experiment');
text(1000,10e23,'\diamondsuit');

text(0.05,10e11,'Typical ionosphere');
text(0.05,10e11,'\diamondsuit');

text(1.5,10e17,'Typical radiofrequency plasma');
text(1.5,10e17,'\diamondsuit');

text(0.1,10e14,'Typical flame');
text(0.1,10e14,'\diamondsuit');

text(100,10e25,'Typical laser plasma');
text(100,10e25,'\diamondsuit');

text(0.01,10e6,'Interplanetary space');
text(0.01,10e6,'\diamondsuit');
axis([10e-2 10e5 10e6 10e28])
xlabel('KT')
ylabel('ne')