#include<iostream>
using namespace std;
struct mytime {
	int year;
	int month;
	int day;
	int hour;
	int minute;
	int second;
};
int main()
{
	mytime now = { 2021,8,31,23,34,17 };
	cout << "please input the year:";
	cin >> now.year;
	cout << "please input the month:";
	cin >> now.month;
	cout << "please input the day:";
	cin >> now.day;
	cout << "please input the hour:";
	cin >> now.hour;
	cout << "please input the minute:";
	cin >> now.minute;
	cout << "please input the second:";
	cin >> now.second;
	cout << "now the time is : " << now.year << "/" << now.month << "/" << now.day << " " << now.hour << ":" << now.minute << ":" << now.second << endl;
	return 0;
}