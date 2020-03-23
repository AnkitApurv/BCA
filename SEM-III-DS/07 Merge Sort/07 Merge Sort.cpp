//merge sort
#include<iostream>
using namespace std;
void merge(int a[], int low, int mid, int high)
{
	int i, j, k, c[50];
	i = low;
	j = mid + 1;
	k = low;
	while ((i <= mid) && (j <= high))
	{
		if (a[i] < a[j])
		{
			c[k] = a[i];
			k++;
			i++;
		}
		else
		{
			c[k] = a[i];
			k++;
			j++;
		}
	}
	while (i <= mid)
	{
		c[k] = a[i];
		k++;
		i++;
	}
	while (j <= high)
	{
		c[k] = a[j];
		k++;
		j++;
	}
	for (i = low; i < k; i++)
		a[i] = c[i];
}
void mergesort(int a[], int low, int high)
{
	int mid;
	if (low < high)
	{
		mid = low + high / 2;
		mergesort(a, low, mid);
		mergesort(a, mid + 1, high);
		merge(a, low, mid, high);
	}
}
int main(void)
{
	int a[20], i, n;
	cout << "Merge Sort" << endl;
	cout << "Enter the no. of elements:";
	cin >> n;
	cout << endl << "Enter the elements for the array:" << endl;
	for (i = 0; i < n; i++)
		cin >> a[i];
	mergesort(a, 0, n - 1);
	cout << endl << "Sorted array elements:" << endl;
	for (i = 0; i < n; i++)
		cout << a[i];
}