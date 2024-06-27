#include<iostream>
using namespace std;
int element(int num, int ele) {
	while (num % ele == 0) {
		num = num / ele;
	}
	return num;
}
int main()
{
	int num=0;
	cin >> num;
	if (num == 1)cout << "False" << endl;
	else {
		num = element(num, 2);
		num = element(num, 3);
		num = element(num, 5);
		if (num == 1)cout << "True" << endl;
		else cout << "False" << endl;
	}
	return 0;
}