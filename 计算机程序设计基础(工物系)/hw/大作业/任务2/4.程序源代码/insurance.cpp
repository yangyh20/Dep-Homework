#include<iostream>
using namespace std;
#include"insurance.h"
int project1::getmonth() {
	for (int i = 0; i <= 7; i++)
	{
		if (array[i][0] == age)month = array[i][1];
	}
	return month;
};//得到计发月数
double project1::getmoney() {
	double a = 0;
	a = base * 0.08 / 12;
	return a;
}
//void project1::showmoney() {
//	cout << "本年每月应缴纳养老保险金额为：" << getmoney() << endl;
//}//输出
double project1::getannuity(double futuresalary) {
	double sum = 0; int m = 0; int last = 0;
	//for (int i = 0; i < year; i++)
	//{
	//	cin >> m;
	//	if (m == 0)break;
	//	sum = m * 0.08 + sum;
	//	last = m;
	//	sum = sum + (year - i) * 0.08 * last;
	//}/*sum = sum + (year - i) * 0.08 * last */

	return futuresalary * 100 + sum / month;
}
//void project1::showannuity() {
//	cout << "预计您退休后每月养老金为：" << getannuity() << endl;
//}//输出
//double project1::settle(Date date) {
//	sum = (d * date) * base * 0.08 / 12;
//}
