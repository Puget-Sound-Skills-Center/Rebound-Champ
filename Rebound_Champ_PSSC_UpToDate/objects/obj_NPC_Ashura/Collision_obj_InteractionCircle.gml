// Confirms interaction with npc
obj_PlayableMirgo.CurrentlyInteracting = "Ashura";
with (obj_InteractionCircle) {
	instance_destroy();
	CreateDialogue("Ashura","","","","","");
}