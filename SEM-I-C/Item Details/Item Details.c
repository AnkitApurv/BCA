/*Program to accept different goods with the number, price, date of purchase and display them*/
#include<stdio.h>
#include<conio.h>
void main()
{
  struct date
  {
	 int dd;
	 int mm;
	 int yy;
  };
  struct item
  {
	 int item_no;
	 char item_name[20];
	 struct date pay_date;
	 float item_rate;
	};
	struct item item1;
	int i,n;
	printf("\nHow many items?\n");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
	  printf("Enter item id, item name, purchase date(dd mm yyyy) and it's rate\n");
	  scanf("%d",&item1.item_no);
	  scanf("%s",&item1.item_name);
	  scanf("%d%d%d",&item1.pay_date.dd,&item1.pay_date.mm,&item1.pay_date.yy);
	  scanf("%f",&item1.item_rate);
	  printf("====Item Details====\n");
	  printf("\n Item Id      = %d",item1.item_no);
	  printf("\n Item Name    = %s",item1.item_name);
      printf("\n Purchase Date= %d/%d/%d",item1.pay_date.dd,item1.pay_date.mm,item1.pay_date.yy);
	  printf("\n Item Rate    = %f\n",item1.item_rate);
	}
 }
























