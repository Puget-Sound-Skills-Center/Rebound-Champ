// Confirms interaction with npc
obj_PlayableMirgo.CurrentlyInteracting = "Ashura";
obj_PlayableMirgo.CurrentNPC_Phase = NPC_Phase;
global.Text_sfx = "Ashura_textfx";
global.NPC_Noises = ["NothingBurger"];
//global.NPC_Noises = ["SheepBleat1", "SheepBleat2"];
StartDialogue();
NPCDialogue("Ashura", NPC_Phase);