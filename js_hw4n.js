//4. Write a script to solve quadratic equation (wiki). Input parameters: a, b, c; output parameter should be string with result. Result should contain solution for cases when result is: real number, unreal number and when discriminant is equal to zero.

function quadEquation (a, b, c) {
	var dis = Math.pow(a, 2) + 4 * a * c;
	var x1, x2;
	var result;
	if (b == 0 && c == 0) {
		x = 0;
		result = ("x = 0")
	} else if (b == 0 && c != 0) {
		if ((-c/a)) > 0 {
			x1 = 0;
			result = ("x = " + x1);
		} else {
			result = "There are no real roots"
		}	
	} else if (b != 0 && c == 0) {
		x1 = 0;
		x2 = -(b/a);
		result = ("x1 = " + x1 + ", x2 = " + x2);
	} else {
		if (dis > 0) {
			var bq = Math.pow(b, 2);
			var root =  Math.sqrt(bq - 4 * a * c);
			x1 = (-b + root)/(2 * a);
			x2 = (-b - root)/(2 * a);
			result = "x1 = " + x1 + ", x2 = " + x2;
		};
		else if (dis == 0) {
			x1 = (-b)/(2 * a);
			result = ("x = " + x1);
		};
		else if (dis < 0){
			result = "There are no real roots";
		};
		else {
			result = "Something went wrong";
		};
	};
};	
quadEquation(2, 3, 4);
