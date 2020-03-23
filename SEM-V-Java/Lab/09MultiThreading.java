//multithreding illustration

import System.out.println;

class Mythread implements Runnable
{
	Thread t;
	Mythread(String tname)
	{
		t=new Thread(this.tname)
		t.start();
	}
	public void run()
	{
		try
		{
			for(int i=1;i<=5;i++)
			{
				println(l+":"+i);
				Thread.Sleep(1000);
			}
		}
		catch(InterruptedException ie)
		{
			println("Child thread interrupted.");
		}
	}
}

public class 09MultiThreading
{
	public static void main(String args[])
	{
		println("Main thread begins...");
		Mythread mt1=new MyThread("child1");
		Mythread mt2=new MyThread("child2");
		Mythread mt3=new MyThread("child3");
		Mythread mt4=new MyThread("child4");
		Mythread mt5=new MyThread("child5");
		try
		{
			println("Main thread waits for child thread.");
			mt1.t.join();
			mt2.t.join();
			mt3.t.join();
			mt4.t.join();
			mt5.t.join();
		}
		catch(InterruptedException ie)
		{
			println("Main thread wait ends.");
		}
		println("Main thread wait ends.");
		try
		{
			for(int i=1;i<=5;i++)
				println("Child"+1);
		}
		catch(InterruptedException ie)
		{
			println("Main thread wait ends.");
		}
	}
}