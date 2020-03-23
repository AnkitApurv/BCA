/*Program to compute the sum of even numbers and odd numbers numbers using function*/
#include<stdio.h>
#include<conio.h>
void evenodd(int [],int);
void main()
{
  int a[10],i,j,n;
  printf("How many elements\n");
  scanf("%d",&n);
  printf("Enter the element \n");
  for(i=0;i<n;i++)
	 scanf("%d",&a[i]);
  evenodd(a,n);
  getch();
}
void evenodd(int a[],int n)
{
  int i,osum=0,esum=0;
  for(i=0;i<n;i++)
	 if(a[i]%2==0)
		esum=esum+a[i];
	 else
		osum=osum+a[i];
	printf("\nSum of even numbers is:%d",esum);
	printf("\nSum of odd numbers is:%d",osum);
}

