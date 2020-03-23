//queue operations
#include<iostream>
#include<cstdlib>
using namespace std;
const int n = 5;
int front = 0, rear = -1, queue[n];
int qinsert(void)
{
	int item;
	if (rear == n - 1)
	{
		cout << endl << "Queue Full." << endl;
		return(0);
	}
	cout << endl << "Enter the item for queue::";
	cin >> item;
	rear++;
	queue[rear] = item;
	return(0);
}
int qdelete(void)
{
	int item;
	if (rear == front - 1)
	{
		cout << endl << "Queue Empty." << endl;
		return(0);
	}
	if (front == rear)
	{
		cout << endl << "Last deleted:" << queue[front];
		front = front + 1;
	}
}
int qdisplay(void)
{
	int item, i;
	if (rear == front - 1)
	{
		cout << endl << "Queue Empty." << endl;
		return(0);
	}
	cout << endl << "Queue Contents:" << endl;
	for (i = front; i <= rear; i++)
	{
		cout << endl << "Front:" << queue[front] << endl;
		cout << endl << "Rear:" << queue[rear] << endl;
	}
}
int main(void)
{
	int ch;
	cin.ignore();
	while (1)
	{
		cout << endl << "Queue" << endl;
		cout << "1.Insert" << endl;
		cout << "2.Delete" << endl;
		cout << "3.Display" << endl;
		cout << "4.Exit" << endl;
		cout << "Choice:";
		cin >> ch;
		switch (ch)
		{
		case 1:qinsert();
			break;
		case 2:qdelete();
			break;
		case 3:qdisplay();
			break;
		case 4:exit(0);
		}
	}
}