function daysCounter(startDate, endDate, ) {
	this.sDate = startDate;
	this.eDate = endDate;
	
	this.counter = function
	
	return
	
}

var fridayThirteensCounter = new daysCounter ()




// setting date in "dd.mm.yyyy" format
function date(day, month, year) {
	this.dd = day;
	this.mm = month;
	this.yyyy = year;
	this.fullDate = dd + '.' + mm + '.' + yyyy;
}
// finding todays date
function todaysDate() {
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth() + 1; 
	var yyyy = today.getFullYear();

	if(dd < 10) {
		dd='0' + dd
	} 
	if(mm < 10) {
		mm='0' + mm
	} 

today = dd + '.' + mm + '.' + yyyy;
return today;
}

// sasha comments
function test(){
var today = new Date();
WScript.Echo(today.getMinutes() + ":" + today.getMilliseconds());
var otherDate = new Date(2016, 1, 24);
WScript.Echo(otherDate.getMinutes() + ":" + otherDate.getMilliseconds());
if (today > otherDate) {
WScript.Echo("today >: " + formatdate(otherDate, "."));
}
else
{
WScript.Echo("today <: " + formatdate(otherDate, ".") + " today: " +formatdate(today, "."));
}
}
