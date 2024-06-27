#ifndef _INSURANCE_H_
#define  _INSURANCE_H_
#include<iostream>
#include<cmath>
#include"date.h"
//#include"account.h"
using namespace std;
//五险一金：养老保险；医疗保险；失业保险；工伤保险；生育保险；住房公积金；
class project1;//养老保险
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
	double base;//上一年度的年工资
	int age;//预计退休年龄
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
	int year;//预计缴纳养老保险年数
	//int futuresalary;//预计未来市人均月工资
	int month;//计发月数
	double annuity;//每月养老金
	double money;//每月应缴纳养老保险金额
	int index;//所用卡号
	int yeared;//目前年龄
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
//	cout << "请输入上年度的年工资:";
//	cin >> base;
//	cout << "请输入预计退休年龄：";
//	cin >> age;
//	insurance p(base, age);
//	project1 a(base, age);
//	cout << "请输入预计缴纳养老保险年数：";
//	cin >> year;
//	a.year = year;
//	cout << "请输入预计未来市人均月工资:(以万为单位)";
//	cin >> futuresalary;
//	a.futuresalary = futuresalary;
//	a.begin(a);
//	a.withdraw(date, amount, desc);
//	return 0;
//}
#endif