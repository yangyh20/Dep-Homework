#include<iostream>
using namespace std;
//class CLIENT;
class CLIENT {
	static string severname;
	int clientnum;
public:
	static void changesevername(string name);
	CLIENT(int n);
};