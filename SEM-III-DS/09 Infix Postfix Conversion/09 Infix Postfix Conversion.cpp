//convert a valid fully parenthesized infix arithmatic expression to postfix expression
/*
We use a stack
* When an operand is read, output it
* When an operator is read
	– Pop until the top of the stack has an element of lower precedence
	– Then push it
* When ) is found, pop until we find the matching (
* ( has the lowest precedence when in the stack but has the highest precedence when in the input
* When we reach the end of input, pop until the stack is empty
*/
#include<iostream>
#include<cstring>
#include<cmath>
#include<cstdlib>
#include<cctype>
using namespace std;
const int max = 50;
char s[max];
int top = 0;
int precedence(char elem)
{
	switch (elem)
	{
	case '+':
	case '-':return(1);
	case '*':
	case '/':return(2);
	case '^':return(3);
	case '(':
	case '#':return(0);
	}
}
void push(char elem)
{
	++top;
	s[top] = elem;
}
char pop()
{
	char elem;
	elem = s[top];
	--top;
	return(elem);
}
int main(void)
{
	char infix[max], postfix[max], ch, elem;
	int i = 0, j = 0;
	cin.ignore();
	cout << "Infix to Postfix Conversion" << endl;
	cout << "Enter infix expression:";
	cin >> infix;
	push('#');
	for (i = 0; i < strlen(infix); i++)
	{
		ch = infix[i];
		if (isalnum(ch))	//is alphabet or numeral
			postfix[j++] = ch;
		else if (ch == '(')
			push(ch);
		else if (ch == ')')
		{
			while (s[top] != '(')
				postfix[j++] = pop();
			elem = pop();
		}
		else
		{
			while (precedence(s[top])>precedence(ch))
				postfix[j++] = pop();
			push(ch);
		}
	}
	while (s[top] != '#')
		postfix[j++] = pop();
	postfix[j] = '\0';
	cout << endl << "Infix Expression:" << infix;
	cout << endl << "Postfix Expression:" << postfix;
	cin.get();
}