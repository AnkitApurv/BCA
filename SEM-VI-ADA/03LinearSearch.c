//Algorithm : linearSearch(a[], n, key) for linear search
//input : int a[] = array to be searched, n = size of the array, key = value to be searched
//output : enum boolean found
enum boolean
{
    false,
    true
};

enum boolean linearSearch(int a[], int n, int key)
{
    enum boolean found=false;
    for(int i=0; i<n; i++)
    {
        if(a[i]==key)
            found=true;
    }
    return(found);
}
