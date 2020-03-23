//Algorithm : dncMaxMin(a[], n, i, j) to find maximum and minimum element via Divide & Conquer technique
//input : a[] = array to be searched, n = no. of elements in the array
//output : max = element with maximum value, min= element whith minimum value
int dncMaxMin(int a[], int n, int i, int j)
{
    int max, min;
    if(i==j)
        max=min=a[0];
    else if(i=j-1)
    {
        if(a[i]<a[j])
        {
            max=a[j];
            min=a[i];
        }
        else
        {
            max=a[i];
            min=a[j];
        }
    }
    else
    {
        int mid=(i+j)/2;
        dncMaxMin(i, mid, max, min);
        dncMaxMin(mid+1, j, int max1, int min1);
        if(max<max1)
            max=max1;
        if(min>min1)
            min=min1;
    }
    return(max, min);
}
