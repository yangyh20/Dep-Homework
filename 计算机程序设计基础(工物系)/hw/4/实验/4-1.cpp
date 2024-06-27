#include<iostream>
using namespace std;
enum CPU_Rank{ P1 = 1, P2, P3, P4, P5, P6, P7 };
class CPU {
private:
	CPU_Rank rank;
	int freq;
	float volt;
public:
	CPU(CPU_Rank rank, int freq, float volt);
	~CPU();
	CPU_Rank getrank() { return rank; }
	int getfreq() { return freq; }
	float getvolt() { return volt; }
	void setrank(CPU_Rank r) { rank = r; }
	void setfreq(int f) { freq = f; }
	void setvolt(float v) { volt = v; }
	void run() { cout << "CPU开始运行！"; }
	void stop() { cout << "CPU停止运行！"; }
};
CPU::CPU(CPU_Rank r, int f, float v) {
	rank = r;
	freq = f;
	volt = v;
	cout << "构造了一个CPU！";
}
CPU::~CPU() {
	cout << "析构了一个CPU！";
}
int main()
{
	CPU a(P6, 300, 2.8);
	a.run();
	a.stop();
	return 0;
}