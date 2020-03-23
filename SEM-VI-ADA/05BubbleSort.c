//bubble sort
#include<stdio.h>
int main(void)
{
	int a[30], n, i, j, temp;
	cin.ignore();
	cout << "Bubble Sort" << endl;
	cout << "Enter the no. of elements:";
	cin >> n;
	cout << endl << "Enter array elements:" << endl;
	for (i = 0; i < n; i++)
		cin >> a[i];
	for (i = 0; i < (n - 1); i++)
	{
		for (j = 0; i < (n - i - 1);i++)
			if (a[j] > a[j + 1])
			{
				temp = a[j];
				a[j] = a[j + 1];
				a[j + 1] = temp;
			}
	}
	cout << endl << "After sort:" << endl;
	for (i = 0; i < n; i++)
		cout << a[i];
	exit;
}
