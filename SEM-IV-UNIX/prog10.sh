clear
echo Program 10 : Compression Decompression
echo Enter a filename to be compressed :
read flname
echo Size before compression :
wc -c $flname
gzip $flname
echo Result of file compression :
gzip -l $flname.gz
echo Decompressing file :
gunzip $flname.gz
echo Size of file after decompression :
wc -c $flname
