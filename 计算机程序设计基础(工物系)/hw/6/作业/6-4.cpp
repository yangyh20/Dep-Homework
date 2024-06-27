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
	int n = 0, a = 0,t=0,uni=0;
	cin >> n ;
	Array arr(n);
	for (int i = 0; i < n; i++) {
		cin >> a;
		arr.getarr(i) = a;/*表达式必须是可以修改的左值成员的时候，在函数返回类型后加一个&*/
	}
	for (int j = 0; j < n ; j++) {
		t = 0;
		for (int k = 0; k < n; k++) {
			if (k != j) {
				if (arr.getarr(j) == arr.getarr( k))t += 1;
			}
		}
		if (t == 0) {
			uni = arr.getarr(j);
			break;
		}
	}
	cout << uni << endl;
	return 0;
}