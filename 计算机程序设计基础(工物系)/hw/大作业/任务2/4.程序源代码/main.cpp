#include"account.h"
#include<iostream>
#include<vector>
#include<algorithm>
#include"linklist.h"
#include"insurance.h"
using namespace std;
static double sum = 0;
static int lastmonth = 0;
static int beg = 0;
static int deg = 0;
static int ceg = 0;
static int aeg = 0;
static double futuresalary = 0;
struct deleter {
	template<class T>void operator()(T* P) { delete P; }
};
int main() {
	Date date(2008, 11, 1);
	LinkedList<SavingsAccount> linklist;
	LinkedList<CreditAccount> linklist2;
	/*vector<Account*>accounts;*/
	vector<insurance*>insurances;//创建insurance类的数组，使用vector模板，方便动态数据管理
	cout << "(a)add account (d)deposit (w)withdraw (s)show (c)change day (n)nextmonth (m)nextyear (q)query (l)delete (i)insurance (e)exit" << endl;
	char cmd;
	do {
		date.show();
		cout << "\tTotal:" << Account::getTotal() << "\tcommand";
		char oos;
		char type;
		int index, day; 
		double amount, credit, rate, fee;
		string id, desc;
		double base;
		int age, year;
		/*Account* account;*/
		insurance* ins;
		Date date1, date2;
		cin >> cmd;
		switch (cmd) {
		case 'a':cin >> type >> id;
			if (type == 's') {
				cin >> rate;
				/*account = new SavingsAccount(date, id, rate);*/
				SavingsAccount savingsaccount(date, id, rate);
				linklist.insertAfter(savingsaccount);//在表尾插入一个结点
			}
			else {
				cin >> credit >> rate >> fee;
				/*account = new CreditAccount(date, id, credit, rate, fee);*/
				CreditAccount creditaccount(date, id, credit, rate, fee);
				linklist2.insertAfter(creditaccount);
			}
			/*accounts.push_back(account);*/
			break;
		case'd':
			cout << "the kind of the card: (s)savingscard (c)creditcard";
			cin >> oos;
			cin >> index >> amount;
			getline(cin, desc);
			if (oos == 's') {
				linklist.reset(index);//初始化游标的位置
				linklist.data().deposit(date, amount, desc);//访问游标所指的结点的数据的成员函数
			}
			else {
				linklist2.reset(index);//初始化游标的位置
				linklist2.data().deposit(date, amount, desc);//访问游标所指的结点的数据的成员函数
			}
			/*accounts[index]->deposit(date, amount, desc);*/
			break;
		case'w':
			cout << "the kind of the card: (s)savingscard (c)creditcard";
			cin >> oos;
			cin >> index >> amount;
			getline(cin, desc);
			if (oos =='s') {
				linklist.reset(index);//初始化游标的位置
				linklist.data().withdraw(date, amount, desc);//访问游标所指的结点的数据的成员函数
			}
			else {
				linklist2.reset(index);//初始化游标的位置
				linklist2.data().withdraw(date, amount, desc);//访问游标所指的结点的数据的成员函数
			}
			break;
		case's':
			linklist.reset(0);
			linklist2.reset(0);
			for (size_t i = 0; i < /*accounts.size()*/linklist.getSize(); i++) {
				cout << "[" << i << "]";
				/*accounts[i]->show();*/
				linklist.data().show();
				linklist.next();//遍历循环，在每次循环后将游标向后移动一位，达到顺序访问的目的
				cout << endl;
			}
			for (size_t i = 0; i < /*accounts.size()*/linklist2.getSize(); i++) {
				cout << "[" << i << "]";
				/*accounts[i]->show();*/
				linklist2.data().show();
				linklist2.next();//遍历循环，在每次循环后将游标向后移动一位，达到顺序访问的目的
				cout << endl;
			}
			break;
		case'c':
			cin >> day;
			if (day < date.getDay())cout << "You cannot specify a previous day";
			else if (day > date.getMaxDay())cout << "Invalid day";
			else {
				date = Date(date.getYear(), date.getMonth(), day);
			}
			break;
		case'n':
			if (date.getMonth() == 12)date = Date(date.getYear() + 1, 1, 1);
			else
				date = Date(date.getYear(), date.getMonth() + 1, 1);
			linklist.reset(0);
			for (int i = 0; i != linklist.getSize(); ++i) {
				linklist.data().settle(date);
				linklist.next();
			}
			linklist2.reset(0);
			for (int i = 0; i != linklist2.getSize(); ++i) {
				linklist2.data().settle(date);
				linklist2.next();
			}
			if (insurances.size()&&date.getYear()-deg<=aeg) {
				for (int i = 0; i < insurances.size(); i++) {
					linklist.reset(insurances[i]->getindex());
					linklist.data().withdraw(date,insurances[i]->getmoney(),"insurance");
					sum+= insurances[i]->getmoney();
					if (date.getMonth() == 1&& date.getYear() - deg <= 5) {
						cout << "请输入上年度的年工资:";
						cin >> base;
					}
				}
			}
			if (insurances.size() && date.getYear()-deg >=ceg) {
				for (int i = 0; i < insurances.size(); i++) {
					linklist.reset(insurances[i]->getindex());
					linklist.data().deposit(date, insurances[i]->getannuity(futuresalary), "insurance");
				}
			}
			lastmonth = date.getMonth();
			break;
		case'm':
			date = Date(date.getYear()+1,1, 1);
			linklist.reset(0);
			for (int i = 0; i != linklist.getSize(); ++i) {
				linklist.data().settle(date);
				linklist.next();
			}
			linklist2.reset(0);
			for (int i = 0; i != linklist2.getSize(); ++i) {
				linklist2.data().settle(date);
				linklist2.next();
			}
			if (insurances.size() && date.getYear() - deg <= aeg) {
				for (int i = 0; i < insurances.size(); i++) {
					linklist.reset(insurances[i]->getindex());
					linklist.data().withdraw(date,( insurances[i]->getmoney())*(12-lastmonth+1), "insurance");
					sum +=( insurances[i]->getmoney())*(12-lastmonth+1);
				}
				if (date.getYear() - deg <= 5) {
					cout << "请输入上年度的年工资:";
					cin >> base;
				}
			}
			if (insurances.size() && date.getYear() - deg >= ceg) {
				for (int i = 0; i < insurances.size(); i++) {
					linklist.reset(insurances[i]->getindex());
					linklist.data().deposit(date,( insurances[i]->getannuity(futuresalary))*(12-lastmonth+1), "insurance");
				}
			}
			lastmonth = 1;
			break;
		case'q':
			date1 = Date::read();
			date2 = Date::read();
			Account::query(date1, date2);
			break;
		case'l':
			cout << "the kind of the card: (s)savingscard (c)creditcard";
			cin >> oos;
			cin >> index;
			if (oos == 's') {
				linklist.reset(index);
				linklist.deleteCurrent();//初始化游标到制定位置，调用删除函数删除该结点（即改变相应的指针指向）
			}
			else {
				linklist2.reset(index);
				linklist2.deleteCurrent();//初始化游标到制定位置，调用删除函数删除该结点（即改变相应的指针指向）
			}
			break;
		case'i':
			cin >>index;
			linklist.reset(index);
			cout << "请输入上年度的年工资:";
			cin >> base;
			cout << "请输入预计退休年龄和现在的年龄：";
			cin >> age>>ceg;
			cout << "请输入预计缴纳养老保险年数：";
			cin >> year;
			cout << "请输入预计未来市人均月工资:(以万为单位)";
			cin >> futuresalary;
			ins = new project1(base, age,year,index,date);
			insurances.push_back(ins);
			beg= date.getMonth();
			deg = date.getYear();
			aeg = year;
			ceg = age - ceg;
			if (date.getMonth() != 1) {
				linklist.reset(index);
				linklist.data().withdraw(date, (date.getMonth() - 1) * base * 0.08 / 12, "insurance");
			}
			lastmonth = date.getMonth();
			/*ins->getmonth();
			ins->getmoney();
			ins->getannuity();
			ins->showmoney();*/
			/*ins->showannuity();*/
			break;
		}
	} while (cmd != 'e');
	/*for_each(accounts.begin(), accounts.end(), deleter());*/
	for_each(insurances.begin(), insurances.end(), deleter());
	linklist.clear();
	linklist2.clear();//清空链表
	return 0;
}