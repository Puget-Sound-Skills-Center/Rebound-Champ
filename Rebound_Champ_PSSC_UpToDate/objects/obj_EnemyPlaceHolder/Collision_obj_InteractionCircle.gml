// Confirms interaction with npc
obj_PlayableMirgo.CurrentlyInteracting = "EVIL";
obj_PlayableMirgo.CurrentNPC_Phase = NPC_Phase;
global.NPC_Noises = ["Evil1", "Evil2", "Evil3"];
global.EnemyLoot = [12,15];
global.EnemyItemDrop = ["Gumballs", ""];
StartDialogue();
NPCDialogue("EVIL", NPC_Phase);