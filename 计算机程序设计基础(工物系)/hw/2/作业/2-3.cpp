#include<iostream>
using namespace std;
int main() 
{
	int row = 0,xing=1;
	cin >> row;
	int kong = row;
	for (int i = 1; i < row + 1; i++) {
		while (kong-i>0) {
			cout << " ";
			kong--;
		}
		kong = row;
		xing = 1;
		while (xing < 2*i) {
			cout << "*";
			xing++;
		}
		cout << "\n";
	}
	for (int i = row+1; i < 2*row; i++) {
		while (i-kong > 0) {
			cout << " ";
			kong++;
		}
		kong = row;
		xing = 1;
		while (xing < 4*row-2*i) {
			cout << "*";
			xing++;
		}
		cout << "\n";
	}
	return 0;
}