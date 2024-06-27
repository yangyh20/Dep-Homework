#include<iostream>
using namespace std;
bool rt(int a, int b, int c) {
	return ((a * a + b * b == c * c)||(a*a+c*c==b*b)||(b*b+c*c==a*a));
}
int main()
{
	int a = 0, b = 0, c = 0;
	cin >> a >> b >> c;
	if (rt(a,b,c)) {
		cout << "True" << endl;
	}
	else {
		cout << "False" << endl;
	}
	return 0;
}