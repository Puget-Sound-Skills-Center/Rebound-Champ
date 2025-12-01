// Confirms interaction with npc
obj_PlayableMirgo.CurrentlyInteracting = "EVIL";
obj_PlayableMirgo.CurrentNPC_Phase = NPC_Phase;
global.Text_sfx = "NothingBurger";
global.NPC_Noises = ["NothingBurger"];
global.EnemyLoot = [12,15];
global.EnemyItemDrop = ["Gumballs", ""];
StartDialogue();
NPCDialogue("EVIL", NPC_Phase);