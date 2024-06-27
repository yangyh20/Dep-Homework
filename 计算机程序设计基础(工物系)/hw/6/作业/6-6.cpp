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
	int heng = 0, lie = 0;
	cin >> heng >> lie;
	Array arr(heng*lie); 
	for (int i = 0; i < heng * lie; i++) {
		cin >> arr.getarr(i);
	}
	for (int j = 0; j < lie; j++) {
		for (int k = 0; k < heng; k++) {
			cout << arr.getarr(j * heng + k)<<" ";
		}
		cout << endl;
	}
	return 0;
}