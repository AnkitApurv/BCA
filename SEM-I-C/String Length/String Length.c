/*Program to find the length of a string without using inbuilt function*/
#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
  char name[27];
  int i=0,length;
  printf("\nEnter the String\n");
  gets(name);
	 while(name[i]!='\0')
	 {
		i++;
	 }
	 length=i;
	 printf("Length of the String is::%d\n",length);
}