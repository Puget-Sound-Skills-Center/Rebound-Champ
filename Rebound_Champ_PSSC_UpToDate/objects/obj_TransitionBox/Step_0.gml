if(TransitionType == "SlideIn") {
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
