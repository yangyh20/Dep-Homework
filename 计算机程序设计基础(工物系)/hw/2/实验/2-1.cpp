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
	cout << "��Ȼ��1-10֮��Ϊ" << sum << endl;
	return 0;
}