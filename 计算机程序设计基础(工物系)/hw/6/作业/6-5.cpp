#include<iostream>
#include<string>
using namespace std;
int main() {
	string excel;
	cin >> excel;
	int sum = 0,temp=1;
	for (int i = excel.length()-1; i >=0; i--) {
		sum += int(excel[i] - 64)*temp;
		temp *= 26;
	}
	cout << sum << endl;
	return 0;
}