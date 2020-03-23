/*TO READ A STRING AND CHECK IF IT IS PALINDROME OR NOT.*/
#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
   int i,len,flag=0;
   char word[25];
   printf("\nEnter the string\n");
   scanf("%s",word);
   len=strlen(word);
   for(i=0;i<len;i++)
   {
      if(word[i]!=word[--len])
      {
         flag=1;
         break;
      }
   }
   if(flag==1)
   printf("\nThe string is not palindrome\n");
   else
   printf("\nThe string is palindrome\n");
   getch();
}
