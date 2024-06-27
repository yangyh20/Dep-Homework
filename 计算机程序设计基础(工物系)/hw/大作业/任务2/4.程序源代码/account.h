#ifndef _ACCOUNT_H_
#define _ACCOUNT_H_
#include"date.h"
#include"accumulator.h"
#include<string>
#include<map>
using namespace std;
class Account;//前向引用声明
class AccountRecord {
private:
	Date date;
	const Account* account;//尚未准确定义Account类，不能创建具体对象，所以只能用指针代替
	double amount;
	double balance;
	string desc;
public:
	AccountRecord(const Date& date, const Account* account, double amount, double balance, const string& desc);
	void show()const;
};
typedef multimap<Date, AccountRecord>RecordMap;
class Account {
private:
	string id;
	double balance;
	static double total;//静态共享
	static RecordMap recordMap;
protected:
	Account(const Date& date, const string& id);
	void record(const Date& date, double amount, const string& desc);
	void error(const string& msg)const;
public:
	const string& getId()const { return id; }
	double getBalance()const { return balance; }
	static double getTotal() { return total; }
	virtual void deposit(const Date& date, double amount, const string& desc) = 0;
	virtual void withdraw(const Date& date, double amount, const string& desc) = 0;
	virtual void settle(const Date& date) = 0;
	virtual void show()const;//均设置为虚函数，方便重载
	static void query(const Date& begin, const Date& end);
};
class SavingsAccount :public Account {
private:
	Accumulator acc;
	double rate;
public:
	SavingsAccount(const Date& date, const string& id, double rate);
	double getRate()const { return rate; }
	void deposit(const Date& date, double amount, const string& desc);
	void withdraw(const Date& date, double amount, const string& desc);
	void settle(const Date& date);};
class CreditAccount :public Account {
private:
	Accumulator acc;
	double credit;
	double rate;
	double fee;
	double getDebt()const {
		double balance = getBalance();
		return (balance < 0 ? balance : 0);
	}
public:
	CreditAccount(const Date& date, const string& id, double credit, double rate, double fee);
	double getCedit()const { return credit; }
	double getRate()const { return rate; }
	double getFee()const { return fee; }
	double getAvailableCredit()const {
		if (getBalance() < 0)return credit + getBalance();
		else return credit;
	}
	void deposit(const Date& date, double amount, const string& desc);
	void withdraw(const Date& date, double amount, const string& desc);
	void settle(const Date& date) ;
	void show()const;
};
#endif