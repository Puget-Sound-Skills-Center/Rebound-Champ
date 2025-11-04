DiaLength = string_length(StoredDialogue);

if(DiaProgress <= DiaLength) {
	DialogueDisplay = string(string_copy(StoredDialogue,1,DiaProgress));
	DiaProgress++;
	// Longer pauses on special characters
	if (string_char_at(StoredDialogue, DiaProgress-1) == ".") {
		alarm_set(0,25);
	} else if (string_char_at(StoredDialogue, DiaProgress-1) == ",") {
		alarm_set(0,16);
	} else if (string_char_at(StoredDialogue, DiaProgress-1) == "?" || string_char_at(StoredDialogue, DiaProgress-1) == "!") {
		alarm_set(0,9);
	} else {
		alarm_set(0,1);	
	}
	
} else {
	with (obj_DialogueBox) {
		alarm_set(0,20);
		obj_PlayableMirgo.CanAdvance = true;
		global.DialogueIndex++;
	}
}