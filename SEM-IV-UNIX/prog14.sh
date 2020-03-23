clear
echo Program 14 : Filters
opt=y
while [ $opt = y ]
doecho MENU :
echo 1. rm -r
echo 2. uniq
echo 3. cmp
echo 4. tail
echo Select an option :
read option
case $option in
1) echo "rm -r" deletes directory with its contents
   echo Enter a name for the directory :
   read dirname
   mkdir $dirname
   cd $dirname
   touch file1 file2 file3
   echo Current directory is `pwd`
   cd ..
   rm -r $dirname
   echo $dirname removed sucessfully;;
2) echo "uniq" displays unique contents of a file
   echo Enter the filename :
   read flname
   sort $flname | uniq;;
3) echo "cmp" compares the contents of two files
   echo Enter first filename :
   read fn1
   echo Enter second filename :
   read fn2
   cmp $fn1 $fn2;;
4) echo "tail" last portions of a file
   echo Enter the filename :
   read flname
   echo Enter the number of lines to be displayed :
   read lines
   tail -$lines $flname;;
*) echo Invalid Choice;;
esac
echo Wish to continue?{y/n}
read opt
done