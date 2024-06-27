#include<iostream>
using namespace std;
int main()
{
	int num = 0;
	cin >> num;
	int sum = 0;
	for (int i = 1; i < num; i++) {
		if (num % i == 0) {
			sum += i;
		}
	}
	if (sum == num)cout << "True" << endl;
	else cout << "False" << endl;
	return 0;
}