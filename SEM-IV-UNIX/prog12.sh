clear
echo Program 12 : Student details file storage
opt=y
while [ $opt = y ]
do
echo Unique ID :
read uid
echo Name :
read name
echo Age :
read age
echo Gender :
read gen
echo Weight :
read wt
echo Height :
read ht
echo "| $uid | $name | $age | $gen | $wt | $ht |" >> student.txt
echo Wish to continue?{y/n}
read opt
done
clear
echo Student Details :
awk -F " | " '{printf"%4d %20s %4d %-8s %8d %3d\n",$1,$2,$3,$4,$5,$6}' student.txt