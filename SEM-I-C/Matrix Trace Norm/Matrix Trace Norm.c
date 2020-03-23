/*Program to find trace and norm of a matrix using function*/
#include<stdio.h>
#include<conio.h>
#include<math.h>
void norm_trace(int a[10][10],int);
void main()
 {
  int i,j,a[10][10],n;
  printf("Enter a order of a matrix\n");
  scanf("%d",&n);
  printf("Enter the elements of a matrix\n");
  for(i=0;i<n;i++)
  for(j=0;j<n;j++)
	 scanf("%d",&a[i][j]);
	 norm_trace(a,n);
 }
 void norm_trace(int a[10][10],int n)
 {
	int i,j,trace=0,sum;
	float norm;
	for(i=0;i<n;i++)
	 {
	 for(j=0;j<n;j++)
	  trace=trace+a[i][i];
	 }
	sum=0;
	for(i=0;i<n;i++)
	  {
	  for(j=0;j<n;j++)
		 sum=sum+a[i][j]*a[i][j];
	  }
	norm=sqrt(sum);
	printf("Trace of the matrix is=%d",trace);
	printf("\nNorm of the matrix is=%f",norm);
	getch();
 }


