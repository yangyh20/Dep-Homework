#include <iostream>
using namespace std;
class Date;//************Ҫ�ǵ�������������*****************
class Time
{
private:
    int hour;
    int minute;
    int second;
public:
    Time(int hh, int mm, int ss) :hour(hh), minute(mm), second(ss) {}
    void display(Date&);
};
class Date {
private:
    int year;
    int month;
    int day;
    friend Time;
public:
    Date(int, int, int);
};
Date::Date(int y,int m,int d):year(y),month(m),day(d){}
void Time::display(Date&da) {
    cout << da.year << "/" << da.month << "/" << da.day << endl;
    cout << hour << ":" << minute << ":" << second << endl;
}
/*����Date��Ķ��壬��������Ԫ�� */
/*���display�����Ķ��� */
int main()
{
    int year, month, day;
    cin >> year >> month >> day;
    Date d1(year, month, day);
    int hour, minute, second;
    cin >> hour >> minute >> second;
    Time t1(hour, minute, second);
    t1.display(d1);
    return 0;
}