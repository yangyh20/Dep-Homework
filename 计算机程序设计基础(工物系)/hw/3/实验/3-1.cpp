#include<iostream>
using namespace std;
float Convert(float TempFer) {
	return (TempFer - 32.0) * 5 / 9.0f;
}
int main()
{
	float temp = 0;
	cin >> temp;
	cout << Convert(temp) << endl;
	return 0;
}