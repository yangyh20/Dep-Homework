#include"account.h"
#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;
struct deleter {
	template<class T>void operator()(T* P) { delete P; }
};
int main() {
	Date date(2008, 11, 1);
	vector<Account*>accounts;//用vector模板保存动态数据，也可以直接调用它的函数
	cout << "(a)add account (d)deposit (w)withdraw (s)show (c)change day (n)next (q)query (e)exit" << endl;
	char cmd;
	do {
		date.show();
		cout << "\tTotal:" << Account::getTotal() << "\tcommand";
		char type;
		int index, day;
		double amount, credit, rate, fee;
		string id, desc;
		Account* account;
		Date date1, date2;
		cin >> cmd;
		switch (cmd) {
		case 'a':cin >> type >> id;
			if (type == 's') {
				cin >> rate;	
				account = new SavingsAccount(date, id, rate);//通过基类指针指向派生类的动态内存空间，可以实现函数调用时的动态绑定，体现多态性
			}
			else {
				cin >> credit >> rate >> fee;
				account = new CreditAccount(date, id, credit, rate, fee);
			}
			accounts.push_back(account);//该函数可以在数组末尾添加元素
			break;
		case'd':
			cin >> index >> amount;
			getline(cin, desc);//输入更加灵活，可以输入空格
			accounts[index]->deposit(date, amount, desc);//数组的每个元素都是基类指针，通过指针访问对象的成员
			break;
		case'w':
			cin >> index >> amount;
			getline(cin, desc);
			accounts[index]->withdraw(date, amount, desc);
			break;
		case's':
			for (size_t i = 0; i < accounts.size(); i++) {
				cout << "[" << i << "]";
				accounts[i]->show();
				cout << endl;
			}
			break;
		case'c':
			cin >> day;
			if (day < date.getDay())cout << "You cannot specify a previous day";
			else if (day > date.getMaxDay())cout << "Invalid day";//数据合法性检验
			else {
				date = Date(date.getYear(), date.getMonth(), day);
			}
			break;
		case'n':
			if (date.getMonth() == 12)date = Date(date.getYear() + 1, 1, 1);
			else
				date = Date(date.getYear(), date.getMonth() + 1, 1);
			for (vector<Account*>::iterator iter = accounts.begin(); iter != accounts.end(); ++iter)
				(*iter)->settle(date);
			break;
		case'q':
			date1 = Date::read();
			date2 = Date::read();
			Account::query(date1, date2);
			break;
		}
	} while (cmd != 'e');
	for_each(accounts.begin(), accounts.end(), deleter());//释放动态内存空间
	return 0;
}