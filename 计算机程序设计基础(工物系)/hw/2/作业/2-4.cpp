#include<iostream>
using namespace std;
int main() {
	long long int num = 0;
	cin >> num;
	int sum = num, zhon = 0, num1 = num; 
	do {
		num = sum;
		sum = 0;
		num1 = num;
		while (num1 > 0) {
			zhon = num1 % 10;
			sum = sum + zhon;
			num1= num1/ 10;
		}
	} while (num != sum);
	cout << num << endl;
	return 0;
}