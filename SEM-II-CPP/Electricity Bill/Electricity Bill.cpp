//bank details
#include<iostream>
#include<conio.h>
#include<cstdlib>
#include<iomanip>
using namespace std;
const int fixed=100;
void main()
{
 long units,prev,curr;
 char name[20];
 double amount,total,slab30,slab100,slab200,tax;
 clrscr();
 cout<<"Consumer Name : ";
 cin>>name;
 cout<<"Previous Reading : ";
 cin>>prev;
 cout<<"Current Reading : ";
 cin>>curr;
 units=curr-prev;
 if(units < 0)
 {
  cout<<endl<<"Invalid Readings!";
  getch();
  exit(0);
 }
 slab30=30*2.50;
 slab100=slab30+(70*3.50);
 slab200=slab100+(100*4.50);
 if(units>=0 && units<=30)
  amount=units*2.50;
 else if(units<=100)
  amount=slab30+(units-30)*3.50;
 else if(units<=200)
  amount=slab100+(units-100)*4.50;
 else
  amount=slab200+(units-200)*5.50;
 tax=(amount+fixed)*0.05;
 total=amount+tax;
 //bill print
 cout<<endl<<endl<<"Electricity Bill"<<endl;
 cout<<endl<<"Name : "<<name;
 cout<<endl<<"Current Reading : "<<curr;
 cout<<endl<<"Previous Reading : "<<prev;
 cout<<endl<<"Units Consumed : "<<units;
 cout<<setprecision(2);
 cout<<endl<<"Fixed Charge : "<<fixed;
 cout<<endl<<"Bill Amount : "<<amount;
 cout<<endl<<"Bill Taxes : "<<tax;
 cout<<endl<<"Net Due Amount : "<<total;
 getch();
}