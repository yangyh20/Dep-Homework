#include<iostream>
using namespace std;
class vehicle {
	int maxspeed;
	int weight;
public:
	void run() { cout << "running..."; }
	void stop() { cout << "stop..."; }
	vehicle(int m, int w) :maxspeed(m), weight(w) {}
	~vehicle() { cout << "正在析构..." << endl; }
};
class bicycle :virtual public vehicle {
	int height;
public:
	bicycle(int h,int m,int w):vehicle(m,w),height(h){}
	~bicycle() { cout << "正在析构..." << endl; }
};
class motorcar :virtual public vehicle {
	int setnum;
public:
	motorcar(int s,int m,int w):vehicle(m,w),setnum(s){}
	~motorcar() { cout << "正在析构..." << endl; }
};
class motorcycle :public bicycle, public motorcar {
public:
	motorcycle(int m,int w,int s,int h):vehicle(m,w),bicycle(h,m,w),motorcar(s,m,w){}
	~motorcycle() { cout << "正在析构..." << endl; }
};
int main() {
	motorcycle m(1,2,3,4);
	return 0;
}