#include<iostream>
using namespace std;
int fei(int n) {
	if (n == 0)return 1;
	else if (n == 1)return 1;
	else return fei(n - 1) + fei(n - 2);
}
int main()
{
	int num = 0;
	cin >> num;
	cout << fei(num) << endl;
	return 0;
}