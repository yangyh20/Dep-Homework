#include <iostream>
#include <string>
using namespace std;
class Account
{
    string userName;
public:
    Account() {};
    Account(string name);
    void  PrintUserName();
};

class CreditAccount : public Account
{
public:
    CreditAccount(string name, int credit);
    void PrintInfo();
private:
    int credit;
};
Account::Account(string n):userName(n){}
void Account::PrintUserName() {
    cout << userName << endl;
}
CreditAccount::CreditAccount(string n,int c):Account(n),credit(c){}
void CreditAccount::PrintInfo() {
    PrintUserName();
    cout << credit << endl;
}
//请实现Account构造函数Account(string name)
//请实现Account的PrintUserName()函数
//请实现CreditAccount类的构造函数CreditAccount(string name, int number)
//请实现CreditAccount类的PrintInfo()函数

int main()
{
    CreditAccount a("I Love CPP", 10000);
    a.PrintInfo();
    return 0;
}