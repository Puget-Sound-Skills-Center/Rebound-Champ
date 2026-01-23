// Confirms interaction with npc
obj_PlayableMirgo.CurrentlyInteracting = "Dummy";
obj_PlayableMirgo.CurrentNPC_Phase = NPC_Phase;
global.Text_sfx = "NothingBurger";
global.NPC_Noises = ["NothingBurger"];
global.EnemyLoot = [12,15];
global.EnemyItemDrop = ["Gumballs", ""];
StartDialogue();
NPCDialogue("Dummy", NPC_Phase);