#include <iostream>
using namespace std;

class Yuebao
{
    static double profitRate;
    double yue;
public:
    static void setProfitRate(double rate);
    /* Your code here! */
    Yuebao(double yu);
    void addProfit();
    void deposit(double amount);
    void withdraw(double amount);
    double getBalance();
};
Yuebao::Yuebao(double yu):yue(yu){}
double Yuebao::profitRate = 0;
void Yuebao::setProfitRate(double rate) {
    profitRate = rate;
}
void Yuebao::addProfit() {
    yue += yue * profitRate;
}
void Yuebao::deposit(double a) {
    yue += a;
}
void Yuebao::withdraw(double a) {
    yue -=a;
}
double Yuebao::getBalance() {
    return yue;
}
int main()
{
    int n;
    while (cin >> n)
    {
        double profitRate;
        cin >> profitRate;
        Yuebao::setProfitRate(profitRate);//设定鱼额宝的利率
        Yuebao y(0); //新建鱼额宝账户，余额初始化为0
        int operation;//接受输入判断是存还是取
        double amount;//接受输入存取金额
        for (int i = 0; i < n; ++i)
        {
            y.addProfit();//加入前一天余额产生的利息
            cin >> operation >> amount;
            if (operation == 0)
                y.deposit(amount);//存入金额
            else
                y.withdraw(amount);//取出金额
        }
        cout << y.getBalance() << endl;//输出最终账户余额
    }
    return 0;
}