//rangekutta 4th order method
#include<iostream>
#include<cmath>

using namespace std;

double f(double x, double y)
{
	return(x - y);
}

int main(void)
{
	int i, n;
	double K1, K2, K3, K4, h, x, x1, y;

	cout << endl << "Rangekutta 4th Order Method";
	cout << endl << "Value for y0:";
	cin >> y;
	cout << endl << "Value for x0=";
	cin >> x;
	cout << endl << "Value for xn=";
	cin >> x1;
	cout << endl << "Value for h=";
	cin >> h;

	n = (x1 - x) / h;
	for (i = 0; i<n; i++)
	{
		K1 = f(x, y);
		cout << endl << K1;

		K2 = f(x + h / 2, y + h / 2 * K1);
		cout << endl << K2;

		K3 = f(x + h / 2, y + h / 2 * K2);
		cout << endl << K3;

		K4 = f(x + h, y + h*K3);
		cout << endl << K4;

		y = y + h / 6 * (K1 + 2 * K2 + 2 * K3 + K4);
		cout << endl << y;
	}
}