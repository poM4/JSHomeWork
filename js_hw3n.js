//3. Write a script to calculate how much Friday 13th was in 21th century (since 01/01/2000 - till now).

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



