//lab prog 3, area of geometrical figures, illustrating method overloading
class GeoFigs
{
	private double area;
	public void calcArea(double side) //square
	{
		area=side*side;
	}
	public void calcArea(float radius) //circle
	{
		area=3.14*radius*radius;
	}
	public void calcArea(double length,double breadth) //rectangle
	{
		area=length*breadth;
	}
	public double displayArea() //publishing the result
	{
		return(area);
	}
}
public class GeometricalFigures
{
	public static void main(String args[])
	{
		//circle
		GeoFigs circle=new GeoFigs();
		circle.calcArea(4.1f);
		System.out.println("Area of Circle:"+circle.displayArea());
		//circle
		//square
		GeoFigs square=new GeoFigs();
		square.calcArea(5.6);
		System.out.println("Area of Square:"+square.displayArea());
		//square
		//rectangle
		GeoFigs rectangle=new GeoFigs();
		rectangle.calcArea(6.1,2.3);
		System.out.println("Area of Rectangle:"+rectangle.displayArea());
		//rectangle
	}
}