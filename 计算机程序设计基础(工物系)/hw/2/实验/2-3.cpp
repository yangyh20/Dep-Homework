#include<iostream>
using namespace std;
int main()
{
	int choice = 0;
	float radius = 0, a = 0, b = 0, area = 0;
	const float pi = 3.1416;
	cout << "ͼ�ε�����Ϊ?\n��1-Բ��  2-������  3-�����Σ�";
	cin >> choice;
	switch (choice) {
	case 1:cout << "������Բ�İ뾶��";
		cin >> radius;
		area = pi * radius * radius;
		cout << "Բ�����Ϊ" << area;
		break;
	case 2:cout << "�����볤���εĳ��Ϳ�";
		cin >> a >> b;
		area = a * b;
		cout << "�����ε����Ϊ" << area;
		break;
	case 3:cout << "�����������εı߳���";
		cin >> a;
		area = a * a;
		cout << "�����ε����Ϊ" << area;
		break;
	default:cout << "����Ĳ��Ǳ�׼��ֵ��";
	}
	return 0;
}