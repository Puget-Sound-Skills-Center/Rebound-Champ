global.DeathFlavorText = "";

function GameOver(Message){
	room_goto(GameOverRoom)
	with GameOverMessage {
		DeathFlavorText = global.DeathFlavorText;	
	}
}