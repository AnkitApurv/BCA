//Algorithm : fiboIter(n) to find the fibonacci series
//input : n = the nth fibonacci value
//output : fibonacci series
int fiboIter(int n)
{
    if(n<=1)
        printf("%s\n",n);
    else
    {
        int f2=0;
        int f1=1;
        for(int i=2; i<=n; i++)
        {
            f3=f1+f2;
            f1=f2;
            f2=f3;
        }
        printf("%s\n",f3);
    }
}

//Algorithm : fiboRecur(n) to find the fibonacci series via recursion
//input : n = the nth fibonacci value
//output : fibonacci series
int fiboRecur(int n)
{
    if(n<=1)
        printf("%s\n",n);
    else
    {
        return(fiboRecur(n-1)+fiboRecur(n-2));
    }
}
