import pac1.*;
public class InterfacePackageTest implements Pack1
{
	public int display(int num)
	{
		return num * a1 + a2;
	}
	public static void main(String[] args)
	{
		int n = 100;
		InterfacePackageTest obj1 = new InterfacePackageTest();
		int res = obj1.display(n);
		System.out.println("The result is " + res);
	}
}
