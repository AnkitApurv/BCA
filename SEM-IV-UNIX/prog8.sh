clear
echo Program 8 : Palindrome or not
i=1
echo Enter a string :
read str
len=`expr length $str`
l=$len
while [ $i -le $len ]
do
 ch1=`echo $str | cut -c $i`
 ch2=`echo $str | cut -c $i`
 if [ $ch1 != $ch2 ]
 then
  echo $str is not a palindrome
  exit
 fi
 i=`expr $i + 1`
 l=`expr $l - 1`
done
echo $str is a palindrome
