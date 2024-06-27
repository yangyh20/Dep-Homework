#include<iostream>
using namespace std;
int main() {
	int(*ptr)[3];
	ptr=new int[3][3];
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			cin >>ptr[i][j];
		}
	}
	for (int i = 0; i < 3; i++) {
		for (int j = i; j < 3; j++) {
			int temp = ptr[i][j];
			ptr[i][j] = ptr[j][i];
			ptr[j][i] = temp;
		}
	}
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			cout << ptr[i][j] << " ";
		}
		cout << endl;
	}
	delete[] ptr;
	return 0;
}