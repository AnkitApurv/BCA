//Sample program of Matrix to illustrate array of arrays
public class Matrix1
{
	public static void main(String[] args)
	{
		int[][] m1={{2,5,7},{4,3,2},{3,5,7}};
		System.out.println("Initialized elements of a matrix:");
		for(int i=0;i<m1.length;i++)
		{
			for(int j=0;j<m1[i].length;j++)
			{
				System.out.print(m1[i][j]+"\t");
			}
			System.out.println();
		}
	}
}