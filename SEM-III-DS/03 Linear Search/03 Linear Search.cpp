//linear search
#include<iostream>
using namespace std;
int main(void)
{
	int a[100], i, key, size, flag = -1;
	cin.ignore();
	cout << "Enter the size of the array:";
	cin >> size ;
	cout << endl << "Enter" << size << "elements in the array:" << endl;
	for (i = 0; i < size; i++)
		cin >> a[i];
	cout << endl << "Enter the element to be searched:";
	cin >> key;
	for (i = 0; i < size; i++)
	{
		if (a[i] == key)
		{
			flag = i;
			break;
		}
	}
	if (flag == -1)
		cout << endl << "Element " << key << " not found in the array:";
	else
		cout << endl << "Element " << key << " found in" << flag+1 << ":";
	return 0;
}