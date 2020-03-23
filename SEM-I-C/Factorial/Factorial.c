/*Program to find factorial of a number using function*/
#include<stdio.h>
#include<conio.h>
int factorial(int);
void main()
{
  int n,fact;
  printf("Enter the number\n");
  scanf("%d",&n);
  fact=factorial(n);
  printf("Factorial of %d = %d",n,fact);
  getch();
  }

int factorial(int n)
  {
	int facto=1,i;
	for(i=1;i<=n;i++)
	  facto=facto*i;
	return(facto);
  }