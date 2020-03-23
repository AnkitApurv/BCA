//Digital Clock
#include<iostream>
#include<time.h>
#include<dos.h>
#include<conio.h>
using namespace std;
void main()
{
	char t[9];
	clrscr();
	while (!kbhit())
	{
		_strtime(t);
		gotoxy(34, 12);
		cout << t;
		delay(1000);
	}
}