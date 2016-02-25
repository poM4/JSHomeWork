//3. Write a script to calculate how much Friday 13th was in 21th century (since 01/01/2000 - till now).

/* Ход моих мыслей:
1. сделать объект, который будет приводить дату в формат (в коде "setting date in "dd.mm.yyyy" format")
2. используя объект с датой в правильном формате, я попытался найти сегодняшнюю дату. и тут у меня не получаеться сделать связь между объектом date и новым объектом todaysDate
3. "how many friday thirteens" это тот счетчик, который и будет считать пятницы 13ые. пока только в простом виде, т.к. хочеться еще подставлять даты из объектов выше.

На выходе, я хотел чтобы получилось:
1. функцию входные параметры поторой:
а. starDate - дата откуда мы хотим считать пятницы (в данном случае "01.01.2000")
б. endDate - сегодняшнюю дату
2. на выходе получить сумму пятниц 13х
*/


var startDate = new Date(2012, 1, 23);
var endDate = new Date();
var tempDate = endDate;
var sum = 0;
//WScript.Echo(startDate);
//WScript.Echo(endDate);
//WScript.Echo(tempDate);

//for (i = tempDate.getFullYear(); i <= endDate.getFullYear(); i = tempDate.setFullYear(tempDate.getFullYear()+1)) {
//	for (j = tempDate.getMonth; j <= 11; j = endDate.setMonth(tempDate.getMonth) + 1) {
//		if (tempDate.getDay() = 4 && tempDate.getDate() = 13) {
//			return sum++;
//		}
//	}
//}			
//WScript.Echo(sum);
