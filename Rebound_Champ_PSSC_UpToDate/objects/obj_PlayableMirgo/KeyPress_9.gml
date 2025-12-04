if (IsInInventory = false && IsInDialogue = false) {
	IsInInventory = true;
	OpenInventory();
} else {
	IsInInventory = false;
	CloseInventory();
	with obj_ItemOptions {
		 instance_destroy();	
	}
}