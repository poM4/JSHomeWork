// 1. Write a script to replace symbols in string. Given string “abracadabra”, 
// replace all symbols by rule (a to b, b to c, c to a). Result should be “bcrbabdbcra”.
	// use switch-case +
	// upper, lower case +
	// use dictionary (associative arrays) +
	// check input parameter
	// print input and result (Echo) +

function newString(str) {
	var newStr = "";
	var myDict = {
		"a" : "b",
		"b" : "c",
		"c" : "a"
	}
    for (var i = 0; i < str.length; i++) {
		var currChar = str.charAt(i);
		if (currChar in myDict) {
			newStr += myDict[currChar];	
		} else {
			newStr += currChar;
		}
	}
	newStr.toLowerCase; // think, this is not a correct place to call this method
	return newStr;
}
var str = "abracadabra";
str.toLowerCase();
WScript.Echo("The old string is: " + str);
WScript.Echo("The new string is: " + newString(str));