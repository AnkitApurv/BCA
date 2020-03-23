//to find roots of equation using Newton Raphson Method
#include<iostream>
#include<cmath>
#include<process.h>

using namespace std;

float newton(float x)
{
	return((x*x) - 25);
}

float newtondx(float x)
{
	return(2 * x);
}

int main(void)
{
	float x0, x;
	float f0, df0, fx, dfx, epsilon;
	int inter = 1;
	cout << "Newton Raphson Method" << endl;
	cout << "Equation : x^2-25=0" << endl;
	cout << "Enter values for x0 and epsilon :";
	cin >> x0 >> epsilon;
	cout << endl << "Sl.No.\t\t" << "x0\t\t" << "x\t\t" << "f0\t\t" << "df0\t\t" << "fx" << endl;
	do
	{
		f0 = newton(x0);
		df0 = newtondx(x0);
		if (fabs(df0) <= epsilon)
		{
			cout << "Slope is too small.";
			exit(0);
		}
		x = x0 - (f0 / df0);
		fx = newton(x);
		cout << endl << inter << x0 << x << f0 << df0 << fx << endl;
		x0 = x;
		inter++;
	} while (fabs(fx) > epsilon);
	cout << "Root : " << x;
	exit(0);
}