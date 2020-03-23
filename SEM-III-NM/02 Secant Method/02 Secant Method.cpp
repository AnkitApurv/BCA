//to find roots of equation usimg Secant's Method
#include<iostream>
#include<cmath>
#include<process.h>

using namespace std;

float secant(float x)
{
	return((x*x) - 25);
}

int main(void)
{
	float x0, x1, x;
	int inter = 0;
	float f0, f1, fx, epsilon;
	cin.ignore();
	cout << endl << "Secant Method" << endl;
	cout << endl << "Equation:x^x-25=0";
	cout << endl << "x0:";
	cin >> x0;
	cout << endl << "x1:";
	cin >> x1;
	cout << endl << "epsilon:";
	cin >> epsilon;
	f0 = secant(x0);
	f1 = secant(x1);
	cout << endl << "Sl. No." << "\t\t" << x0 << "\t\t" << x1 << "\t\t" << x << "\t\t" << f0 << "\t\t" << f1 << "\t\t" << fx << endl;
	do
	{
		inter++;
		x = (x0*f1 - x1*f0) / (f1 - f0);
		fx = secant(x);
		if (fabs(f1 - f0) <= epsilon)
		{
			cout << endl << "Slope is too small.";
			exit(0);
		}
		cout << endl << inter << "\t\t" << x0 << "\t\t" << x1 << "\t\t" << x << "\t\t" << f0 << "\t\t" << f1 << "\t\t" << fx;
		x0 = x1;
		x1 = x;
		f0 = f1;
		f1 = fx;
	}
	while (fabs(fx) > epsilon);
	cout << endl << "Root = " << x << " in " << inter << " iterations.";
	exit(0);
}