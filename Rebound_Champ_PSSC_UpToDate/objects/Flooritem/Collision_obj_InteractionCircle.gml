obj_PlayableMirgo.IsInDialogue = true;
obj_PlayableMirgo.PostBattlePrompt = true;
global.NPC_Noises = ["ItemPickUp_Notif"];
SystemDialogue("You picked up... something","ItemPickUp_Notif");
AddToInventory("Durr");
instance_destroy();
