//to find binomial coefficient using recursion
#include<iostream>
#include<iomanip>
using namespace std;
int binom(int n, int r)
{
	if (r == 0)
		return 0;
	else if (n == r)
		return 1;
	else
		return(binom(n - 1, r) + binom(n - 1, r - 1));
}
int main(void)
{
	int n, r;
	cin.ignore();
	cout << "Binomial Coefficient" << endl;
	cout << "Enter the value of 'n' and 'r':";
	cin >> n >> r;
	if (n < r)
		cout << "Enter value of 'n' which is greater than 'r':";
	else
		cout << "Binomial Coefficient of" << n << "and" << r << "is" << binom(n, r);
	return 0;
}