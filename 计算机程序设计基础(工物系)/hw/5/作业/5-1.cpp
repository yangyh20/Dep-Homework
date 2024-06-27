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
        Yuebao::setProfitRate(profitRate);//�趨��������
        Yuebao y(0); //�½����˻�������ʼ��Ϊ0
        int operation;//���������ж��Ǵ滹��ȡ
        double amount;//���������ȡ���
        for (int i = 0; i < n; ++i)
        {
            y.addProfit();//����ǰһ������������Ϣ
            cin >> operation >> amount;
            if (operation == 0)
                y.deposit(amount);//������
            else
                y.withdraw(amount);//ȡ�����
        }
        cout << y.getBalance() << endl;//��������˻����
    }
    return 0;
}