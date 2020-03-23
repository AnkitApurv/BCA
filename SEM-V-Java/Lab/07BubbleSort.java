//to illustrate bubble sort
import java.io.*;
public class 07BubbleSort
{
	public static void main(String args[]) throws IOException
	{
		BufferedReader b=new BufferedReader(new InputStreamReader(System.in));
		int n;
		int i;
		int j;
		int temp;
		int a[]=new int[10];
		System.out.print("Enter array Size:");
		n=Integer.parseInt(b.readLine());
		System.out.println("Enter "+n+" elements:");
		for(i=0;i<n;i++)
			a[i]=Integer.parseInt(b.readLine());
		System.out.println("Elements for array:");
		for(i=0;i<n;i++)
			System.out.print(a[i]+"\t\t");
		for(i=0;i<n-1;i++)
		{
			for(j=0;j<n-i-1;j++)
			{
				if(a[j]>a[j+1])
				{
					temp=a[j];
					a[j]=a[j+1];
					a[j+1]=temp;
				}
			}
		}
		System.out.println("Sorted array elements:");
		for(i=0;i<n;i++)
			System.out.print(a[i]+"\t\t");
	}
}