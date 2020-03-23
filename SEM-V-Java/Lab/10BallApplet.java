//illustrate ball movement in applet window

import java.awt.*;
import java.applet.*;

/*<applet code="10BallApplet" width=300 height=300> </applet>*/

public class 10BallApplet extends Applet implements Runnable
{
	int diameter=20;
	int xposition=0,yposition=0;
	int appletwidth,appletheight;
	boolean flag;
	boolean xincrement=false,yincrement=false;
	Thread bt;
	Dimension d;
	
	public void start()
	{
		d=getsize();
		appletwidth=d.width;
		appletheight=d.height;
		xposition=appletwidth-50;
		yposition=appletheight-100;
		xincrement=true;
		yincrement=true;
		bt=new Thread(this);
		bt.setPriority(Thread.MAX_PRIORITY);
		flag=true;
		bt.start();
	}
	
	public void run()
	{
		while(flag)
		{
			d=getsize();
			appletwidth=d.width;
			appletheight=d.height;
			newPosition();
			try
			{
				Thread.Sleep(10);
			}
			catch(InterruptedException ie) {}
		}
		
		public void paint(Graphics g1)
		{
			g1.fillOval(xposition,ypsition,30,30);
		}
		
		public void stop()
		{
			flag=false;
		}
		
		public void newPosition()
		{
			if(xposition==0)
				xincrement=true;
			if(xposition==appletwidth-30)
				xincrement=false;
			if(yposition==0)
				yincrement=true;
			if(yposition==appletheight-30)
				yincrement=false;
			
			if(xincrement==true)
				xposition++;
			else
				xposition--;
			if(yincrement==true)
				yposition++;
			else
				yposition--;
			
			repaint();
		}
		
	}
}