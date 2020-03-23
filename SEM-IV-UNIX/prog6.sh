clear
echo Program 6 : vowels in a string
echo Enter a string :
read str
count=0
l=`expr length $str`
i=1
while [ $i -le $l ]
do
 ch=`expr $str | cut -c $i`
 case $ch in
  [aeiouAEIOU])count=`expr $count + 1`;;
 esac
 i=`expr $i + l`
done
echo Vowels in the given string : $count
