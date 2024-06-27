#include"account.h"
#include<cmath>
#include<iostream>
#include<utility>
using namespace std;
using namespace std::rel_ops;
AccountRecord::AccountRecord(const Date& date, const Account* account, double amount, double balance, const string& desc) :
	date(date), account(account), amount(amount), balance(balance), desc(desc) {}
void AccountRecord::show()const {
	date.show();
	cout << "\t#" << account->getId() << "\t" << amount << "\t" << balance << "\t" << desc << endl;
}
double Account::total = 0;
RecordMap Account::recordMap;
void Account::query(const Date& begin, const Date& end) {
	if (begin <= end) {
		RecordMap::iterator iter1 = recordMap.lower_bound(begin);
		RecordMap::iterator iter2 = recordMap.upper_bound(end);
		for (RecordMap::iterator iter = iter1; iter != iter2; ++iter)iter->second.show();
	}
}
Account::Account(const Date& date, const string& id) :id(id), balance(0) {
	date.show();
	cout << "\t#" << id << "created" << endl;
}
void Account::record(const Date& date, double amount, const string& desc) {
	amount = floor(amount * 100 + 0.5) / 100;
	balance += amount;
	total += amount;
	AccountRecord record(date, this, amount, balance, desc);//建立账目类对象record实现账目的存储
	recordMap.insert(make_pair(date, record));
	date.show();
	cout << "\t#" << id << "\t" << balance << "\t" << desc << endl;
}
void Account::show()const { cout << id << "\tBalance:" << balance; }
void Account::error(const string& msg)const {
	cout << "Error(#" << id << "):" << msg << endl;
}
SavingsAccount::SavingsAccount(const Date& date, const string& id, double rate) :Account(date, id), rate(rate), acc(date, 0) {
}
void SavingsAccount::deposit(const Date& date, double amount, const string& desc) {
	record(date, amount, desc);
	acc.change(date, getBalance());
}
void SavingsAccount::withdraw(const Date& date, double amount, const string& desc) {
	if (amount > getBalance()) {
		error("not enough money");
	}
	else {
		record(date, -amount, desc);
		acc.change(date, getBalance());
	}
}
void SavingsAccount::settle(const Date& date) {
	if (date.getMonth() == 1) {
		double interest = acc.getSum(date) * rate / (date - Date(date.getYear() - 1, 1, 1));
		if (interest != 0)record(date, interest, "interest");
		acc.reset(date, getBalance());
	}
}
CreditAccount::CreditAccount(const Date& date, const string& id, double credit, double rate, double fee) :
	Account(date, id), credit(credit), rate(rate), fee(fee), acc(date, 0) {
}
void CreditAccount::deposit(const Date& date, double amount, const string& desc) {
	record(date, amount, desc);
	acc.change(date, getDebt());
}
void CreditAccount::withdraw(const Date& date, double amount, const string& desc) {
	if (amount - getBalance() > credit) {
		error("not enough credit");
	}
	else {
		record(date, -amount, desc);
		acc.change(date, getDebt());
	}
}
void CreditAccount::settle(const Date& date) {
	double interest = acc.getSum(date) * rate;
	if (interest != 0)record(date, interest, "interest");
	if (date.getMonth() == 1)record(date, -fee, "annual fee");
	acc.reset(date, getDebt());
}
void CreditAccount::show()const {
	Account::show();
	cout << "\tAvailable credit:" << getAvailableCredit();
}