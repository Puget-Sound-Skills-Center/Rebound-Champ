global.DialogueIndex = 1;

function StartDialogue() {
	
		global.DialogueIndex = 1;
		
	with(obj_PlayableMirgo) {
		IsInDialogue = true;
		move_speed = 0;
		sprint_speed = 0;
	}
	with (obj_InteractionCircle) {
	instance_destroy();
	}
}

function EndDialogue() {
	with(obj_PlayableMirgo) {
		CurrentlyInteracting = "";
		IsInDialogue = false;
		move_speed = 1.5;
		sprint_speed = 2.25;
	}
}

function NPCDialogue(NPC) {
	// Ashura NPC Dialogue
	if(NPC == "Ashura") {
		if(global.DialogueIndex = 1) {
			CreateDialogue("Ashura", "oh heyy!!", "spr_AshuraPlaceholder", 0)
		}
		if(global.DialogueIndex = 2) {
			CreateDialogue("Ashura", "awesome weather we're having rite..?", "spr_AshuraPlaceholder", 0)
		}
		if(global.DialogueIndex = 3) {
			CreateDialogue("Ashura", "..where are we?-", "spr_AshuraPlaceholder", 0)
		}
		if(global.DialogueIndex = 4) {
			ClearDialogueBoxes()
			EndDialogue();
		}
	}
}