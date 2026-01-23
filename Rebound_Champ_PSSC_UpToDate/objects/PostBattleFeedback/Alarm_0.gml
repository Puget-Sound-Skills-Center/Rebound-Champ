// Clear all existing effects after battle
global.StrengthLevel = 0;
global.SpeedLevel = 0;
global.InsightLevel = 0;
global.EvasiveLevel = 0;
global.VitalityLevel = 0;
global.MaliceLevel = 0;
global.ActiveStatusEffects = ["","","","","",""];
global.ASE_Potency = [0,0,0,0,0,0];
Update_PlayerStats();

randomize();
EXPgained = irandom_range(floor(global.EnemyLoot[0]/2),global.EnemyLoot[0]);
UtokensGained = irandom_range(0,global.EnemyLoot[1]);
ItemGained = global.EnemyItemDrop[irandom(array_length(global.EnemyItemDrop) - 1)];
GainRewards(EXPgained,UtokensGained);
if(ItemGained != "") {
	array_push(global.PromptQueue, "ItemDrop");
}
alarm_set(1,6);

with obj_Border {
	alarm_set(0,1);	
}
