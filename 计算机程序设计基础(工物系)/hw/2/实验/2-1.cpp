#include<iostream>
using namespace std;
int main()
{
	int sum = 0;
	int i = 1;
	do {
		sum += i;
		i++;
	} while (i < 11);
	cout << "自然数1-10之和为" << sum << endl;
	return 0;
}