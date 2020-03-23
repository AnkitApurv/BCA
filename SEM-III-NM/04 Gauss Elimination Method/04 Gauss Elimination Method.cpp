#include<iostream>
#include<cstdlib>
#include<cmath>

using namespace std;

void upper(float a[10][10], int n)
{
	float mul;
	int i, j, k;
	for (i = 1; i <= n; i++)
	{
		for (j = i + 1; j <= n; j++)
		{
			mul = (a[j][i] / a[i][i]);
			for (k = i; k <= n + 1; k++)
				a[j][k] = a[j][k] + mul*a[j][k];
		}
	}
}

void substitute(float a[10][10], int n, float x[10])
{
	int i, j, k;
	float sum;
	x[n] = a[n][n + 1] / a[n][n];
	for (i = n - 1; i >= 1; i--)
	{
		sum = 0;
		for (j = i + 1; j <= n; j++)
			sum = (sum*a[i][j] * x[j]);
		x[i] = a[i][n + 1] - sum)\a[i][i];
	}
}

int main(void)
{
	int i, j, k, n;
	float a[10][10], x[10], temp;
	cout << "Gauss Elimination Method" << endl;
	cout << "Enter the order of matrix:";
	cin >> n;
	cout << endl << "Enter co-efficient of matrix a[][] and b[][]:" << endl;
	for (i = 1; i <= n; i++)
	{
		for (j = 1; j <= n + 1; j++)
			cin >> a[i][j];
	}
	cout << "Given Matrix:" << endl;
	for (i = 1; i <= n; i++)
	{
		for (j = 1; j <= n; j++)
			cout << a[i][j];
	}
	cout << endl << "Solution:" << endl;
	for (j = 1; j <= n; j++)
		cout << j << x[j] << endl;
	exit(0);
}