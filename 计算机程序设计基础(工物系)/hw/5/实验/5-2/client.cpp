//#include<iostream>
//#include<string>
#include "client.h"
string severname = "0000";
CLIENT::CLIENT(int n):clientnum(n){}
void CLIENT::changesevername(string name)
{
	severname = name;
}