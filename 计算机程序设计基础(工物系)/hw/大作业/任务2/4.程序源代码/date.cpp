#include"date.h"
#include<iostream>
#include<cstdlib>
using namespace std;
namespace {
	const int DAYS_BEFORE_MONTH[] = { 0,31,59,90,120,151,181,212,243,273,304,334,365 };//因为总数少，所以可以直接将从新年第一天到某个月的天数枚举出来，方便调用
}
Date::Date(int year, int month, int day) :year(year), month(month), day(day) {
	if (day <= 0 || day > getMaxDay()) {
		cout << "Invalid date:";
		show();
		cout << endl;
		exit(1);
	}
	int years = year - 1;
	totalDays = years * 365 + years / 4 - years / 100 + years / 400 + DAYS_BEFORE_MONTH[month - 1] + day;//计算从1/1/1到今天的总天数，且精确计算了闰年，但也许从2000年开始就可以了，可以减少数据存储长度
	totalMonths = years * 12 + month;
	if (isLeapYear() && month > 2)totalDays++;
}
int Date::getMaxDay()const {
	if (isLeapYear() && month == 2)return 29;
	else return DAYS_BEFORE_MONTH[month] - DAYS_BEFORE_MONTH[month - 1];
}//得到每个月的天数，闰年2月是29天
void Date::show()const {
	cout << getYear() << "-" << getMonth() << "-" << getDay();
}//显示时间
Date Date::read() {
	int year, month, day;
	char c1, c2;
	cin >> year >> c1 >> month >> c2 >> day;
	return Date(year, month, day);
}//读入Date类数据，且输入的格式十分灵活