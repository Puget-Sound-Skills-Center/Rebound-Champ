/// @description Run the queue

show_debug_message("PBF Alarm 1 Fired!");
ClearDialogueBoxes();
if(global.PromptQueue != []) {
	if(global.PromptQueue[0] = "Rewards") {
		SystemDialogue(string("You gained " + string(EXPgained) + " EXP and " + string(UtokensGained) + " UTokens!"));
	}
	if(global.PromptQueue[0] = "LevelUp") {
		SystemDialogue("You Leveled Up!", "LevelUpfx");
	}
	if(global.PromptQueue[0] = "ItemDrop" &&  global.PlayerInventory[9] == "") {
		SystemDialogue(string("You obtained " + string(ItemGained) + "!"));
		AddToInventory(ItemGained);
	} else if(global.PromptQueue[0] = "ItemDrop" &&  global.PlayerInventory[9] != "") {
		SystemDialogue(string("You obtained " + string(ItemGained) + "... But you discarded it because your\ninventory is full."));
	}
}