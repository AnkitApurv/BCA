//tower of hanoi
#include<iostream>
#include<cmath>
using namespace std;
void hanoi(int x, char from, char to, char count)
{
	if (x == 1)
		cout << "Move disk" << from << "to" << to;
	else
	{
		hanoi(x - 1, from, count, to);
		cout << "Move disk" << x << "from" << from << "to" << to << endl;
		count++;
		hanoi(x - 1, count, to, from);
	}
}
int main(void)
{
	int disk, moves;
	cin.ignore();
	cout << "Enter the no. of disks you want to play with:";
	cin >> disk;
	moves = pow(2, disk) - 1;
	cout << "No. of moves recquired :" << moves;
	hanoi(disk, 'A', 'C', 'B');
	return(0);
}