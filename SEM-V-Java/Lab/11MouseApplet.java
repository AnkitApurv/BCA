//illustrate mouse event in applet window

import java.awt.*;
import java.awt.event.*;
import java.applet.*;

/*<applet code="11MouseApplet" width=300 height=300> </applet>*/

public class 11MouseApplet extends Applet implements MouseListener, MouseMotionListener
{
	String str1="";
	
	public void init
	{
		addMouseListener(this);
		addMouseMotionListener(this);
	}
	
	public void paint(Graphics g1)
	{
		g1.drawString(str1,30,30);
	}
	
	public void mousePassed(MouseEvent me1)
	{
		str1="Mouse Passed";
		repaint();
	}
	
	public void mouseClicked(MouseEvent me1)
	{
		str1="Mouse Clicked";
		repaint();
	}
	
	public void mouseEntered(MouseEvent me1)
	{
		str1="Mouse Entered";
		repaint();
	}
	
	public void mouseExited(MouseEvent me1)
	{
		str1="Mouse Exited";
		reapint();
	}
	
	public void mouseMoved(MouseEvent me1)
	{
		str1="Mouse Moved";
		reapint();
	}
	
	public void mouseDragged(MouseEvent me1)
	{
		str1="Mouse Dragged";
		reapint();
	}
}