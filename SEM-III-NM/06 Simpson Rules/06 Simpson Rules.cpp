//simpson's 1/3rd and 3/8th rule
#include<iostream>
#include<cmath>

using namespace std;

float fun(float x)
{
	return(1.0/(1+x));
}

void simp13()
{
	int i, n;
	float a, b, x, y, h, sum1, sum2, sum3, result;
	sum2 = 0;
	sum3 = 0;
	cout << endl << "Simpson's 1/3rd rule" << endl;
	cout << "Enter upper limit, lower limit and intervals:";
	cin >> b >> a >> n;
	sum1 = fun(a) + fun(b);
	h = (b - a) / (2 * n);
	cout << endl << "Sl.No." << "\t\t" << "X" << "\t\t" << "Y" << "\t\t" << endl;
	for (i = 1; i < (n * 2); i++)
	{
		x = a + (i*h);
		y = fun(x);
		cout << i << "\t\t" << x << "\t\t" << y << "\t\t" << endl;
		if (i % 2 == 0)
			sum3 = sum3 + y;
		else
			sum2 = sum2 + y;
	}
	result = (h / 3)*(sum1 + 4 * sum2 + 2 * sum3);
	cout << endl << "Solution by Simpson's 1/3rd rule : " << result;
}

void simp38()
{
	int i, n;
	float a, b, x, y, h, sum1, sum2, sum3, result;
	sum2 = 0;
	sum3 = 0;
	cout << endl << "Simpson's 3/8th rule" << endl;
	cout << "Enter lower limit, upper limit and intervals:";
	cin >> a >> b >> n;
	sum1 = fun(a) + fun(b);
	h = (b - a) / (3 * n);
	cout << endl << "Sl.No.\t\t" << "X\t\t" << "Y\t\t" << endl;
	for (i = 1; i<(3 * n); i++)
	{
		x = a + (i*h);
		y = fun(x);
		cout << i << "\t\t" << x << "\t\t" << y << "\t\t" << endl;
		if (i % 3 == 0)
			sum3 = sum3 + y;
		else
			sum2 = sum2 + y;
	}
	result = (3 * h / 8)*(sum1 + 3 * sum2 + 2 * sum3);
	cout << endl << "Solution by Simpson's 3/8th rule : " << result;
}

int main(void)
{
	int choice;
	cout << "Simpson's Rules:" << endl;
	cout << "1.Simpson's 1/3rd rule" << endl;
	cout << "2.Simpson's 3/8th rule" << endl;
	cout << "3.Exit" << endl;
	cout << "Choice : ";
	cin >> choice;
	switch (choice)
	{
	case 1:
		simp13();
		break;
	case 2:
		simp38();
		break;
	case 3:
		exit(0);
	default:
		cout << endl << "Sorry! Wrong Choice.";
		break;
	}
}