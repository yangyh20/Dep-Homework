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
//��ʵ��Account���캯��Account(string name)
//��ʵ��Account��PrintUserName()����
//��ʵ��CreditAccount��Ĺ��캯��CreditAccount(string name, int number)
//��ʵ��CreditAccount���PrintInfo()����

int main()
{
    CreditAccount a("I Love CPP", 10000);
    a.PrintInfo();
    return 0;
}