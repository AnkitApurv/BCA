//Algorithm : towerHanoi(n) to emulate the tower of hanoi puzzle
//input : int n is the number of disks (natural numbers)
//output : tower of hanoi steps
//int a[], b[], c[] are the three towers
//a[] is the source and b[] is the destination
int towerHanoi(int n)
{
    int a[], b[], c[];
    if(n==1)
    {
        c[0]=a[0]; //move disk from source to destination
        a[0]=0;
    }
    else
    {
        towerHanoi(n-1, s, d, t);
        c[0]=a[0]; //move disk from source to destination
        a[0]=0;
    }
}

//tower of hanoi
#include<stdio.h>
#include<math.h>
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
