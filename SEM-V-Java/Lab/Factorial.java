//prog 1 factorial of list of numbers
public class Factorial
{
	public static void main(String[] args)
	{
		long f;
		int l=args.length;
		if(l==0)
			System.out.println("Please pass some integer.");
		else
		{
			System.out.println("Factorial Values:");
			for(int i=0;i<l;i++)
			{
				f=1;
				int n=Integer.parseInt(args[i]);
				for(int j=1;j<=n;j++)
				{
					f*=j;
				}
				System.out.println("Factorial of "+n+" is "+f);
			}
		}
	}
}