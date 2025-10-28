function ClearDialogueBoxes() {
	with(obj_DialogueBox) {
		instance_destroy();
	}
	with(obj_Icon) {
		instance_destroy();
	}
	with(DialogueText) {
		instance_destroy();
	}
	with(NamePlateText) {
		instance_destroy();
	}
}

function CreateDialogue(Name, Dialogue, Left, Index1, Right, Index2) {
	// Clear Everything
	ClearDialogueBoxes();
	
	// Camera CenterPosition
	var inst_x = (camera_get_view_x(0) + camera_get_view_width(0) / 2);
	var inst_y = (camera_get_view_y(0) + camera_get_view_height(0) / 2);
	
	// Create Nameplate if applicable
	if (Name != "") {
		var NamePlate = instance_create_layer(x,y,"UI_Dialogue",obj_DialogueBox);
		var NameText = instance_create_layer(x+145,y-225,"UI_Text",NamePlateText);
		// Properties
		NamePlate.Type = "NamePlate";
		// ---------
		NameText.NameDisplay = Name;
	}
}