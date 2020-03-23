//illustrate student report in applet window

import java.awt.*;
import java.awt.event.*;
import java.applet.*;

/*<applet code="13StudentApplet" width=300 height=300> </applet>*/

public class 13StudentApplet extends Applet implements ActionListener
{
	//initialize recquired textboxes, labels etc.
	Label lblTitle, lblRegNo, lblCourse, lblSemester, lblSubject1, lblSubject2;
	TextField txtRegNo, txtCourse, txtSemester, txtSubject1, txtSubject2;
	Button btnReport;
	String strRegNo, strCourse, strSemester, strSubject1, strSubject2, strAverage;
	
	public void init()
	{
		lblTitle=new Label("Student Report: ", Label.RIGHT);
		lblRegNo=new Label("Unique ID: ", Label.RIGHT);
		lblCourse=new Label("Course: ", Label.RIGHT);
		lblSemester=new Label("Semester: ", Label.RIGHT);
		lblSubject1=new Label("Subject 1: ", Label.RIGHT);
		lblSubject2=new Label("Subject 2: ", Label.RIGHT);
		txtRegNo=new TextField(10);
		txtCourse=new TextField(6);
		txtSemester=new TextField(1);
		txtSubject1=new TextField(25);
		txtSubject2=new TextField(25);
		btnReport=new Button("View Report");
		add(lblTitle);
		add(lblRegNo);
		add(txtRegNo);
		add(lblCourse);
		add(txtCourse);
		add(lblSemester);
		add(txtSemester);
		add(lblSubject1);
		add(txtSubject1);
		add(lblSubject2);
		add(txtSubject2);
		add(btnReport);
		txtRegNo.addActionListener(this);
		txtCourse.addActionListener(this);
		txtSemester.addActionListener(this);
		txtSubject1.addActionListener(this);
		txtSubject2.addActionListener(this);
	}
	
	public void actionPerformed(ActionEvent ae)
	{
		if(ae.getSource()==btnReport)
		{
			strRegNo=txtRegNo.getText().trim();
			strCourse=txtCourse.getText().trim();
			strSemester=txtSemester.getText().trim();
			strSubject1=txtSubject1.getText().trim();
			strSubject2=txtSubject2.getText().trim();
			strAverage="Average Marks: "+((Integer.parseInt(strSubject1))+(Integer.parseInt(strSubject2))/2);
			strRegNo="Unique ID: "+strRegNo;
			strCourse="Course: "+strCourse;
			strSemester="Semester: "+strSemester;
			strSubject1="Subject 1: "+strSubject1;
			strSubject2="Subject 2: "+strSubject2;
			repaint();
		}
	}
	
	public void paint(Graphics g1)
	{
		g1.drawString(strRegNo,30,220);
		g1.drawString(strCourse,30,250);
		g1.drawString(strSemester,30,280);
		g1.drawString(strSubject1,30,310);
		g1.drawString(strSubject2,30,340);
		g1.drawString(strAverage,30,370);
	}
}