//binary search
#include<stdio.h>
int main(void)
{
	int a[10], i, n, key, low, high, mid, flag = -1;
	cin.ignore();
	cout << "Enter the size for an array:";
	cin >> n;
	cout << endl << "Enter " << n << " elements in ascending order:" << endl;
	for (i = 0; i < n; i++)
		cin >> a[i];
	cout << endl << "Enter the number to be searched:";
	cin >> key;
	low = 0;
	high = n - 1;
	while (low <= high)
	{
		mid = (low + high) / 2;
		if (key == a[mid])
		{
			flag = mid;
			break;
		}
		else if (key < a[mid])
			high = mid - 1;
		else
			low = mid + 1;
	}
	if (flag == -1)
		cout << endl << key << " not found.";
	else
		cout << endl << key << "found in " << flag << " position";
	return 0;
}
