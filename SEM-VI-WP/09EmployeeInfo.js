function calculate()
{
    var name=document.employee.name.value;
    var empid=document.employee.empno.value;
    var basicpay=parseInt(document.employee.basicpay.value);
    var hra=0.4*basicpay;
    var da=0.6*basicpay;
    var gross=basicpay+da+hra;
    var tax=0.2*gross;
    var pf=0.13*gross;
    var deductions=pf+tax;
    var netsalary=gross-deductions;
    document.writeln("<h2>09 Employee</h2><hr/><br/>");
    document.writeln("<pre>Name              : "+name+"</pre>");
    document.writeln("<pre>Employee ID       : "+empid+"</pre>");
    document.writeln("<pre>Basic Salary:Rs.  : "+basicpay+"</pre>");
    document.writeln("<pre>HRA(40% of Basic) : "+hra+"</pre>");
    document.writeln("<pre>DA(60% of Basic)  : "+da+"</pre>");
    document.writeln("<pre>Gross Salary      : "+gross+"</pre>");
    document.writeln("<pre>PF(13% of Gross)  : "+pf+"</pre>");
    document.writeln("<pre>Tax(20% of Gross) : "+tax+"</pre>");
    document.writeln("<pre>Deductions        : "+deductions+"</pre>");
    document.writeln("<pre>Net Salary        : "+netsalary+"</pre>");
}
