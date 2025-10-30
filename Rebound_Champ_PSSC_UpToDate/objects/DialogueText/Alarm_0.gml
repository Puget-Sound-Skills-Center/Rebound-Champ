DiaLength = string_length(StoredDialogue);

if(DiaProgress <= DiaLength) {
	DialogueDisplay = string(string_copy(StoredDialogue,1,DiaProgress));
	DiaProgress++;
	alarm_set(0,2);
} else {
	with (obj_DialogueBox) {
		alarm_set(0,20);
	}
}