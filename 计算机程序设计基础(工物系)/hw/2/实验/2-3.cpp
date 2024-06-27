#include<iostream>
using namespace std;
int main()
{
	int choice = 0;
	float radius = 0, a = 0, b = 0, area = 0;
	const float pi = 3.1416;
	cout << "图形的类型为?\n（1-圆形  2-长方形  3-正方形）";
	cin >> choice;
	switch (choice) {
	case 1:cout << "请输入圆的半径：";
		cin >> radius;
		area = pi * radius * radius;
		cout << "圆的面积为" << area;
		break;
	case 2:cout << "请输入长方形的长和宽：";
		cin >> a >> b;
		area = a * b;
		cout << "长方形的面积为" << area;
		break;
	case 3:cout << "请输入正方形的边长：";
		cin >> a;
		area = a * a;
		cout << "正方形的面积为" << area;
		break;
	default:cout << "输入的不是标准数值！";
	}
	return 0;
}