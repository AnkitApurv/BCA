/*Program to find roots of quadratic equation*/
 #include<stdio.h>
 #include<math.h>
 #include<conio.h>
 #include<process.h>
 void main()
 {
	int flag;
	float a,b,c,d;
	float x,x1,x2;
	float rpart,ipart;
	printf("To Find the Roots of the Quadratic Equation\n\n");
	printf("Enter 3 Numbers:\n");
	scanf("%f %f %f",&a,&b,&c);
	/*solution to the equation of the form bx+c=0 */
	if(a==0)
	{
		x=-b/c;
		printf("root x = %7.3f",x);
		exit(0);
	}
	d=b*b-4*a*c;
	if(d>0)
		flag=1;
	else if(d==0)
		flag=2;
	else
		flag=3;
	/* solution using switch case statement */
	switch(flag)
	{
	  case 1: printf("\n Real and Distinct Roots are :\n");
				 x1=(-b+sqrt(d))/(2*a);
				 x2=(-b-sqrt(d))/(2*a);
				 printf(" x1 = %7.3f \t x2 = %7.3f\n",x1,x2);
				 break;
	  case 2: printf("\n Roots are Equal \n");
				 x1=-b/(2*a);
				 x2=x1;
				 printf(" x1 = %7.3f \t x2 = %7.3f\n",x1,x2);
				 break;
	  case 3: printf("\n Roots are Complex\n");
				 d=sqrt(abs(d));
				 rpart=-b/(2*a);
				 ipart=d/(2*a);
				 printf("\n x1 = %7.3f + i%7.3f\n",rpart,ipart);
				 printf("\n x2 = %7.3f - i%7.3f\n",rpart,ipart);
				 break;
	}
	getch();
}
