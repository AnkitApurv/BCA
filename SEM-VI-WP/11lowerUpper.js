function conversion()
{
    var origtext=document.caseconvert.content.value;
    var convtext;
    var lc=/[a-z]/;
    var uc=/[A-Z]/;
    if((origtext.search(uc)==-1) && (origtext.search(lc)!==-1))
    {
        convtext=origtext.toUpperCase();
        alert("Converted text : "+convtext);
    }
    else if((origtext.search(uc)!==-1) && (origtext.search(lc)==-1))
    {
        alert("Text is already in UpperCase");
    }
    else
    {
        convtext=origtext.toUpperCase();
        alert("Mixed text. Converted text : "+convtext);
    }
}
