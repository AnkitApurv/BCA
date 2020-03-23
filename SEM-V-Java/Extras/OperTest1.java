public class OperTest1
{
	public static void main(String[] args)
	{
		int m = 10;
		int n = 15;
		int x;
		x = ++m + n++;
		System.out.println("The value of x is " + x);
		System.out.println("The value of m is " + m);
		System.out.println("The value of n is " + n);
	}
}
