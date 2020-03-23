//Algorithm : uniqueArray(int a[]) to check if all elements of an array are unique
//input : int a[] is the array to be checked
//output : enum (boolean) unique
enum boolean
{
    false,
    true
};

enum boolean uniqueArray(int a[x])
{
    enum boolean unique=true;
    for(int i=0; i<n; i++)
    {
        for(int j=i+1; j<=n; j++)
        {
            if(a[i]==a[j])
                unique=false;
        }
    }
    return(unique);
}
