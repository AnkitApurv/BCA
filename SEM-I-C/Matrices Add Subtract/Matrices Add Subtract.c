/*To read two matrices and perform addition and substraction of the two matrices*/
#include<stdio.h>
#include<conio.h>
void main()
{
  int i,j,n,m,b[10][10],a[10][10],c[10][10],s[10][10];
  printf("Enter the order of both the matrices\n");
  scanf("%d%d",&n,&m);
  printf("Enter the emlements of the matrix a\n");
  for(i=0;i<n;i++)
	for(j=0;j<m;j++)
	  scanf("%d",&a[i][j]);
	  printf("Enter the elements of matrix b\n");
	  for(i=0;i<n;i++)
	  for(j=0;j<m;j++)
	  scanf("%d",&b[i][j]);

  for(i=0;i<n;i++)
	for(j=0;j<m;j++)
	{
	  c[i][j]=a[i][j]+b[i][j];
	  s[i][j]=a[i][j]-b[i][j];
	}
	printf("\n Addition of two matrix is\n");
	for(i=0;i<n;i++)
	{
	  for(j=0;j<m;j++)
	  {
		 printf("%2d",c[i][j]);
	  }
		printf("\n");
	}
	printf("\n Substraction of two matrix is\n");
	for(i=0;i<n;i++)
	{
	for(j=0;j<m;j++)
	{
	  printf("%2d",s[i][j]);
	}
	 printf("\n");
	}
}


