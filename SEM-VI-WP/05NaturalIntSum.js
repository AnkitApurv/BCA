function ncalcsum()
{
    var promptnum=window.prompt("Enter the number",0);
    var number=parseInt(promptnum);
    //actual calculation
    var sumnatural=(number*(number+1))/2;
    window.alert("Sum of first "+number+" natural numbers: "+sumnatural);
}
