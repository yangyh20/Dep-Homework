#include<iostream>
using namespace std;
class Point {
	int x;
	int y;
public:
	Point& operator ++() {
		x += 1;
		y += 1;
		return *this;
	}
	Point operator ++(int) {
		++(*this);
		return *this;
	}
	Point& operator --() {
		x -= 1;
		y -= 1;
		return *this;
	}
	Point operator --(int) {
		--(*this);
		return *this;
	}
};