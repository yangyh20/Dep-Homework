#include<iostream>
using namespace std;
int main() {
	int num = 0,sum=0,zhon=0;
	cin >> num;
	for (int i = 1; i < 11; i++) {
		zhon = num % 10;
		sum = (zhon * 1024 + sum) / 2;
		num = num/10;
	}
	cout << sum << endl;
	return 0;
}