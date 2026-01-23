global.DialogueIndex = 1;

function FreezePlayer() {
	with(obj_PlayableMirgo) {
		move_speed = 0;
		sprint_speed = 0;
	}
}

function ThawPlayer() {
	with(obj_PlayableMirgo) {
		move_speed = 1.5;
		sprint_speed = 2.25;
	}
}


function StartDialogue() {
	
	global.DialogueIndex = 1;
		
	FreezePlayer();
	
	with(obj_PlayableMirgo) {
		IsInDialogue = true;
	}
	with (obj_InteractionCircle) {
	instance_destroy();
	}
}

function EndDialogue() {
	with(obj_PlayableMirgo) {
		CurrentlyInteracting = "";
		IsInDialogue = false;
	}
	ThawPlayer();
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
			CreateDialogue("???", "...", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 5) {
			CreateDialogue("???", "me? ..oh! you must be new here", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 6) {
			CreateDialogue("Ashura", "I'm Ashura, nice to meet you!", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 7) {
			CreateDialogue("Ashura", "..Mirgo? sick name dudee", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 8) {
			CreateDialogue("Ashura", "you seem lost, ..I could give you this\nbook I've been working on", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 9) {
			CreateDialogue("Ashura", "It's not much, but I'd figure you need\nit more than I do", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 10) {
			CreateDialogue("Ashura", "one more thing- press [Tab] to access\nyour inventory", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 11) {
			SystemDialogue("* [Ashura's Handbook] has been added to your inventory.");
			AddToInventory("Handbook");
		}
		if(global.DialogueIndex = 12) {
			ClearDialogueBoxes();
			EndDialogue();
			obj_NPC_Ashura.NPC_Phase++;
		}
	}
	
	if(NPC == "Ashura" && phase == 2) {
		if(global.DialogueIndex = 1) {
			CreateDialogue("Ashura", "I hope thats pretty useful to you, hehe-", "spr_AshuraPlaceholder", 0);
		}
		if(global.DialogueIndex = 2) {
			ClearDialogueBoxes();
			EndDialogue();
		}
	}
	
// - EVIL ENEMY Dialogue 
	if(NPC == "Dummy" && phase == 1) {
			if(global.DialogueIndex = 1) {
				CreateDialogue("", "It's a dummy, sitting there conveniently\nin your way", "spr_blank", 0);
			}
			if(global.DialogueIndex = 2 && global.UsedManual == true) {
				CreateDialogue("", "You feel ready upon reading that manual", "spr_blank", 0);
			} else if(global.DialogueIndex = 2 && global.UsedManual == false) {
				CreateDialogue("", "You prepare yourself for whats coming", "spr_blank", 0);
			}
			if(global.DialogueIndex = 3) {
				ClearDialogueBoxes();
				EndDialogue();
				BattlePrep();
			}
	}
// - NPC Dialogue
}