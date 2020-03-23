//Program 4 to illustrate constructor overloading
class Transactions
{
	long account_number;
	double account_balance;
	public Transactions(long acc_num, double acc_bal, double deposit_amt)
	{
		account_number = acc_num;
		account_balance = acc_bal;
		account_balance+= deposit_amt;
	}
	public Transactions(long acc_num, double acc_bal, double deposit_amt, String withdraw)
	{
		account_number = acc_num;
		account_balance = acc_bal;
		account_balance-= deposit_amt;
	}
	public void displayAccountBalance()
	{
		System.out.println("The balance amount for account_number:" + account_number + "is " + account_balance);
	}
}
public class BankTransactions
{
	public static void main(String[] args)
	{
		Transactions t;
		long accno=Long.parseLong(args[0]);
		double accbal=Double.parseDouble(args[1]);
		double depositamt=Double.parseDouble(args[2]);
		if(args.length==4)
		{
			String w=args[3];
			t=new Transactions(accno,accbal,depositamt,w);
		}
		else
			t=new Transactions(accno,accbal,depositamt);
		t.displayAccountBalance();
	}
}