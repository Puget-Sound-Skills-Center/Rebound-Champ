if(global.wasInBattle = true) {
	global.wasInBattle = false;
	obj_PlayableMirgo.PostBattlePrompt = true;
	global.NPC_Noises = ["ItemPickUp_Notif"];
	alarm_set(0,15);
}
