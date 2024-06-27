#include<iostream>
using namespace std;
class animal {
public:
	int age;
};
class dog :public animal{
public:
	void setage(int n) { age = n; }
};
int main() {
	dog jiali;
	jiali.setage(3);
	cout << jiali.age << endl;
	return 0;
}