function calcfactn()
{
    var number=parseInt(window.prompt("Enter the number:",0));
    if(number<0)
        window.alert("Invalid number!");
    else
        window.alert("Factorial of "+number+" is "+fact(number));
}
function fact(number)
{
    if(number==0)
        return(1);
    else
        return(number*fact(number-1));
}
