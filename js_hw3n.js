//3. Write a script to calculate how much Friday 13th was in 21th century (since 01/01/2000 - till now).
<<<<<<< HEAD

function countFridayThirteens (startYear, startMonth, startDay) {
	var startDate = new Date(startYear, startMonth-1, startDay);
	var endDate = new Date();
	var tempDate = startDate;
	var sum = 0;

	for (i = tempDate.getFullYear(); i <= endDate.getFullYear(); i = tempDate.setFullYear(tempDate.getFullYear()+1)) {
		for (j = tempDate.getMonth(); j <= 11; j = tempDate.setMonth(tempDate.setMonth()+1)) {
			if (tempDate.getDay() === 4 && tempDate.getDate() === 13) {
				sum++;
			}
		}
	}
WScript.Echo("There were " + sum + " Friday 13ths from " + startDate.getFullYear() + " year till now");
}
countFridayThirteens (2016, 1, 1);



=======

var startDate = new Date(2012, 1, 23);
var endDate = new Date();
var tempDate = new Date();
var sum = 0;
//WScript.Echo(startDate);
//WScript.Echo(endDate);
//WScript.Echo(tempDate);

for (tempDate = .getFullYear; tempDate.getFullYear() <= endDate.getFullYear(); tempDate = (tempDate.getFullYear()+1)) {
//	for (j = tempDate.getMonth; j <= 11; j = endDate.setMonth(tempDate.getMonth) + 1) {
//		if (tempDate.getDay() = 4 && tempDate.getDate() = 13) {
//			return sum++;
//		}

//	}
}			
WScript.Echo(tempDate);
>>>>>>> b8a9ed31d2d5b9dfc443b5c3432e46d4d0b1e8ec
