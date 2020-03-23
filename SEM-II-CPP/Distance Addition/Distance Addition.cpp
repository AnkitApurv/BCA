//Add two distance variables
#include<iostream>
#include<iomanip>
#include<conio.h>
#include<math.h>
using namespace std;
class dist
{
	int feet;
	int inches;
public:
	dist()
	{
		feet = 0;
		inches = 0;
	}
	dist(int ft, int in)
	{
		feet = 0;
		inches = 0;
	}
	void getdist()
	{
		cout << endl << "Value of feet:" << endl;
		cin >> feet;
		cout << endl << "Value of inches:" << endl;
		cin >> inches;
	}
	void showdist()
	{
		cout << endl << feet << "-" << inches << endl;
	}
	void sumdist(dist d1, dist d2);
};
void dist::sumdist(dist d1, dist d2)
{
	inches = (d1.inches + d2.inches) % 12;
	feet = d1.feet + d2.feet + (d1.inches + d2.inches) / 12;
}
void main()
{
	dist d1, d3;
	d1.getdist();
	dist d2(12, 9);
	d3.sumdist(d1, d2);
	cout << endl << "d1="; d1.showdist();
	cout << endl << "d2="; d2.showdist();
	cout << endl << "d3="; d3.showdist();
	_getch();
}