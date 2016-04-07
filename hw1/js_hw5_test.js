//5. Write a script which will split number into random size parts, but sum of these parts should be initial number. Function input should be number to split and number of parts to split. Example: Split 10 into 5 parts, sum of 5 numbers after function execution is 10.
//a. Generated numbers should be integer.
function splitNumber (number, parts) {
	random = Math.floor(Math.random() * number) + 1
	partsArray = new Array();
	part1 = number - random;
	partsArray.push(part1);
	for (i = 1; i <= number; i = ) {
		
		
		
	}
	WScript.Echo(partsArray);
//}


splitNumber (2, 3);



//b. Generated numbers should be float with not more than 2 symbols after point.
/*function splitNumber (number, parts) {
	
	
};


splitNumber (10; 3);
*/

