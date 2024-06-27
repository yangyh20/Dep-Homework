#include<iostream>
using namespace std;
class Point {
private:
	static int count;
	double x;
	double y;
public:
	Point( double,double);
	~Point();
	static void getcount();
	void showPoint();
};
int Point::count = 0;
Point::Point(double x,double y):x(x),y(y){
	count++;
}
Point::~Point() {}
void Point::getcount() {
	cout << count << endl;
}
void Point::showPoint() {
	cout << x << ":" << y;
}
int main() {
	double x = 1.0, y = 1.0;
	for (int i = 0; i < 10000; i++) {
		cin >> x >> y;
		if (x == 0 && y == 0)break;
		Point poi(x, y);
	}
	
	Point::getcount();
	return 0;
}