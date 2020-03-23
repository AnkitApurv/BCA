/* PROGRAM TO FIND THE GCD AND LCM OF TWO INTEGER NUMBER*/
#include<stdio.h>
#include<conio.h>
void main ()
{
	int m, n, temp;
	printf("\n Enter first number m\n");
	scanf("%d",&m);
	printf("\n Enter second number n\n");
	scanf("%d",&n);
	/*Multiply m and n, store the result in temp. This is required to calculate LCM. */
	     temp = m*n;
	      while (m!=n)
	 {
		 if (m>n)
		m=m-n;
		 else
		n=n-m;
	 }
	 /*print GCD and LCM */
	 printf("\n GCD = %d",n);
	 printf("\n LCM = %d",temp/n);
	 getch();
}
