#include<iostream>
using namespace std;
class baseclass {
public:
	int number;
	baseclass(int n) :number(n) { cout << "base����ing..." << endl; }
	~baseclass() { cout << "base����ing..." << endl; }
};
class derivedclass :public baseclass {
public:
	derivedclass(int n):baseclass(n){ cout << "derived����ing..." << endl; }
	~derivedclass() { cout << "derived����ing..." << endl; }
};
int main() {
	derivedclass test(2);
	return 0;
}