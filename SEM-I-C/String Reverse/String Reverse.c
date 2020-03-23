/*to find reverse of a string using pointers*/
#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
	char str[20],rev[20];
	char *st,*rv,*start;
	printf("Enter the string\n");
	gets(str);
	st=str;
	rv=rev;
	start=str;
	while(*st!='\0')
	st++;
	st--;
	while(st>=start)
	{
	  *rv=*st;
	  st--;
	  rv++;
	}
	*rv='\0';
	printf("\nThe original string is:: %s",str);
	printf("\nThe reversed string is:: %s",rev);
	getch();
}
