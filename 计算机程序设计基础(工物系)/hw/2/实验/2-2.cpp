#include<iostream>
using namespace std;
int main()
{
	int sum = 0;
	for (int i = 1; i < 11; i++) {
		sum += i;
	}
	cout << "自然数1-10之和为" << sum << endl;
	return 0;
}