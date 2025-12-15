global.Isdead = false;
global.DeathFlavorText = "";

function GameOver(Message){
	global.Isdead = true;
	room_goto(GameOverRoom)
	with GameOverMessage {
		DeathFlavorText = global.DeathFlavorText;	
	}
}