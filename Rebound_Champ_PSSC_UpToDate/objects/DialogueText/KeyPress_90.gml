/// @description Instantly Fill Out text Lol

if (DiaProgress < DiaLength) {
	alarm_set(0,-1);
	DialogueDisplay = string(StoredDialogue);
	DiaProgress = DiaLength;
	alarm_set(0,1);
}
