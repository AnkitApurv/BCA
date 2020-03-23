function calculate()
{
    var name=document.student.name.value;
    var regno=document.student.regno.value;
    var cgm=parseInt(document.student.cg.value);
    var adam=parseInt(document.student.ada.value);
    var spm=parseInt(document.student.sp.value);
    var wpm=parseInt(document.student.wp.value);
    var total=cgm+spm+wpm+adam;
    var avg=total/4;
    var grade, result;
    if(cgm<40||wpm<40||spm<40||adam<40)
    {
        grade="D";
        result="Fail";
    }
    else if(avg>=60)
    {
        grade="A";
        result="First Class";
    }
    else if(avg>=50)
    {
        grade="B";
        result="Second Class";
    }
    else if(avg>=40)
    {
        grade="C";
        result="Pass";
    }
    document.writeln("<h4>Result:</h4>");
    document.writeln("<pre><b>Name            : "+name+"</b></pre>");
    document.writeln("<pre><b>Register Number : "+regno+"</b></pre>");
    document.writeln("<pre><b>Total Marks     : "+total+"</b></pre>");
    document.writeln("<pre><b>Average         : "+avg+"</b></pre>");
    document.writeln("<pre><b>Grade           : "+grade+"</b></pre>");
    document.writeln("<pre><b>Result          : "+result+"</b></pre>");
}
