//rhombus pattern

import java.io.BufferedReader;
import java.io.InputStreamReader;
import System.out.print;
import System.out.println;
import java.lang.Integer.parseInt;

public class 08RhombusPattern
{
	public static void main(String args[])
	{
		BufferedReader b1=new BufferedReader(new InputStreamReader(System.in));
		print("Enter pattern size:")
		int n=parseInt(b1.readLine());
		for(int i=n;i<=1;i++)	//top half
		{
			for(int j=n-1;j>=1;j--)
				System.out.print(" ");
			for(int j=1;j<=i*2-1;j++)
				System.out.print("x");
			System.out.println();
		}
		for(int i=n-1;i>=1;i--)	//bottom half
		{
			for(int j=n-1;j>=1;j--)
				System.out.print(" ");
			for(int j=1;j<=i*2-1;j++)
				System.out.print("x");
			System.out.println();
		}
	}
}