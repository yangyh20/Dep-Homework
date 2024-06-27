#include<iostream>
using namespace std;
class employee {
	string name;
	string adress;
	string city;
	int mail;
public:
	employee(string n, string a, string c, int m) :name(n), adress(a), city(c), mail(m) {}
	employee() :name("xx"), adress("xx"), city("xx"), mail(0) {}
	void changename(string n) { name = n; }
	void display() {
		cout << name << endl << adress << endl << city << endl << mail << endl;
	}
};
int main() {
	employee arr[5];
	return 0;
}