if (global.Isdead == false) {
	if (IsInInventory = false && IsInDialogue = false && PostBattlePrompt = false) {
		IsInInventory = true;
		OpenInventory();
	} else if (IsInInventory = true){
		IsInInventory = false;
		CloseInventory();
		with obj_ItemOptions {
			instance_destroy();	
		}
	}
}