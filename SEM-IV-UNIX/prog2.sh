clear
echo Program 2 : leap year or not
echo Enter the year :
read year
rem=`expr $year % 4`
if [ rem -eq 0 ]
then
 echo $year is a leap year
else
 echo $year is not a leap year
fi
