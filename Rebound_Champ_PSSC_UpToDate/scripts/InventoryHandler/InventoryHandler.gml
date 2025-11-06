function OpenInventory() {
	FreezePlayer();
	instance_create_layer(x,y,"UI_Base",obj_statbox);
}

function CloseInventory() {
	with obj_statbox {
		instance_destroy();
	}
	ThawPlayer();
}