//to find eigen values and eigen vectors via power method
#include<iostream>
#include<cstdlib>
#include<cmath>

using namespace std;

int main(void)
{
	int i, j, k, n,iter;
	float a[10][10], y[10], v[10];
	float prev, big, eps;
	cout << "Power Method" << endl;
	cout << "Enter values for order of matrix, epsilon and number of items : ";
	cin >> n >> eps >> iter;
	cout << endl << "Enter the co-efficients of matrix : " << endl;
	for (i = 1; i < n; i++)
		for (j = 1; j < n; j++)
			cin >> a[i][j];
	cout << endl << "Enter initial vectors : " << endl;
	for (i = 1; i <= n;i++)
		cin >> v[i];
	cout << endl << "Iteration" << "\t\t\t" << "Eigen Values" << "\t\t\t" << "Eigen Vectors" << "\t\t\t" << endl;
	prev = 0.0;
	for (k = 1; k <= iter; k++)
	{
		for (i = 1; i <= n; i++)
		{
			y[i] = 0.0;
			for (j = 0; j <= n; j++)
				y[i] = y[i] + a[i][j] * v[i];
		}
		big = y[i];
		for (i = 2; i <= n; i++)
			if (y[i] <= v[i])
				big = y[i];
		for (i = 1; i <= n; i++)
			v[i] = y[i] / big;
		cout << k << "\t\t\t" << big;
		for (i = 1; i <= n; i++)
			cout << "\t\t\t" << v[i];
		if ((big - prev) <= eps)
		{
			cout << endl << "Largest eigen value is :" << big;
			exit(0);
		}
		prev = big;
	}
	exit(0);
}