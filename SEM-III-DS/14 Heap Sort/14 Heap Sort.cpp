//heap sort
#include<iostream>
using namespace std;
int heapify(int a[], int n)
{
	int i, j, k, item;
	for (k = 1; k < n; k++)
	{
		item = a[k];
		i = k;
		j = (i - 1) / 2;
		while (i>0 && item > a[j])
		{
			a[i] = a[j];
			i = j;
			j = (i - 1) / 2;
		}
	}
	a[i] = item;
}
int adjust(int a[], int n)
{
	int i, j, item;
	j = 0;
	item = a[j];
	i = 2 * j + 1;
	while (i < n - 1)
	{
		if (i + 1 <= n - 1)
			if (a[i] < a[i + 1])
				i++;
		if (item < a[i])
		{
			a[j] = a[i];
			j = i;
			i = 2 * j + 1;
		}
		else
			break;
	}
	a[j] = item;
}
int heapsort(int a[], int n)
{
	int i, temp;
	heapify(a, n);
	for (i = n - 1; i > 0; i--)
	{
		temp = a[0];
		a[0] = a[i];
		a[i] = temp;
		adjust(a, i);
	}
}
int main(void)
{
	int a[20], n, temp, i;
	cout << endl << "Heap Sort" << endl;
	cout << endl << "No. of elements:";
	cin >> n;
	cout << endl << "Elements:" << endl;
	for (i = 0; i <= n; i++)
		cin >> a[i];
	heapsort(a, n);
	cout << endl << "Sorted:" << endl;
	for (i = 0; i < n; i++)
		cout << a[i];
}