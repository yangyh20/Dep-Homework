#include<iostream>
#include<string>
using namespace std;
class date {
	int year;
	int month;
	int day;
public:
	date(int y,int m,int d):year(y),month(m),day(d){}
	~date(){}
};
class people {
	string name;
	int number;
	string sex;
	date birth;
	long long int id;
public:
	people(string n,int n2,string s,date&b,long long int i):name(n),number(n2),sex(s),birth(b),id(i){}
	~people() {}
};
class student :virtual public people {
	int classno;
public:
	student(string n, int n2, string s, date& b, long long int i,int c):people(n,n2,s,b,i),classno(c){}
	~student() {}
};
class teacher :virtual public people {
	char principalship;
	char department;
public:
	teacher(string n, int n2, string s, date& b, long long int i,char p,char d) :people(n,n2,s,b,i),principalship(p),department(d){}
	~teacher() {}
};
class graduate :public student {
	char subject;
	teacher adviser;
public:
	graduate(string n, int n2,string s, date& b, long long int i, int c,char s2,teacher&a):people(n,n2,s,b,i),student(n,n2,s,b,i,c),subject(s2),adviser(a){}
	~graduate() {}
};
class ta :public graduate, public teacher {
public:
	ta(string n, int n2, string s, date& b, long long int i, int c, char s2, teacher& a,char p,char d):people(n,n2,s,b,i),graduate(n,n2,s,b,i,c,s2,a),teacher(n,n2,s,b,i,p,d){}
	~ta() {}
};
int main() {
	date da(2020, 5, 20);
	date da1(2002, 5, 20);
	teacher tea("Bob", 7, "male", da1, 23456, 'A', 'B');
	ta ta1("Alice", 12, "female", da, 12345, 3, 'S', tea, 'C', 'D');
	return 0;
}