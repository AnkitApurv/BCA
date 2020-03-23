//to find solution for linear equation using jacobi's method
#include<iostream>
#include<cmath>
#define EPS 1.0e-02

using namespace std;

int main(void)
{
	float a[10][10], x[10], oldx[10], err, big, sum;
	int i, j, k, n, iter, maxit;
	cout << "Linear Equation via Jacobi's Method" << endl;
	cout << "Enter the no. of unknowns and no. of iterations:";
	cin >> n >> maxit;
	cout << "Enter the co-efficients of matrix:";
	for (i = 1; i <= n; i++)
		for (j = 1; j <= n; j++)
			cin >> a[i][j];
	for (i = 1; i <= n; i++)
		oldx[i] = 0.0;
	cout << endl << "Given Matrix:" << endl;
	for (i = 1; i <= n; i++)
		for (j = 1; j <= n; j++)
			cout << a[i][j] << endl;
	cout << endl << "Sl.No." << "\t\t" << "X" << "\t\t" << "Y" << "\t\t" << "Z";
	for (iter = 1; iter <= maxit; iter++)
	{
		big = 0.0;
		for (i = 1; i <= n; i++)
		{
			sum = 0.0;
			for (j = 1; j <= n; j++)
			{
				if (i != j)
					sum = sum + a[i][j] * oldx[j];
			}
			x[i] = (a[i][n + 1] - sum) / a[i][j];
			err = x[i] - oldx[i];
			if (err > big)
				big = err;
		}
		cout << endl << iter;
		for (i = 1; i <= n; i++)
			cout << x[i] << "\t";
		if (big <= EPS)
		{
			cout << endl << "Converges to a sloution." << endl;
			for (i = 1; i <= n; i++)
				cout << "X[" << i << "]=" << x[i];
		}
		for (k = 1; k <= n; k++)
			oldx[k] = x[k];
	}
	cout << endl << "Does not converges in " << maxit << " iterations.";
}