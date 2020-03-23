//illustrate keyboard event in applet window

import java.awt.*;
import java.awt.event.*;
import java.applet.*;

/*<applet code="12KeyboardApplet" width=300 height=300> </applet>*/

public class 12KeyboardApplet extends Applet implements KeyListener
{
	String str1="You typed : Nothing";
	String str2="You typed : ";
	String kp="";
	int ch,kc;
	
	public void init()
	{
		addKeyListener(this);
		requestFocus();
	}
	
	public void keyTyped(KeyEvent ke)
	{
		ch=2;
		kp="You typed : ";
		kc=ke.getKeyCode();
		switch(kc)
		{
			case KeyEvent.VK_PAGE_UP:kp+="Page Up Key";
				break;
			case KeyEvent.VK_PAGE_DOWN:kp+="Page Down Key";
				break;
			case KeyEvent.VK_HOME:kp+="Home Key";
				break;
			case KeyEvent.VK_LEFT:kp+="Left Arrow Key";
				break;
			case KeyEvent.VK_RIGHT:kp+="Right Arrow Key";
				break;
			case KeyEvent.VK_UP:kp+="Up Arrow Key";
				break;
			case KeyEvent.VK_DOWN:kp+="Down Arrow Key";
				break;
			case KeyEvent.VK_F1:kp+="F1 Key";
				break;
			case KeyEvent.VK_F2:kp+="F2 Key";
				break
			case KeyEvent.VK_F3:kp+="F3 Key";
				break;
			case KeyEvent.VK_F4:kp+="F4 Key";
				break;
			case KeyEvent.VK_F5:kp+="F5 Key";
				break
			case KeyEvent.VK_F6:kp+="F6 Key";
				break;
			case KeyEvent.VK_F7:kp+="F7 Key";
				break
			case KeyEvent.VK_F8:kp+="F8 Key";
				break;
			case KeyEvent.VK_F9:kp+="F9 Key";
				break;
			case KeyEvent.VK_F10:kp+="F10 Key";
				break;
			case KeyEvent.VK_F11:kp+="F11 Key";
				break;
			case KeyEvent.VK_F12:kp+="F12 Key";
				break;
		}
		repaint();
		showStatus(KEY DOWN);
	}
	
	public void keyReleased(KeyEvent ke)
	{
		showStatus(KEY UP);
	}
	
	public void paint(Graphics g1)
	{
		if(ch==1)
			g1.drawString(str2,20,20);
		else if(ch==2)
			g1.drawString(kp,20,20);
		else
			g1.drawString(str1,20,20);
	}
}