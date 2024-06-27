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
	a = a-65 - 26;
	int t=0,b=0;
	for (int j = 0; j < k; j++) {
		a += 26;
		if (a % k == 0 && a / k >= 0 && a / k < 26) {
			t++;
			b = a / k + 65;
		}
	}
	if (t == 1)return b;
	else return '0';
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