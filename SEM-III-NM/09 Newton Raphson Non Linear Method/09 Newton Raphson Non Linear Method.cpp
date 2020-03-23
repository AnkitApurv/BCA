//to find roots of non linear equation using newton raphson method
#include<iostream>
#include<cmath>

using namespace std;

float fun1(float x, float y)
{
	return(((x*x) - (y*y)) + 7);
}

float fun2(float x, float y)
{
	return(x - x*y + 9);
}

float fun1x(float x, float y)
{
	return(2 * x);
}

float fun1y(float x, float y)
{
	return(-2 * y);
}

float fun2x(float x, float y)
{
	return(-y);
}

float fun2y(float x, float y)
{
	return(-x);
}

int main(void)
{
	float x0, y0, x1, y1, xprev, yprev, eps, Dx, Dy, denom;
	int iter = 0;
	float f, g, f1, f2, g1, g2;
	cout << "Newton Raphson Non-Linear Method" << endl;
	cout << "Enter values for x0, y0 and epsilon : ";
	cin >> x0 >> y0 >> eps;
	cout << endl << "Sl.No." << "\t\t" << "x0" << "\t\t" << "y0" << "\t\t" << "Dx" << "\t\t" << "Dy" << "\t\t" << "x1" << "\t\t" << "y1" << endl;
	do
	{
		iter++;
		xprev = x0;
		yprev = y0;
		f = fun1(x0, y0);
		g = fun2(x0, y0);
		f1 = fun1x(x0, y0);
		f2 = fun1y(x0, y0);
		g1 = fun2x(x0, y0);
		g2 = fun2y(x0, y0);
		denom = (f1*g2)-(f2*g1);
		Dx = -((f*g2) - (g*f2)) / denom;
		Dy = -((g*f1) - (f*g1)) / denom;
		x1 = x0 + Dx;
		y1 = y0 + Dy;
		cout << iter << "\t\t" << x0 << "\t\t" << y0 << "\t\t" << Dx << "\t\t" << Dy << "\t\t" << x1 << "\t\t" << y1;
		x0 = x1;
		y0 = y1;
	} while ((x1 - xprev) <= eps && (y1 - yprev) <= eps);
	cout << endl << "Roots are, x = " << x0 << " and y = " << y0;
	exit(0);
}