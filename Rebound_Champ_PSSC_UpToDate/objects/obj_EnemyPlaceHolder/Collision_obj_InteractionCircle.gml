// Confirms interaction with npc
obj_PlayableMirgo.CurrentlyInteracting = "EVIL";
obj_PlayableMirgo.CurrentNPC_Phase = NPC_Phase;
StartDialogue();
NPCDialogue("EVIL", NPC_Phase);