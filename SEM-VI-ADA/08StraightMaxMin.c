//Algorithm : straightMaxMin(a[], n) to find maximum and minimum element
//input : a[] = array to be searched, n = no. of elements in the array
//output : max = element with maximum value, min= element whith minimum value
int straightMaxMin(int a[], int n)
{
    int max, min;
    max=min=a[0];
    for(int i=1; i<n; i++)
    {
        if(a[i]>max)
            max=a[i];
        else
            min=a[i];
    }
    return(max, min);
}
