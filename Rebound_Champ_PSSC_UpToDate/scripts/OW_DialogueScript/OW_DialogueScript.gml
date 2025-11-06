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
		
	// Create Nameplate if applicable
	if (Name != "") {
		var NameText = instance_create_layer(x,y,"UI_Text",NamePlateText);
		// Properties
		// ---------
		NameText.NameDisplay = Name;
	}
	
	// Create an absolutely necessary Dialogue Box
		var DialogueBox = instance_create_layer(x,y,"UI_Dialogue",obj_DialogueBox);
		var DialogueDisplay = instance_create_layer(x,y,"UI_Text",DialogueText);
		// Properties
		DialogueBox.Type = "DialogueBox";
		// ---------
		DialogueDisplay.StoredDialogue = Dialogue;
	
	// Left Dialogue Icon
	var LeftIcon = instance_create_layer(x,y,"UI_OC_Icons",obj_Icon);
		// Properties
		LeftIcon.IconSprite = Left;
		LeftIcon.IconIndex = Index1;
}

function SystemDialogue(Dialogue) {
	// Clear Everything
	ClearDialogueBoxes();		
	
	// Create an absolutely necessary Dialogue Box
		var DialogueBox = instance_create_layer(x,y,"UI_Dialogue",obj_DialogueBox);
		var DialogueDisplay = instance_create_layer(x,y,"UI_Text",DialogueText);
		// Properties
		DialogueBox.Type = "DialogueBox";
		// ---------
		DialogueDisplay.StoredDialogue = Dialogue;
}