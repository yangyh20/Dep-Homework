#include<iostream>
using namespace std;
int main()
{
    int num = 0;
    int shu;
    cin >> num;
    cin >> shu;
    int max = shu, min = shu,sum=shu;
    for (int i = 1; i < num; i++) {
        cin >> shu;
        sum = sum + shu;
        if (max < shu) {
            max = shu;
        }
        if (min > shu) {
            min = shu;
        }
    }
    cout << sum << " " <<min<< " " << max<<endl;
    return 0;
}