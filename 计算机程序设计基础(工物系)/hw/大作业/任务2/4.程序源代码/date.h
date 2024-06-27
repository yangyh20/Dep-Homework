#ifndef _DATE_H_
#define _DATE_H_
class Date {
private:
	int year;
	int month;
	int day;
	int totalDays;
	int totalMonths;
public:
	Date(int year = 1, int month = 1, int day = 1);
	static Date read();
	int getYear()const { return year; }
	int getMonth()const { return month; }
	int getDay()const { return day; }
	int getMaxDay()const;
	bool isLeapYear()const {
		return year % 4 == 0 && year % 100 != 0 || year % 400 == 0;
	}
	void show()const;
	int operator -(const Date& date) const {
		return totalDays - date.totalDays;
	}
	bool operator < (const Date& date)const {
		return totalDays < date.totalDays;
	}
	int operator *(const Date & date)const {
		return totalMonths - date.totalMonths;
	}
};
#endif