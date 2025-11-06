if (IsInInventory = false && IsInDialogue = false) {
	IsInInventory = true;
	OpenInventory();
} else {
	IsInInventory = false;
	CloseInventory();
}