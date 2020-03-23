//Algorithm : matrixMul(int a[], int b[]) to multiply matrices a and b
//input : matrix a and matrix b
//output : matrix c
int matrixMul(int a[x,y], int b[x,y])
{
    for(int i=0; i<n; i++)
    {
        for(int j=0; j<n; j++)
        {
            int c[i,j]=0;
            for(int k=1; k<=n; k++)
                c[i,j]+=a[i,j]*b[i,j];
        }
    }
}
