#include<iostream>
using namespace std;
class vehicle {
public:
	virtual void run() { cout << "running!"; }
	virtual void stop() { cout << "stop!"; }
};
class bicycle :public vehicle {
	void run() { cout << "running!"; }
    void stop() { cout << "stop!"; }
};
class motorcar :public vehicle {
	void run() { cout << "running!"; }
	void stop() { cout << "stop!"; }
};
class motorcycle:public bicycle,public motorcar{
	void run() { cout << "running!"; }
	void stop() { cout << "stop!"; }
};
int main() {
	bicycle bic;
	vehicle* ptr=&bic;
	ptr->run();
	return 0;
}