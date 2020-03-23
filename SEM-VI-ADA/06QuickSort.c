//quick sort
#include<stdio.h>
int partition(int a[], int low, int high)
{
	int i, j, temp, pivot;
	pivot = a[low];
	i = 0;
	i = low + i;
	j = high;
	while (i)
	{
		while (i < high && pivot >= a[i])
			i++;
		while (pivot < a[j])
			j--;
		if (i < j)
		{
			temp = a[i];
			a[i] = a[j];
			a[j] = temp;
		}
		else
		{
			temp = a[low];
			a[low] = a[j];
			a[j] = temp;
			return j;
		}
	}
}
void quicksort(int a[], int low, int high)
{
	int j;
	if (low < high)
	{
		j = partition(a, low, high);
		quicksort(a, low, j - 1);
		quicksort(a, j + 1, high);
	}
}
int main(void)
{
	int i, n, a[20];
	cin.ignore();
	cout << "Quick Sort" << endl;
	cout << "Enter the value for 'n':";
	cin >> n;
	cout << endl << "Enter the numbers to sort:" << endl;
	for (i = 0; i < n; i++)
		cout << a[i];
	quicksort(a, 0, n - 1);
	cout << endl << "Sorted array:" << endl;
	for (i = 0; i < n; i++)
		cout << a[i];
}
