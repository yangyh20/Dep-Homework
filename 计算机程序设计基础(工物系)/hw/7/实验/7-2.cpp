#include<iostream>
using namespace std;
class baseclass {
public:
	int number;
	baseclass(int n) :number(n) { cout << "base构造ing..." << endl; }
	~baseclass() { cout << "base析构ing..." << endl; }
};
class derivedclass :public baseclass {
public:
	derivedclass(int n):baseclass(n){ cout << "derived构造ing..." << endl; }
	~derivedclass() { cout << "derived析构ing..." << endl; }
};
int main() {
	derivedclass test(2);
	return 0;
}