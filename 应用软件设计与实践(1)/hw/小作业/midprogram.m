%��1�ͽ�2�ı仯��Χ���仯����
x=20:0.1:30;
y=40:0.1:60;
[phi1,phi2]=meshgrid(x,y);

%��������ƽ�⹫ʽ��N*h=OC*G*cos(phi1)   ����NΪ�͸���������AB����hΪO�㵽ABֱ�ߵľ��룻GΪ��������
%�������Ҷ���h=0A*OB*sin(20+phi1+phi2)/sqrt(OA^2+OB^2-2*OA*OB*cos(20+phi1+phi2))
%�߽�������AB=1.2m,phi1=-20;AB=2.2m,phi1=80   ���뻯���ɵ��͸�����N����phi1��phi2�ĺ�����
N=4*cos(phi1*pi/180)*4.*sqrt(1.44+2*1.7*cos(phi2*pi/180)./(cos(phi2*pi/180)-cos(100*pi/180+phi2*pi/180))-2*1.7.*cos(pi/9+phi1*pi/180+phi2*pi/180)./(cos(phi2*pi/180)-cos(100*pi/180+phi2*pi/180)))./...
    (1.7.*sin(pi/9+phi1*pi/180+phi2*pi/180)./(cos(phi2*pi/180)-cos(100*pi/180+phi2*pi/180)));%Ϊһ����ά����


[c d]=max(N');%ÿ��phi2��Ӧ���͸��������ֵ
[e f]=min(c);%�͸�������ֵ����Сֵ
PHI1=x(d(f));
PHI2=y(f);


fprintf('force = %f �� \n',e);
fprintf('PHI1 = %f �� \n',x(d(f)));
fprintf('PHI2 = %f �� \n',y(f));
ab=1.7/(cos(PHI2*pi/180)-cos(100*pi/180+PHI2*pi/180));% ab=OA*OB
abab=1.44+2*ab*cos(PHI2*pi/180);% abab=OA^2+OB^2
fprintf('OA = %f �� \n',0.5*(sqrt(abab+2*ab)+sqrt(abab-2*ab)));
fprintf('OB = %f �� \n',0.5*(sqrt(abab+2*ab)-sqrt(abab-2*ab)));


figure;
mesh(phi1,phi2,N);
set(gca,'xDir','reverse');
grid on;
xlabel('phi1');
ylabel('phi2');


