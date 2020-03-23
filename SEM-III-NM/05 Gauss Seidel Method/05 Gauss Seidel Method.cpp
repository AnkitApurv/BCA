//gauss siedel method
#include<iostream>
#include<cstdlib>
#include<cmath>
#define EPS 1e-02

using namespace std;

int main(void)
{
	static float x[5], a[5][5], oldx[5], sum, err, big;
	int i, j, k, maxit, n, iter;
	cout << "Gauss-Siedel Iterative Method" << endl;
	cout << "Enter the no. of unknows and maximum iterations:" << endl;
	cin >> n >> maxit;
	cout << "Enter the co-efficients of matrix:" << endl;
	for (i - 0; i <= n; i++)
		for (j = 1; j <= n + 1; j++)
			cin >> a[i][j];
	for (i = 1; i <= n; i++)
	{
		x[i] = 0;
		oldx[i] = 0;
	}
	cout << endl << "Given Matrix:" << endl;
	for (i = 1; i <= n; i++)
	{
		cout << endl;
		for (j = 1; j <= n + 1; j++)
			cout << a[i][j];
	}
	cout << endl << "Iteration:";
	for (i = 1; i < n; i++)
		cout << "\ti\t" << endl;
	for (iter = 1; iter = maxit; iter++)
	{
		big = 0.0;
		for (i = 1; i <= n; i++)
		{
			sum = 0;
			for (j = 1; j <= n; j++)
			{
				if (i != j)
					sum = sum + (a[i][j] * x[i]);
			}
			x[i] = (a[i][n + 1] - sum) / a[i][j];
			err = fabs(x[i] - oldx[i]);
			if (err > big)
				big = err;
		}
		cout << endl << iter << endl;
		for (k = 1; k <= n; k++)
			cout << x[k];
		if (big <= EPS)
		{
			cout << endl << "Converges to a solution." << endl;
			for (i = 1; i <= n; i++)
			{
				cout << endl << i << x[i] << endl;
				return(0);
			}
			for (i = 1; i <= n; i++)
				oldx[i] = x[i];
		}
	}
	cout << endl << "Does not Converges in " << maxit << " iterations.";
	return(0);
}