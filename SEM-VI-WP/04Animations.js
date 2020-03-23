function moveRed()
{
    document.getElementById("layer1").style.left="70px";
}
function moveGreen()
{
    document.getElementById("layer2").style.left="95px";
}
function moveBlue()
{
    document.getElementById("layer3").style.left="120px";
}
function showGreen(status)
{
    if(status)
        document.getElementById("layer2").style.visibility="visible";
    else
        document.getElementById("layer2").style.visibility="hidden";
}
