#include <cstdio>
#include <cmath>
#include <iostream>
#include <iomanip>
using namespace std;
const double pi = 3.14;
enum shape { CIRCLE, TRIANGLE, RECTANGLE };
class Shape
{
public:
    Shape() {};
    virtual void showArea() = 0;
};
class Circle :public Shape
{
public:
    Circle(double r)
    {
        radius = r;
    }
    //补充该函数
    void showArea()
    {
        cout <<fixed<<setprecision(2)<< radius * radius * pi << endl;
    }
private:
    double radius;
};
class Triangle :public Shape
{
public:
    Triangle(double a1, double b1, double c1)
    {
        a = a1;
        b = b1;
        c = c1;
    }
    //补充该函数
    void showArea()
    {
        double p = (a + b + c) / 2;
        double s = p * (p - a) * (p - b) * (p - c);
        cout << fixed << setprecision(2) << sqrt(s) << endl;
    }
private:
    double a, b, c;
};
class Rectangle :public Shape
{
public:
    Rectangle(double x, double y)
    {
        width = x;
        height = y;
    }
    //补充该函数
    void showArea()
    {
        cout << fixed << setprecision(2) << width *height << endl;
    }
private:
    double width, height;
};

//补充该函数
void calArea(Shape* ptr) {
    ptr->showArea();
}

void init() {
    
    //补充该函数，在这里进行浮点输出初始化
}

int main() {
    init();
    int type;
    cin >> type;
    if (type == CIRCLE) {
        double r;
        cin >> r;
        Circle circle(r);
        calArea(&circle);
    }
    else if (type == TRIANGLE) {
        double a, b, c;
        cin >> a >> b >> c;
        Triangle triangle(a, b, c);
        calArea(&triangle);
    }
    else {
        double x, y;
        cin >> x >> y;
        Rectangle rectangle(x, y);
        calArea(&rectangle);
    }
}