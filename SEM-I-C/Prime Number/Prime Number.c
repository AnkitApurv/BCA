/*PROGRAM TO FIND WHETHER THE GIVEN NUMBER IS PRIME OR NOT*/
#include<stdio.h>
#include<conio.h>
void main ()
{
  int n,i,flag=0;
  printf("\n Enter the number:");
  scanf("%d",&n);
  for (i=2;i<=n/2;i++)
  {
	if (n%i==0)
	{
	  flag=1;
	  continue;
	}
  // printf("12343567\n");
  }
  if (flag==1)
  printf("\n The number is not prime\n");
  else
  printf("\n The number is prime\n");
  getch();
}
