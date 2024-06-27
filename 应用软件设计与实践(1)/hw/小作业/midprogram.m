%角1和角2的变化范围及变化步长
x=20:0.1:30;
y=40:0.1:60;
[phi1,phi2]=meshgrid(x,y);

%运用力矩平衡公式：N*h=OC*G*cos(phi1)   其中N为油缸受力，沿AB方向；h为O点到AB直线的距离；G为负载重力
%运用余弦定理：h=0A*OB*sin(20+phi1+phi2)/sqrt(OA^2+OB^2-2*OA*OB*cos(20+phi1+phi2))
%边界条件：AB=1.2m,phi1=-20;AB=2.2m,phi1=80   代入化简后可得油缸受力N关于phi1和phi2的函数：
N=4*cos(phi1*pi/180)*4.*sqrt(1.44+2*1.7*cos(phi2*pi/180)./(cos(phi2*pi/180)-cos(100*pi/180+phi2*pi/180))-2*1.7.*cos(pi/9+phi1*pi/180+phi2*pi/180)./(cos(phi2*pi/180)-cos(100*pi/180+phi2*pi/180)))./...
    (1.7.*sin(pi/9+phi1*pi/180+phi2*pi/180)./(cos(phi2*pi/180)-cos(100*pi/180+phi2*pi/180)));%为一个二维矩阵


[c d]=max(N');%每个phi2对应的油缸受力最大值
[e f]=min(c);%油缸受力峰值的最小值
PHI1=x(d(f));
PHI2=y(f);


fprintf('force = %f 吨 \n',e);
fprintf('PHI1 = %f 度 \n',x(d(f)));
fprintf('PHI2 = %f 度 \n',y(f));
ab=1.7/(cos(PHI2*pi/180)-cos(100*pi/180+PHI2*pi/180));% ab=OA*OB
abab=1.44+2*ab*cos(PHI2*pi/180);% abab=OA^2+OB^2
fprintf('OA = %f 米 \n',0.5*(sqrt(abab+2*ab)+sqrt(abab-2*ab)));
fprintf('OB = %f 米 \n',0.5*(sqrt(abab+2*ab)-sqrt(abab-2*ab)));


figure;
mesh(phi1,phi2,N);
set(gca,'xDir','reverse');
grid on;
xlabel('phi1');
ylabel('phi2');


