//to find root of equation using bisection method
#include<iostream>
#include<string>

using namespace std;

float f(float x)
{
	return((x * x) - 25);
}

int main()
{
	float a, b, c, fc, acc;
	int i = 1;
	string tab = "\t";
	//cin.ignore();
	cout << "Bisection Method" << endl;
	cout << endl << "Enter initial roots:";
	cin >> a >> b;
	cout << endl << "Enter accuracy:";
	cin >> acc;
	if (f(a)*f(b) < 0)
	{
		cout << endl << "Invalid approximation.";
		return(0);
	}
	if (f(a)*f(b) == 0)
	{
		cout << endl << "Solution is:";
		if (f(a) == 0)
			cout << a;
		else
			cout << b;
	}
	else
		cout << "Iteration No." << tab << tab << "Approx roots\n";
	while (i)
	{
		c = (a + b) / 2;
		fc = f(c);
		cout << endl;
		cout << tab << i++ << tab << tab << c << endl;
		if (fabs(fc) < acc)
			break;
		if (f(a)*f(c) < 0)
			b = c;
		else
			a = c;
	}
	return(0);
}