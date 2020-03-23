clear
echo Program 4 : factorial of number
echo Enter a number :
read n
if [ $n -gt 0 ]
then
 i=1
 f=1
 while [ $i -le $n ]
 do
  f=`expr $f \* $i`
  i=`expr $i + 1`
 done
 echo Factorial of $n is $f
else
 echo Enter a positive number
fi
