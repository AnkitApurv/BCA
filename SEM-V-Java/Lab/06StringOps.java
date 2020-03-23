//illustrate String class and it's methods

import System.out.println;

public class 06StringOps
{
	public static void main(String[] args)
	{
		if(args.length==0)
			println("Please input some string as cmd arguements.");
		else
		{
			println("String length:"+args.length);
			for(int i=0;i<args.length;i++)
				println("No. of characters in "+args[i]+":"+args[i].length);
			StringBuffer sb1=new StringBuffer(args);
			String s1=args.replace("l","L");
			println("Reverse of "+args+" is"+sb1.reverse);
			println("After replacement "+args+" is"+s1);
			println("Extracted substring from location 3 to 7 is "+args.subString(3.7));
			println("Character at location 5 is "+args.charAt(4));
		}
	}
}