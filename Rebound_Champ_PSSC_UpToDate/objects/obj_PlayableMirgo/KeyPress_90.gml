/// @description Summon InteractionCircle
	
// Position based on direction
if (IsInDialogue = false && IsInInventory = false && room != BattleRoom && PostBattlePrompt = false) {
	if(sprite_index = MirgoBack) {
		instance_create_layer(x,y-25,"UI_Base",obj_InteractionCircle);
	}
	if(sprite_index = MirgoFront) {
		instance_create_layer(x,y+10,"UI_Base",obj_InteractionCircle);
	}
	if(sprite_index = MirgoLeft) {
		instance_create_layer(x-20,y,"UI_Base",obj_InteractionCircle);
	}
	if(sprite_index = MirgoRight) {
		instance_create_layer(x+20,y,"UI_Base",obj_InteractionCircle);
	}
}

// Advance through dialogue

if (IsInDialogue = true && CanAdvance = true) {
	NPCDialogue(CurrentlyInteracting, CurrentNPC_Phase);	
} else if (instance_exists(obj_DialogueBox) && PostBattlePrompt = true && CanAdvance = true) {
	if(array_length(global.PromptQueue) > 1) {
		array_delete(global.PromptQueue,0,1);
		with PostBattleFeedback {
			alarm_set(1,3);	
		}
	} else {
		PostBattlePrompt = false;
		EndDialogue();
		ClearDialogueBoxes();
		ThawPlayer();
	}
}
