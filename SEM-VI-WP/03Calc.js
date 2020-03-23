function calculate() {
    var validinput=/[0-9,.,-]/;
    var op1=document.mathForm.op1.value;
    var op2=document.mathForm.op2.value;
    var operator=document.mathForm.operator.value;
    var result=0;
    if(op1.length==0)
        window.alert("Enter first element.");
    else if(op2.length==0)
        window.alert("Enter second element.");
    else if(op1.search(validinput)==-1)
        window.alert("Given first element is not numeric.");
    else if(op2.search(validinput)==-1)
        window.alert("Given second element is not numeric.");
    else {
        var n1=parseFloat(op1);
        var n2=parseFloat(op2);
        switch(operator) {
            case "+":
                result=n1+n2;
                break;
            case "-":
                result=n1-n2;
                break;
            case "*":
                result=n1*n2;
                break;
            case "/":
                result=n1/n2;
                break;
            case "%":
                result=n1%n2;
                break;
            case "exp":
                result=Math.pow(n1,n2);
                break;
        }
        document.mathForm.result.value=result;
    }
}
