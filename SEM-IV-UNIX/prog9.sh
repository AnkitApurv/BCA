clear
echo Program 9 : Display file properties in current directory
for flname in *
do
if [ -f $flname ]
then
echo $flname is an ORDINARY file
elif [ -d $flname ]
then
echo $flname is a DIRECTORY file
elif [ -r $flname ]
then
echo $flname has READ permission
elif [ -w $flname ]
then
echo $flname has WRITE permission
elif [ -x $flname ]
then
echo $flname has EXECUTE permission
fi
done
