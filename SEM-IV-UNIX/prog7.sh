clear
echo Program 7 : prime numbers between 'm' and 'n'
echo Enter value of m :
read m
echo Enter value of n :
read n
echo Prime numbers in between $m and $n
while [ $m -le $n ]
do
 i=2
 flag=1
 while [ $i -lt $m ]
 do
  if [ `expr $m % $i' -eq 0 ]
  then
   flag=0
   break
  else
   i=`expr $i + 1`
  fi
 done
if [ $flag -eq 1 ]
then
 echo $m
fi
m=`expr $m + 1`
done
