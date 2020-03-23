//calculate employee bonus and illustrate method overloading

import System.out.println;

abstract class Departments
{
	protected double salary;
	protected double bonus;
	protected void calcBonus(double salary);
	protected void displayBonus();
}

class Admission extends Departments
{
	public void calcBonus(double salary)
	{
		this.salary=salary;
		bonus=this.salary*0.25;
	}
	public void displayBonus()
	{
		println("Admin dept. gets 25%");
		println("Salary:"+salary);
		println("Bonus:"+bonus);
	}
}

class Placements extends Departments
{
	public void calcBonus(double salary)
	{
		this.salary=salary;
		bonus=this.salary*0.3;
	}
	public void displayBonus()
	{
		println("Placements dept. gets 30%");
		println("Salary:"+salary);
		println("Bonus:"+bonus);
	}
}

public class EmployeeBonus
{
	public static void main(String args[])
	{
		double adm_sal=Double.parseDouble(args[0]);
		double pla_sal=Double.parseDouble(args[1]);
		Admission ad1=new Admission();
		ad1.calcBonus(pla_sal);
		ad1.displayBonus();
		Placements pl1=new Placements();
		pl1.calcBonus(pla_sal);
		pl1.displayBonus();
	}
}