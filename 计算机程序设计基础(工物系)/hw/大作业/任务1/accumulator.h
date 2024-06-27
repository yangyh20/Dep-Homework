#ifndef _ACCUMULATEO_H_
#define _ACCUMULATOR_H_
#include"date.h"
class Accumulator {
private:
	Date lastDate;
	double value;
	double sum;
public:
	double getSum(const Date& date)const {
		return sum + value * (date-lastDate);
	}
	Accumulator(const Date&date,double value):lastDate(date),value(value),sum(0){}
	void change(const Date& date, double value) {
		sum = getSum(date);
		lastDate = date;
		this->value = value;
	}
	void reset(const Date& date, double value) {
		lastDate = date;
		this->value = value;
		sum = 0;
	}
};
#endif