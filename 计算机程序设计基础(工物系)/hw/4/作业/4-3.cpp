#include<iostream>
using namespace std;
class PassWord {
private:
	int k;
public:
	PassWord(int k);
	char convert(char a);
};
PassWord::PassWord(int k) :k(k) {}
char PassWord::convert(char a) {
	a = (a - 65) * k % 26 + 65;
	return a;
}
int main()
{
	int k = 0, num = 0;
	cin >> k >> num;
	char input[10000];
	PassWord code(k);
	for (int i = 0; i < num; i++) {
		cin >> input[i];
		input[i] = code.convert(input[i]);
	}
	for (int j = 0; j < num; j++) {
		cout << input[j];
	}
	cout << endl;
	return 0;
}