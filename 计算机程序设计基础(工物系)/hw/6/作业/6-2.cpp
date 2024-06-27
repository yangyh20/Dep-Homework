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
	int n = 0;
	cin >> n;
	Array arr(n);
	int a = 0;
	for (int i = 0; i < n; i++) {
		cin >> a;
		arr.getarr(i) = a;/*表达式必须是可以修改的左值成员的时候，在函数返回类型后加一个&*/
	}
	int max = arr.getarr(0),min=arr.getarr(0);
	for (int i = 1; i < n; i++) {
		if (max < arr.getarr(i))max = arr.getarr(i);
		if (min >arr.getarr(i))min = arr.getarr(i);
		}
	cout << max -min<< endl;
	return 0;
}