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

function NPCDialogue(NPC, phase) {
// Ashura NPC Dialogue
	if(NPC == "Ashura" && phase == 1) {
		if(global.DialogueIndex = 1) {
			CreateDialogue("???", "woa, hey-", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 2) {
			CreateDialogue("???", "you look just like me, just without the horns", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 3) {
			CreateDialogue("???", "thats pretty cool, I guess", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 4) {
			ClearDialogueBoxes()
			EndDialogue();
			obj_NPC_Ashura.NPC_Phase++;
		}
	}
	
	if(NPC == "Ashura" && phase == 2) {
		if(global.DialogueIndex = 1) {
			CreateDialogue("???", "me? ..oh! you must be new here", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 2) {
			CreateDialogue("Ashura", "I'm Ashura, nice to meet you!", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 3) {
			CreateDialogue("Ashura", "that being said, I'm not familiar with this\nplace..", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 4) {
			CreateDialogue("Ashura", "though.. I could give you this manual I\nhave in my pocket", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 5) {
			CreateDialogue("Ashura", "I don't see much use on it, but I'm sure it'll\nbe of some use to you", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 6) {
			CreateDialogue("Ashura", "... and one more thing, press [Tab] to access\nyour inventory", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 7) {
			SystemDialogue("* [Game Manual] has been added to your inventory.");
		}
		if(global.DialogueIndex = 8) {
			ClearDialogueBoxes();
			EndDialogue();
			obj_NPC_Ashura.NPC_Phase++;
		}
	}
	
	if(NPC == "Ashura" && phase == 3) {
		if(global.DialogueIndex = 1) {
			CreateDialogue("Ashura", "I hope thats pretty useful to you, hehe-", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 2) {
			ClearDialogueBoxes()
			EndDialogue();
		}
	}
// - NPC Dialogue
}