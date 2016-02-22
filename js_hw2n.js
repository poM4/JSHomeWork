// 2. Write a script for dices game. Two players will throw dices 3 times, player who 
// has bigger sum of will win or it may be draw if both players has equal sum. Each 
// dice roll may be from 1 to 6.


// how many players will play?
// how many rounds will the game long?
// put players info into array

function player(strName) {
	this.name = strName;
	this.result = 0;
	this.strSum = "";
	this.random = function() {
		this.number = Math.floor(Math.random() * (6 - 1) + 6);
		return this.number;
	}
	this.turn = function() {
		this.result += this.random;
		this.strSum = this.strSum + " + " + this.random;
	}
}

function game(playersCount, turnsCount) {
	playersArray = new Array();
	for (i = 0; i < playersCount; i++) {
		currPlayer = new player ("Player " + (i+1));
		playersArray.push(currPlayer);
	}
	for (i = 0; i < playersArray.length; i++) {
		WScript.Echo(playersArray(i).name + ". Result: " + playersArray(i).result);
	}
	for (i = 0;i < PlArray.length; i++) {
			for (j = 0; j < turnsCount; j++) WScript.Echo(playersArray(i).turn());
	}
	playersArray.sort();			
}
game(2, 3);

