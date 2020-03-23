//prog 2
public class PrimeNumbers
{
	public static void main(String[] args)
	{
		if(args.length==0)
			System.out.println("Please input two numbers");
		else
		{
			int n1=Integer.parseInt(args[0]);
			int n2=Integer.parseInt(args[1]);
			System.out.println("Prime numbers between "+n1+" and "+n2+":\n");
			for(int i=n1;i<=n2;i++)
			{
				int rem;
				int k=2;
				boolean flag=false;
				while(k<=i/2)
				{
					rem=i%k;
					if(rem==0)
					{
						flag=true;
						break;
					}
					else
						k++;
				}
				if(!flag)
					System.out.print(i+"\t\t");
			}
		}
	}
}