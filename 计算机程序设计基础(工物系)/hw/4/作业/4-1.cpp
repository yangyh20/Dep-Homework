#include<iostream>
using namespace std;
class Interger {
private:
	int num;
public:
	Interger(int num);
	int gcd(Interger b);
};
Interger::Interger(int num) :num(num){}
int Interger::gcd(Interger b) {
	int c = num > b.num ? num : b.num;
	int d =num < b.num ?num : b.num;
	int shang = 0;
	do {
		shang = c % d;
		c = d;
		d = shang;
	} while (shang != 0);
	return c;
}
int main()
{
	int num1 = 0, num2 = 0;
	cin >> num1 >> num2;
	Interger a(num1);
	Interger b(num2);
	cout << a.gcd(b) << endl;
	return 0;
}