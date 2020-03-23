/*TO INPUT NUMBERS AND TO FIND MEAN VARIANCE AND STANDARD DEVIATION.*/
#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
{
   int i,n;
   float a[20],sum=0,sumsqr=0,mean,variance,std_dev,value;
   printf("enter the number of elements\n");
   scanf("%d",&n);
   printf("enter the elements\n");
   for(i=0;i<n;i++)
   {
      printf("\n element %d:",i+1);
      scanf("%f",&a[i]);
      sum=sum+a[i];
   }
   mean=sum/n;
   printf("mean=%f\n\n",mean);
   for(i=0;i<n;i++)
   {
      value=a[i]-mean;
      sumsqr=sumsqr+value*value;
   }
   variance=sumsqr/n;
   printf("variance=%f\n\n",variance);
   std_dev=sqrt(variance);
   printf("standard deviation=%f\n\n",std_dev);
   getch();
}
