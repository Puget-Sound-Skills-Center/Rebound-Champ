if(TransitionType == "SlideIn" && room == World_Seg1) {
	y = lerp(y, 500, 0.05);
	if (y > 450 && global.wasInBattle == true) {
		room_goto(BattleRoom);	
	} else if (y > 450) {
		room_goto(World_Seg1);
	}
} else if (TransitionType == "SlideIn" && room != World_Seg1) {
	y = lerp(y, 0, 0.05);
	if (y > -10 && global.wasInBattle == true) {
		room_goto(BattleRoom);	
	} else if (y > -10) {
		room_goto(World_Seg1);
	}	
}

if(TransitionType == "SlideOut") {
	y = lerp(y, -1100, 0.02);
}
