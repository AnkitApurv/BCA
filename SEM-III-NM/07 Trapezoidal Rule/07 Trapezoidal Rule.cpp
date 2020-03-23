//trapezoidal rule
#include<iostream>
#include<cstdlib>
#include<cmath>

using namespace std;

float fun(float x)
{
	return(1.0 / (1 + x));
}

int main(void)
{
	int i, n;
	float a, b, x, h, sum, trap;
	sum = 0;
	cout << "Trapezoidal Rule" << endl;
	cout << "Enter lower limit, upper limit, and number of intervals:";
	cin >> a >> b >> n;
	h = (b - a) / n;
	cout << endl << "x" << "\t\t\t\t" << "f(x)" << endl;
	for (i = 1; i < n; i++)
	{
		x = a + (i*h);
		sum = sum + fun(x);
		cout << x << "\t\t\t" << fun(x) << endl;
	}
	trap = (h / 2)*(fun(a) + (2 * sum) + fun(b));
	cout << endl << "Integral Value using Trapezoidal rule : " << trap;
	exit(0);
}