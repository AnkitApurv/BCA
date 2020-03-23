//stack
#include<iostream>
#include<cstdlib>
using namespace std;
const int maxstk = 2;
int top = -1, stack[maxstk];
int push(void)
{
	int item;
	if (top == maxstk - 1)
	{
		cout << endl << "Stack Overflow";
		exit(0);
	}
	cout << endl << "Enter the item to be pushed:";
	cin >> item;
	top++;
	stack[top] = item;
	cout << endl << "Item pushed." << endl;
	//end of push ops
}
int pop(void)
{
	if (top == -1)
	{
		cout << endl << "Stack Underflow";
		exit(0);
	}
	cout << endl << "Item popped is" << stack[top] << endl;
	top--;
	//end of pop ops
}
int display(void)
{
	int i;
	if (top == -1)
	{
		cout << endl << "Stack is empty.";
		exit(0);
	}
	else
	{
		cout << endl << "Stack Contents:" << endl;
		for (i = top; i >= 0; i--)
			cout << stack[i];
	}
}
int main(void)
{
	int ch;
	while (1)
	{
		cout << endl << "Stacks" << endl;
		cout << "1.Push" << endl;
		cout << "2.Pop" << endl;
		cout << "3.Display" << endl;
		cout << "4.Exit" << endl;
		cout << "Choice:";
		//options
		cin >> ch;
		cout << endl;
		switch (ch)
		{
		case 1:push();
			break;
		case 2:pop();
			break;
		case 3:display();
			break;
		case 4:exit(0);
		}//end switch
	}
}