#include<iostream>
using namespace std;
class Array {
private:
	int* ptr;
	int size;
public:
	Array(int size):size(size){
		ptr = new int[size];
	}
	~Array() {
		delete ptr;
	}
	int &getarr(int i) {
		return ptr[i];
	}
};
int main() {
	int n=0,sum=0,max=0;
	cin >> n;
	Array arr(n);
	int a=0;
	for (int i = 0; i < n; i++) {
		cin >> a;
		arr.getarr(i) = a;/*���ʽ�����ǿ����޸ĵ���ֵ��Ա��ʱ���ں����������ͺ��һ��&*/
	}
	for (int i = 0; i < n; i++) {
		sum = 0;
		for (int j = 0; j < n - i ; j++) {
			sum+= arr.getarr(i + j);
			if (max < sum)max =sum;
		}
	}
	cout << max << endl;
	return 0;
}