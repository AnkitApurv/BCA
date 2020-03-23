/*PROGRAM THAT REVERSE A GIVEN INTEGER NUMBER AND CHECK WHETHER THE NUMBER IS PALINDROME OR NOT*/
#include<stdio.h>
#include<conio.h>
void main ()
{
	long  rev, num, temp;
	long  rem;
	printf("\nEnter the number\n");
	scanf("%ld",&num);
	rev=0;
	temp=num;
	while (num>0)
	{
		rem=num % 10;
		num=num/10;
		rev=rev*10+rem;
	}
	printf("\nThe reverse of the number is %ld", rev);
	if (temp==rev)
	printf("\nThe number %ld is a palindrome", temp);
	else
	printf("\nThe number %ld is not a palindrome", temp);
    getch();
}
