package Student;
import java.io.*;
import Student.*;
public class ReadStudent
{
	public static void main(String args[]) throws IOException
	{
		Student.ValuesStudent vst=new Student.ValuesStudent();
		FileInputStream fis=new FileInputStream("StudentDetails.dat");
		ObjectInputStream objis=new ObjectInputStream(fis);
		try
		{
			vst=(Student.ValuesStudent)objis.readObject();
		}
		catch(Exception e)
		{}
		System.out.println("Roll No.:"+vst.getRollNumber());
		System.out.println("Name:"+vst.getStudentName());
		System.out.println("Percentage:"+vst.getStPercentage());
	}
}