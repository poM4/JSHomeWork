// 2. Write a script for dices game. Two players will throw dices 3 times, player who 
// has bigger sum of will win or it may be draw if both players has equal sum. Each 
// dice roll may be from 1 to 6.


// how many players will play?
// how many rounds will the game long?
// put players info into array
//


function Player(strName){
		this.Name = strName;
		this.Result = 0;   //8
		this.strSum = ""; //" + 1 + 5 + 2"	
		
		this.Turn = function(){
			temp = Random(6)
			this.Result += temp; // from 1 to 6
			this.strSum = this.strSum + " + " + temp		
		}
	}
	
	function Dice(PlayerCount, TurnCount){
		PlArray = new Array();
		for (i=0;i<PlayerCount; i++){
			CurrPlayer = new Player("Player " + (i+1));
			PlArray.push(CurrPlayer);
		}
		for (i=0;i<PlArray.length; i++){
			WScript.Echo(PlArray(i).Name + "; /n" + PlArray(i).Result);
		}
		for (i=0;i<PlArray.length; i++){
			for (j=0; j < TurnCount; j++) WScript.Echo(PlArray(i).Turn());
		}
		for (i=0;i<PlArray.length; i++){
			WScript.Echo(PlArray(i).Name + "; /n" + PlArray(i).Result);
		}
		//sort
		
	}
	





players = 






// Chose how much players will play
playersCount();

// Chose how much rounds will be in game
roundsCount();


// Chose how many sides dice has
function diceSettings (side) {
	return var sideCount = Math.floor((Math.random() * side) + 1);
}

Math.floor(Math.random() * (6 - 1) + 6);