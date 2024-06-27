#include<iostream>
using namespace std;
int main() {
	int n1 = 0,n2 = 0;
	cin >> n1 >> n2;
	char(*ptr1) = new char[n1];
	char(*ptr2) = new char[n2];
	for (int i = 0; i <n1; i++) {
		cin >> ptr1[i];
	}
	for (int i = 0; i < n2; i++) {
		cin >> ptr2[i];
	}
	for (int i = 0; i < n1; i++) {
		cout<<ptr1[i];
	}
	for (int i = 0; i < n2; i++) {
		cout<<ptr2[i];
	}
	cout << endl;
	delete ptr1;
	delete ptr2;
	return 0;
}