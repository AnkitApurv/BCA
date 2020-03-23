clear
echo Program 11 : Search for pattern in files in current directory
echo NOTE : Give space after each filename
echo Enter three filenames :
read f1 f2 f3
echo Enter search pattern :
read pat
grep -n "$pat" $f1 $f2 $f3
