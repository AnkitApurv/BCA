//            0       1       2       3           4       5       6       7           8       9       10      11          12          13              14          15          16          16
var days=["First","Second","Third","Fourth","Fifth","Sixth","Seventh","Eighth","Ninth","Tenth","Eleventh","Twelveth","Thirtheenth","Fourteenth","Fifteenth","Sixteenth","Seventeenth","Eighteenth","Ninteenth","Twentyeth","Twentyfirst","Twentysecond","Twentythird","Twentyfourth","Twentyfifth","Twentysixth","Twentyseventh","Twentyeighth","Twentyninth","Thirtyeth","Thirtyfirst"];
var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
var dt=new Date();
var date=days[dt.getDate()-1];
var month=months[dt.getMonth()];
var year=dt.getFullYear();
window.alert("Today's date is "+date+" "+month+", "+year);
