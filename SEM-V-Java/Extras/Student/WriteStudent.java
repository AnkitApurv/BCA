package Student;
import java.io.*;
import Student.*;
public class WriteStudent
{
	public static void main(String args[]) throws IOException
	{
		ValuesStudent vst=new ValuesStudent();
		vst.setValues(101,"Suresh",67.5,"B");
		ObjectOutputStream objos=new ObjectOutputStream(new FileOtputStream("StudentDetails.dat"));
		objos.writeObject(vst);
		System.out.println("Object Persistent");
	}
}