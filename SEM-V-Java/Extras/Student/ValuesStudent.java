package Student;
import java.io.*;
public class ValuesStudent implements Serializable
{
	private int rollno;
	private String name;
	private double percentage;
	private transient String grade;
	public void setValues(int rollnumber, String stname, double stpercentage, String stgrade)
	{
		rollno=rollnumber;
		name=stname;
		percentage=stpercentage;
		grade=stgrade;
	}
	public int getRollNumber()
	{
		return(rollno);
	}
	public String getStudentName()
	{
		return(name);
	}
	public double getStPercentage()
	{
		return(percentage);
	}
	public String getStGrade()
	{
		return(grade);
	}
}