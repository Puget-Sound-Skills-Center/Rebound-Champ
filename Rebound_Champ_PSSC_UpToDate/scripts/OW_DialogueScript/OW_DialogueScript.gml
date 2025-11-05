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

function CreateDialogue(Name, Dialogue, Left, Index1) {
	// Clear Everything
	ClearDialogueBoxes();
	
	// Get camera position
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);

	// Convert instance position to screen space
	var screen_x = x - cam_x;
	var screen_y = y - cam_y;
		
	// Create Nameplate if applicable
	if (Name != "") {
		var NameText = instance_create_layer(x+555,y-184,"UI_Text",NamePlateText);
		// Properties
		// ---------
		NameText.NameDisplay = Name;
	}
	
	// Create an absolutely necessary Dialogue Box
		var DialogueBox = instance_create_layer(x,y,"UI_Dialogue",obj_DialogueBox);
		var DialogueDisplay = instance_create_layer(x+423,y-180,"UI_Text",DialogueText);
		// Properties
		DialogueBox.Type = "DialogueBox";
		// ---------
		DialogueDisplay.StoredDialogue = Dialogue;
	
	// Left Dialogue Icon
	var LeftIcon = instance_create_layer(x-537,y+383,"UI_OC_Icons",obj_Icon);
		// Properties
		LeftIcon.IconSprite = Left;
		LeftIcon.IconIndex = Index1;
}

function SystemDialogue(Dialogue) {
	// Clear Everything
	ClearDialogueBoxes();		
	
	// Create an absolutely necessary Dialogue Box
		var DialogueBox = instance_create_layer(x,y,"UI_Dialogue",obj_DialogueBox);
		var DialogueDisplay = instance_create_layer(x+173,y-230,"UI_Text",DialogueText);
		// Properties
		DialogueBox.Type = "DialogueBox";
		// ---------
		DialogueDisplay.StoredDialogue = Dialogue;
}