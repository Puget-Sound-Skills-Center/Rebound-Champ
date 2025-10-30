// Confirms interaction with npc
obj_PlayableMirgo.CurrentlyInteracting = "Ashura";
with (obj_InteractionCircle) {
	instance_destroy();
	CreateDialogue("oomf","Haii!!","spr_MirgoPlaceholder",1,"spr_AshuraPlaceholder",0);
}