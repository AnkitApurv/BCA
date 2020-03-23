var totalprice=0;

function display()
{
    totalprice=0;
    var selectedItems="Items\t\t\tPrice\n----------------------------------------\n";
    var index1=document.resturant.major.length;
    var index2=document.resturant.starters.length;
    var index3=document.resturant.softdrinks.length;
    for(var i=0; i<index1; i++)
    {
        if(document.resturant.major.options[i].selected)
        {
            var item=document.resturant.major.options[i].text;
            var value=document.resturant.major.options[i].value;
            totalprice+=parseInt(value);
            selectedItems+=item+"\t\t"+value+"\n";
        }
    }
    for(var i=0; i<index2; i++)
    {
        if(document.resturant.starters.options[i].selected)
        {
            var item=document.resturant.starters.options[i].text;
            var value=document.resturant.starters.options[i].value;
            totalprice+=parseInt(value);
            selectedItems+=item+"\t\t"+value+"\n";
        }
    }
    for(var i=0; i<index3; i++)
    {
        if(document.resturant.softdrinks.options[i].selected)
        {
            var item=document.resturant.softdrinks.options[i].text;
            var value=document.resturant.softdrinks.options[i].value;
            totalprice+=parseInt(value);
            selectedItems+=item+"\t\t"+value+"\n";
        }
    }
    document.resturant.ordereditems.value=selectedItems;
}

function calculate()
{
    document.resturant.ordereditems.value+="\nTotal Price\t:\tRs."+totalprice;
}
