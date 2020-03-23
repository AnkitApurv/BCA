function checkFields()
{
    var emptyboxes="Following text-boxes are empty:\n";
    var textboxcount=document.textboxform.elements.length;
    var count=0;
    for(var i=0; i<textboxcount; i++)
    {
        if(document.textboxform.elements[i].value.length==0)
        {
            emptyboxes+=document.textboxform.elements[i].name+"\n";
            count++;
        }
    }
    if(count==0)
        window.alert("All text-boxes are filled.");
    else if(count==textboxcount-1)
        window.alert("No text-boxes are filled.");
    else
        window.alert(emptyboxes);
}
