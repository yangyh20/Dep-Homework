#ifndef _INSURANCE_H_
#define  _INSURANCE_H_
#include<iostream>
#include<cmath>
#include"date.h"
//#include"account.h"
using namespace std;
//����һ�����ϱ��գ�ҽ�Ʊ��գ�ʧҵ���գ����˱��գ��������գ�ס��������
class project1;//���ϱ���
class project2;
class project3;
class insurance {
public:
	/*insurance() {};*/
	insurance(double base, int age) :base(base), age(age) {};
	double getbase() { return base; }
	int getage() { return age; }
	virtual int getmonth()=0;
	virtual double getmoney()=0;
	//virtual void showmoney()=0;
	virtual double getannuity(double d)=0;
	/*virtual void showannuity()=0;*/
	virtual int getindex() = 0;
	virtual int getyear() = 0;
	/*virtual double settle(Date)=0;*/
protected:
	double base;//��һ��ȵ��깤��
	int age;//Ԥ����������
};
class project1 :public insurance {
public:
	project1(double d, int i,int y/*,int f,*/,int in,Date date) :insurance(d, i),year(y),/*futuresalary(f)*/ index(in),d(date){};
	/*project1(insurance p) {};*/
	int array[7][2] = { {40,233},{45,216},{50,195},{55,170},{60,139},{65,101},{70,56} };
	int getmonth();
	double getmoney();
	/*void showmoney();*/
	double getannuity(double d);
	/*void showannuity();*/
	int getindex() { return index; }
	int getyeared() { return yeared; }
	int getyear() { return year; }
	/*double settle(Date);*/
private:
	Date d;
	int year;//Ԥ�ƽ������ϱ�������
	//int futuresalary;//Ԥ��δ�����˾��¹���
	int month;//�Ʒ�����
	double annuity;//ÿ�����Ͻ�
	double money;//ÿ��Ӧ�������ϱ��ս��
	int index;//���ÿ���
	int yeared;//Ŀǰ����
};
//void project1::begin(project1& a) {
//	a.getmonth();
//	a.getmoney();
//	a.getannuity();
//	a.showmoney();
//	a.showannuity();
//}
//int main() {
//	double base;
//	int age, year, futuresalary;
//	cout << "����������ȵ��깤��:";
//	cin >> base;
//	cout << "������Ԥ���������䣺";
//	cin >> age;
//	insurance p(base, age);
//	project1 a(base, age);
//	cout << "������Ԥ�ƽ������ϱ���������";
//	cin >> year;
//	a.year = year;
//	cout << "������Ԥ��δ�����˾��¹���:(����Ϊ��λ)";
//	cin >> futuresalary;
//	a.futuresalary = futuresalary;
//	a.begin(a);
//	a.withdraw(date, amount, desc);
//	return 0;
//}
#endif