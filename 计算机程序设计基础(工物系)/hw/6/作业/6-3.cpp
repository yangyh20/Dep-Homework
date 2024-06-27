#include<iostream>
using namespace std;
class Array {
private:
	int* ptr;
	int size;
public:
	Array(int size) :size(size) {
		ptr = new int[size];
	}
	~Array() {
		delete ptr;
	}
	int& getarr(int i) {
		return ptr[i];
	}
};
int main() {
	int n = 0, k = 0,a=0;
	cin >> n>> k;
	Array arr(n);
	for (int i = 0; i < n; i++) {
		cin >> a;
		arr.getarr(i) = a;/*表达式必须是可以修改的左值成员的时候，在函数返回类型后加一个&*/
	}
	for (int j = 0; j < n-1; j++) {
		for (int k = 0; k < n-1 - j; k++) {
			if (arr.getarr(k) >arr.getarr(k+1)) {
				int temp = arr.getarr(k);
				arr.getarr(k)= arr.getarr(k+1);
				arr.getarr(k+1) = temp;
			}
		}
	}
	cout << arr.getarr(k-1) << endl;
	return 0;
}