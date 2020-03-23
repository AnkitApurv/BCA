/* PROGRAM TO GENERATE FIRST N FIBONNACI NUMBERS*/
#include<stdio.h>
#include<conio.h>
void main()
{
  int i=2,fib1=0,fib2=1,fib,n;
  printf("\n How many Terms?");
  scanf("%d",&n);
  printf("\n%d\n%d",fib1,fib2);
  while(i<n)
  {
	fib=fib1+fib2;
	printf("\n%d",fib);
	fib1=fib2;
	fib2=fib;
	i++;
  }
  getch();
}
