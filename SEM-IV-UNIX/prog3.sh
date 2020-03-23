clear
echo Program 3 : Even Odd
echo Enter the number :
read num
rem=`expr $num % 2`
if [ $num -eq 0 ]
then
 echo $num is even
else
 echo $num is odd
fi
