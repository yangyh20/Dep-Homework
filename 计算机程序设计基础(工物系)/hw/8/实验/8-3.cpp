#include<iostream>
using namespace std;
class Date {
private:
	int year;
	int month;
	int day;
public:
	Date(int y, int m, int d) :year(y), month(m), day(d) {}
	Date() :year(0), month(0), day(0) {}
	int getyear() { return year; }
	int getmonth() { return month; }
	int getday() { return day; }
	void setyear(int y) { year = y; }
	void setmonth(int m) { month = m; }
	void setday(int d) { day = d; }
};
class People {
private:
	char name[11];
	char number[7];
	char sex[3];
	Date birth;
	char id[16];
public:
	People(char* n1, char* n2, char* s, Date b, char* i);
	People();
	~People();
	People(const People& b);
	inline char* getname();
	inline char* getnumber();
	inline char* getsex();
	inline Date getbirth();
	inline char* getid();
	void setname(char* arr) { for (int i = 0; i < 11; i++) { name[i] = arr[i]; } }
	void setnumber(char* n) { for (int i = 0; i < 7; i++) { number[i] = n[i]; } }
	void setsex(char* s) { for (int i = 0; i < 3; i++) { sex[i] = s[i]; } }
	void setbirth(Date& b) { birth = b; }
	void setid(char* ic) { for (int i = 0; i < 16; i++) { id[i] = ic[i]; } }
	bool operator ==(People &p) {
		int t = 0;
		for (int i = 0; i < 16; i++) {
			if (id[i] == p.id[i])t++;
		}
		if (t == 16)return true;
		else return false;
	}
	void operator=(People& b) {
		for (int i = 0; i < 11; i++) { name[i] = b.name[i]; }
		for (int i = 0; i < 7; i++) { number[i] = b.number[i]; }
		for (int i = 0; i < 3; i++) { sex[i] = b.sex[i]; }
		for (int i = 0; i < 16; i++) { id[i] = b.id[i]; }
	}
};
People::People(char* n1, char* n2, char* s, Date b, char* is) : birth(b) {
	for (int i = 0; i < 11; i++) { name[i] = n1[i]; }
	for (int i = 0; i < 7; i++) { number[i] = n2[i]; }
	for (int i = 0; i < 3; i++) { sex[i] = s[i]; }
	for (int i = 0; i < 16; i++) { id[i] = is[i]; }
}
People::People() : birth(0, 0, 0) {
	for (int i = 0; i < 11; i++) { name[i] = 0; }
	for (int i = 0; i < 7; i++) { number[i] = 0; }
	for (int i = 0; i < 3; i++) { sex[i] = 0; }
	for (int i = 0; i < 16; i++) { id[i] = 0; }
}
People::~People() { cout << "正在析构......"; }
People::People(const People& b) : birth(b.birth) {
	for (int i = 0; i < 11; i++) { name[i] = b.name[i]; }
	for (int i = 0; i < 7; i++) { number[i] = b.number[i]; }
	for (int i = 0; i < 3; i++) { sex[i] = b.sex[i]; }
	for (int i = 0; i < 16; i++) { id[i] = b.id[i]; }
}
char* People::getname() { return name; }
char* People::getnumber() { return number; }
char* People::getsex() { return sex; }
Date People::getbirth() { return birth; }
char* People::getid() { return id; }
int main() {
	People arr[5];
	char n1[11], n2[7], s[3], is[16];
	int y = 0, m = 0, d = 0;
	Date b;
	for (int i = 0; i < 1; i++) {
		cout << "这是一位新人，请输入TA的名字：";
		cin >> n1;
		arr[i].setname(n1);
		cout << "请输入TA的编号：";
		cin >> n2;
		arr[i].setnumber(n2);
		cout << "请输入TA的性别：";
		cin >> s;
		arr[i].setsex(s);
		cout << "请输入TA的生日：";
		cin >> y >> m >> d;
		b.setyear(y);
		b.setmonth(m);
		b.setday(d);
		arr[i].setbirth(b);
		cout << "请输入TA的身份证号：";
		cin >> is;
		arr[i].setid(is);
	}
	for (int i = 0; i < 1; i++) {
		cout << "这是一位新人，TA的名字是：";
		for (int j = 0; j < 11; j++) {
			cout << arr[i].getname()[j];
		}
		cout << endl;
		cout << "TA的编号是：";
		for (int j = 0; j < 7; j++) {
			cout << arr[i].getnumber()[j];
		}
		cout << endl;
		cout << "TA的性别是：";
		for (int j = 0; j < 3; j++) {
			cout << arr[i].getsex()[j];
		}
		cout << endl;
		cout << "TA的生日是：";
		cout << arr[i].getbirth().getyear() << "/";
		cout << arr[i].getbirth().getmonth() << "/";
		cout << arr[i].getbirth().getday();
		cout << endl;
		cout << "TA的身份证号是：";
		for (int j = 0; j < 16; j++) {
			cout << arr[i].getid()[j] << endl;
		}
	}
	return 0;
}