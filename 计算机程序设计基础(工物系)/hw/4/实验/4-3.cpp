#include<iostream>
using namespace std;
enum Sex{Male=1,Female};
class Date {
private:
	int year;
	int month;
	int day;
};
class People {
private:
	int number;
	Sex sex;
	Date birth;
	long long int id;
public:
	People(int n, Sex s, Date b, long long int i);
	~People();
	People(const People& b);
	inline int getnumber();
	inline Sex getsex();
	inline Date getbirth();
	inline long long int getid();
	void setnumber(int n) { number = n; }
	void setsex(Sex s) { sex = s; }
	void setbirth(Date b) { birth = b; }
	void setid(long long int i) { id = i; }
};
People::People(int n, Sex s, Date b, long long int i):number(n),sex(s),birth(b),id(i){}
People::~People() { cout << "ÕýÔÚÎö¹¹......"; }
People::People(const People&b): number(b.number), sex(b.sex), birth(b.birth), id(b.id) {}
int People::getnumber() { return number; }
Sex People::getsex() { return sex; }
Date People::getbirth() { return birth; }
long long int People::getid() { return id; }