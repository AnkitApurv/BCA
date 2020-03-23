clear
echo Program 13 : Employee Details
echo Name :
read name
echo Department :
read dept
echo Basic Salary :
read basic
hra=`expr $basic \* 15 / 100`
da=`expr $basic \* 50 / 100`
cca=1000
it=`expr $basic \* 40 / 100`
ptax=200
gross=`expr $basic + $hra + $da + $cca`
ded=`expr $it + $ptax`
net=`expr $gross - $ded`
echo Play Slip :
echo Name : $name
echo Department : $dept
echo Basic Salary : $basic
echo Allowances:
echo DA : $da
echo HRA : $hra
echo CCA : $cca
echo Taxes :
echo Income Tax : $it
echo Professional Tax : $ptax
echo Gross Salary : $gross
echo Net Salary : $net