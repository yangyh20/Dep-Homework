#include<iostream>
using namespace std;
class employee {
	string name;
	string adress;
	string city;
	int mail;
public:
	employee(string n,string a,string c,int m):name(n),adress(a),city(c),mail(m){}
	void changename(string n) { name = n; }
	void display() {
		cout << name << endl << adress << endl << city << endl << mail << endl;
	}
};
int main() {
	employee emp("张三", "红星街", "北京市",646300);
	emp.display();
	emp.changename("李四");
	emp.display();
	return 0;
}