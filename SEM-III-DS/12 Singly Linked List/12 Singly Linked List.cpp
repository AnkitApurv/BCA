//singly linked list
#include<iostream>
#include<cctype>
#include<cstdlib>
using namespace std;
struct node
{
	int regno;
	char name[10];
	struct node*link;
};
typedef struct node nodet;
nodet*start = NULL;
int cqcreate(void)
{
	char ch;
	int i = 0;
	nodet*curptr,*newnode;
	start = (nodet*)malloc(sizeof(nodet));
	curptr = start;
	cout << endl << "Reg. No.:";
	cin >> curptr->regno;
	cout << endl << "Name:";
	cin >> curptr->name;
	while (1)
	{
		cout << endl << "Do you wish to add one more node?{y/n}:";
		cin >> ch;
		if (ch == 'y')
		{
			newnode = (nodet*)malloc(sizeof(nodet));
			curptr->link = newnode;
			curptr = newnode;
			cout << endl << "Reg. No.:";
			cin >> curptr->regno;
			cout << endl << "Name:";
			cin >> curptr->name;
		}
		else
		{
			curptr->link = NULL;
			break;
		}
	}
}
int cqinsert(void)
{
	nodet*newnode, *curptr;
	newnode = (nodet*)malloc(sizeof(nodet));
	curptr->link = newnode;
	curptr = newnode;
	cout << endl << "Reg. No.:";
	cin >> curptr->regno;
	cout << endl << "Name:";
	cin >> curptr->name;
	newnode->link = start;
	start = newnode;
}
int cqdelete(void)
{
	int no;
	nodet*curptr = start, *prevptr = NULL;
	cout << endl << "Reg. No. to be deleted:";
	cin >> no;
	if (start == NULL)
	{
		cout << endl << "Linked list is empty.";
		return(0);
	}
	else if (start->regno == no)
	{
		start = start->link;
		free(curptr);
		return(0);
	}
	else
	{
		while ((curptr->regno != no) && (curptr->link != NULL))
		{
			prevptr = curptr;
			curptr = curptr->link;
		}
		if (curptr == NULL)
			cout << endl << "Item not found.";
		else
			prevptr->link = curptr->link;
	}
}
int cqsearch(void)
{
	int loc = 0, no;
	nodet*curptr = start;
	cout << endl << "Reg. No. to be searched:";
	cin >> no;
	while (curptr != NULL)
	{
		if (no == curptr->regno)
		{
			loc++;
			cout << endl << "Reg. No. " << no << " found at position " << loc;
			return(0);
		}
		else
		{
			curptr = curptr->link;
			loc++;
		}
	}
	cout << endl << "Given Reg. No. does not exist.";
}
int cqdisplay(void)
{
	nodet*curptr = start;
	if (start == NULL)
	{
		cout << endl << "Linked list is empty.";
		return(0);
	}
	else
	{
		while (curptr != NULL)
		{
			cout << endl << "Reg No.:" << curptr->regno;
			cout << endl << "Name:" << curptr->name;
			curptr = curptr->link;
		}
		cout << endl << "NULL" << endl;
	}
}
int main(void)
{
	int ch;
	while (1)
	{
		cout << endl << "Singly Linked List" << endl;
		cout << endl << "1.Create a list.";
		cout << endl << "2.Insert a node at the beginning.";
		cout << endl << "3.Delete a node based on Reg. No..";
		cout << endl << "4.Search a node based on Reg. No..";
		cout << endl << "5.Display all the nodes.";
		cout << endl << "6.Exit";
		cout << endl << "Choice:";
		cin >> ch;
		switch (ch)
		{
		case 1:start = NULL;
			cqcreate();
			break;
		case 2:cqinsert();
			break;
		case 3:cqdelete();
			break;
		case 4:cqsearch();
			break;
		case 5:cqdisplay();
			break;
		case 6:exit(0);
		default:cout << endl << "Wrong Choice." << endl;
		}
	}
}