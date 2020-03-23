//area circumference
#include<iostream>
#include<conio.h>
using namespace std;
const double pi=3.14;
inline float circum(float r)
{
 return(2*pi*r);
}
inline float area(float r)
{
 return(pi*r*r);
}
void main()
{
 float r;
 clrscr();
 cout << "Area Circumference of Circle";
 cout << endl <<"Radius of Circle :";
 cin >> r;
 cout << endl << "Cricumference :" << circum(r);
 cout << endl << "Area :" << area(r);
 getch();
}