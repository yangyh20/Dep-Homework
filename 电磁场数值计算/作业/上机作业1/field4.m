function [  ] = field4(  )
%FIELD4 Summary of this function goes here
%  Detailed explanation goes here
a=[100.0000 100.0000 100.0000 100.0000 100.0000 100.0000 100.0000 100.0000 100.0000 100.0000 100.0000 100.0000 ;
    87.8069 87.8260 87.8839 87.9831 88.1252 88.3091 88.5265 88.7595 88.9818 89.1651 89.2852 89.3269 ;
    75.5754 75.6127 75.7264 75.9227 76.2084 76.5843 77.0369 77.5292 78.0023 78.3926 78.6484 78.7371 ;
    63.2693 63.3224 63.4856 63.7726 64.2008 64.7825 65.5069 66.3175 67.1048 67.7543 68.1781 68.3246;
    50.8571 50.9212 51.1208 51.4808 52.0393 52.8373 53.8902 55.1283 56.3447 57.3409 57.9843 58.2055 ;
    38.3169 38.3836 38.5953 38.9903 39.6377 40.6369 42.0878 43.9602 45.8040 47.2796 48.2122 48.5291 ;
    25.6434 25.7007 25.8861 26.2473 26.8839 27.9843 29.8633 32.8202 35.6309 37.7606 39.0551 39.4867 ;
    12.8554 12.8893 13.0010 13.2286 13.6663 14.5528 16.5606 21.8260 26.1381 29.0762 30.7603 31.3078 ;
    0.0000  0.0000  0.0000  0.0000  0.0000  0.0000  0.0000 11.7847 18.0188 21.6452 23.6017 24.2243];
b=[ 0.0000 11.7847 18.0188 21.6452 23.6017 24.2243
    0.0000  7.2937 12.5064 15.8836 17.7764 18.3862 ;
    0.0000  4.8832  8.8291 11.6057 13.2336 13.7682 ;
    0.0000  3.4094  6.3205  8.4762  9.7835 10.2199 ;
    0.0000  2.4336  4.5669  6.1944  7.2038  7.5447 ;
    0.0000  1.7575  3.3188  4.5303  5.2922  5.5515;
    0.0000  1.2774  2.4200  3.3152  3.8829  4.0770 ;
    0.0000  0.9317  1.7681  2.4270  2.8470  2.9909;
    0.0000  0.6810  1.2935  1.7774  2.0867  2.1929;
    0.0000  0.4983  0.9469  1.3020  1.5293  1.6074 ;
    0.0000  0.3649  0.6936  0.9540  1.1208  1.1781 ;
    0.0000  0.2674  0.5083  0.6992  0.8216  0.8635 ;
    0.0000  0.1961  0.3727  0.5127  0.6023  0.6331  ;
    0.0000  0.1438  0.2734  0.3760  0.4418  0.4643  ;
    0.0000  0.1056  0.2007  0.2760  0.3242  0.3406  ;
    0.0000  0.0776  0.1474  0.2027  0.2380  0.2500  ;
    0.0000  0.0571  0.1084  0.1490  0.1749  0.1837 ;
    0.0000  0.0420  0.0798  0.1096  0.1287  0.1351 ;
    0.0000  0.0310  0.0588  0.0808  0.0948  0.0995 ;
    0.0000  0.0229  0.0435  0.0597  0.0700  0.0734 ;
    0.0000  0.0170  0.0322  0.0442  0.0518  0.0542 ;
    0.0000  0.0127  0.0240  0.0328  0.0384  0.0402 ;
    0.0000  0.0095  0.0179  0.0245  0.0286  0.0299 ;
    0.0000  0.0071  0.0135  0.0184  0.0214  0.0224 ;
    0.0000  0.0054  0.0102  0.0139  0.0161  0.0168 ;
    0.0000  0.0041  0.0078  0.0106  0.0122  0.0127 ;
    0.0000  0.0032  0.0060  0.0081  0.0094  0.0097 ;
    0.0000  0.0025  0.0047  0.0063  0.0073  0.0075 ;
    0.0000  0.0020  0.0037  0.0050  0.0057  0.0058 ;
    0.0000  0.0016  0.0030  0.0040  0.0045  0.0046 ;
    0.0000  0.0013  0.0024  0.0032  0.0036  0.0037 ;
    0.0000  0.0011  0.0020  0.0026  0.0030  0.0030 ;
    0.0000  0.0009  0.0017  0.0022  0.0025  0.0025 ;
    0.0000  0.0008  0.0014  0.0019  0.0021  0.0021 ;
    0.0000  0.0007  0.0012  0.0016  0.0018  0.0018  ;
    0.0000  0.0006  0.0011  0.0014  0.0016  0.0015 ;
    0.0000  0.0005  0.0010  0.0012  0.0014  0.0013 ;
    0.0000  0.0005  0.0009  0.0011  0.0012  0.0012 ;
    0.0000  0.0004  0.0008  0.0010  0.0011  0.0011 ;
    0.0000  0.0004  0.0007  0.0009  0.0010  0.0009  ;
    0.0000  0.0004  0.0006  0.0008  0.0009  0.0008 ;
    0.0000  0.0003  0.0006  0.0007  0.0008  0.0008 ;
    0.0000  0.0003  0.0005  0.0007  0.0007  0.0007 ;
    0.0000  0.0003  0.0005  0.0006  0.0006  0.0006 ;
    0.0000  0.0002  0.0004  0.0005  0.0006  0.0006 ;
    0.0000  0.0002  0.0004  0.0005  0.0005  0.0005 ;
    0.0000  0.0002  0.0003  0.0004  0.0005  0.0005  ;
    0.0000  0.0002  0.0003  0.0004  0.0004  0.0004  ;
    0.0000  0.0002  0.0003  0.0003  0.0004  0.0004 ;
    0.0000  0.0001  0.0002  0.0003  0.0003  0.0003 ;
    0.0000  0.0001  0.0002  0.0003  0.0003  0.0003 ;
    0.0000  0.0001  0.0002  0.0002  0.0003  0.0003 ;
    0.0000  0.0001  0.0002  0.0002  0.0002  0.0002 ;
    0.0000  0.0001  0.0001  0.0002  0.0002  0.0002 ;
    0.0000  0.0001  0.0001  0.0002  0.0002  0.0002 ;
    0.0000  0.0001  0.0001  0.0001  0.0001  0.0001 ;
    0.0000  0.0001  0.0001  0.0001  0.0001  0.0001 ;
    0.0000  0.0000  0.0001  0.0001  0.0001  0.0001 ;
    0.0000  0.0000  0.0001  0.0001  0.0001  0.0001 ;
    0.0000  0.0000  0.0001  0.0001  0.0001  0.0001 ;
    0.0000  0.0000  0.0000  0.0001  0.0001  0.0001 ;
    0.0000  0.0000  0.0000  0.0000  0.0000  0.0000 ;
    0.0000  0.0000  0.0000  0.0000  0.0000  0.0000  ;
    0.0000  0.0000  0.0000  0.0000  0.0000  0.0000  ;
    0.0000  0.0000  0.0000  0.0000  0.0000  0.0000  ;
    0.0000  0.0000  0.0000  0.0000  0.0000  0.0000  ;
    0.0000  0.0000  0.0000  0.0000  0.0000  0.0000;];

c=a;
d=b;
for i=1:9
    for j=1:12
        c(i,j)=a(10-i,j);
    end
end
for i=1:67
    for j=1:6
        d(i,j)=b(68-i,j);
    end
end
x=[7:12];
y=[1:67];
pcolor(x,y,d);


hold on;
xlim([1 12]);
ylim([1 75]);
x=[1:12];
y=[67:75];
pcolor(x,y,c);
shading interp; 

[cs, h]=contour(x,y,c,[ 80  60 40   20 10 0],'w--');
x=[7:12];
y=[1:67];
[cs, h]=contour(x,y,d,[ 80  60 40   20 10 0],'w--');

clabel(cs, h,'LabelSpacing',100, 'FontSize', 10, 'Color', 'k'); 
grid on;
hold off;