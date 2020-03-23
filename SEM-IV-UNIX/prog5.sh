clear
echo Program 5 : string reverse
echo Enter a string :
read str
i=`expr length $str`
while [ $i -ge 1 ]
do
 c=`echo $str | cut -c $i`
 strrev=$strrev$c
 i=`expr $i - 1`
done
echo Reversed String : $strrev
