//circular queue
#include<iostream>
#include<process.h>
using namespace std;
const int n = 3;
int front = -1, rear = -1, cq[n], item;
int cqinsert(void)
{
	if ((front == (rear + 1) % n))
		cout << endl << "Queue Full." << endl;
	else
	{
		cout << endl << "Enter elements to be added:";
		cin >> item;
		if (front == -1)
			front = rear = 0;
		else
			rear = (rear + 1) % n;
		cq[rear] = item;
	}
}
int cqdelete(void)
{
	int item;
	if (front == -1)
		cout << endl << "Queue Empty." << endl;
	else
	{
		item = cq[front];
		cout << endl << "Element deleted:" << item;
		if (front == rear)
			front = rear = -1;
		else
			front = (front + 1) % n;
	}
}
int cqdisplay(void)
{
	int i;
	if (front == -1)
		cout << endl << "Queue Empty." << endl;
	else
	{
		if (front <= rear)
		{
			cout << endl;
			for (i = front; i <= rear; i++)
				cout << cq[i];
		}
		if (front > rear)
		{
			cout << endl;
			for (i = front; i <= n - 1; i++)
				cout << cq[i];
		}
	}
}
int main(void)
{
	int item, choice;
	cin.ignore();
	while (1)
	{
		cout << endl << "Circular Queue" << endl;
		cout << endl << "1.Insert";
		cout << endl << "2.Delete";
		cout << endl << "3.Display";
		cout << endl << "4.Exit";
		cout << endl << "Choice:";
		cin >> choice;
		switch (choice)
		{
		case 1:cqinsert();
			break;
		case 2:cqdelete();
			break;
		case 3:cqdisplay();
			break;
		case 4:exit(0);
		default:cout << endl << "Wrong Choice.";
			exit(1);
		}
	}
}