/*Program to check entered character is alphabet,digit or special character*/
#include<stdio.h>
 main()
 {
	char ch;
	printf("Enter the character \n");
	scanf("%c",&ch);
	if((ch>='a'&& ch<='z')||(ch>='A'&& ch<='Z'))
		printf("\n It is an Alphabet\n");
	else
		if(ch>='0'&& ch<='9')
			printf("\n It is a Digit\n");
		else
			printf("\n It is a Special Character\n");
 }
