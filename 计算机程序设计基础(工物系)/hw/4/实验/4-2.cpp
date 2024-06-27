#include<iostream>
using namespace std;
class CPU {
	int freq;
	float volt;
};
class RAM {
	float r;
};
class CDROM {
	int cdrom;
};
class Computer {
private:
	CPU cpu;
	RAM ram;
	CDROM cdrom;
public:
	Computer(CPU c, RAM ra, CDROM cd);
	void run() { cout << "RUNNING!"; }
	void stop() { cout << "STOPING!"; }
};
Computer::Computer(CPU c, RAM ra, CDROM cd) :cpu(c), ram(ra), cdrom(cd){}