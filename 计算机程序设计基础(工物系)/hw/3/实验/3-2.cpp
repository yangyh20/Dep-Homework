#include<iostream>
using namespace std;
int Max1(int a, int b) {
	return a > b ? a : b;
}
int Max1(int a, int b, int c) {
	if (a > c)return a > b ? a : b;
	else return c > b ? c : b;
}
double Max1(double a, double b) {
	return a > b ? a : b;
}
double Max1(double a, double b, double c) {
	if (a > c)return a > b ? a : b;
	else return c > b ? c : b;
}
int main()
{
	int n1 = 0, n2 = 0, n3 = 0;
	double m1 = 0, m2 = 0, m3 = 0;
	return 0;

}