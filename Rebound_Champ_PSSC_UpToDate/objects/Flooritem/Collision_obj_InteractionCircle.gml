obj_PlayableMirgo.IsInDialogue = true;
obj_PlayableMirgo.PostBattlePrompt = true;
global.NPC_Noises = ["ItemPickUp_Notif"];
if (ItemName == "Durr") {
	SystemDialogue("You picked up... something","ItemPickUp_Notif");
	AddToInventory("Durr");
}
if (ItemName == "Potion") {
	SystemDialogue("hell yea bro","ItemPickUp_Notif");
	AddToInventory("Potion");
}

instance_destroy();
