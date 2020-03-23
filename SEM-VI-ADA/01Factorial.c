//Algorithm : factRecur(int n) to find factorial of a number
//input : n = natural number for which factorial is to be found
//output : factorial of n
int factRecur(int n) {
    if(n==0)
        return(1);
    else
        return(n*(factrecur(n-1)));
}
