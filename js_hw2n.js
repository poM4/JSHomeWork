function player(strName) {
	this.name = strName;
	this.startResult = 0;
	this.strSum = "";
	

	this.turn = function() {
		this.number = Math.floor(Math.random() * 6 ) + 1;
		this.result = this.startResult + this.number
		return this.result;
		this.strSum = this.strSum + " + " + this.random;
	}
}

function game (playersCount, roundsCount) {
	playersArray = new Array();
	for (i = 0; i < playersCount; i++) {
		newPlayer = new player ("Player " + (i + 1));
		playersArray.push(newPlayer);
	}
	for (i = 0; i < playersArray.length; i++) {
		for (j = 0; j < roundsCount; j++) {
			playersArray[i].turn();
			WScript.Echo(playersArray[i].name + (", Round: " + (j + 1)) + ", Result: " + playersArray[i].result);
		}
	}
//	function compare (){
//		if sum1 > sum2 {
//			WScript.Echo(sum1 + ">" + sum2 + ". Player"  )
//		}
//	}
	
	WScript.Echo("Who wins?");
}
game (2,3);
