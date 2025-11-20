randomize();
EXPgained = irandom_range(floor(global.EnemyLoot[0]/2),global.EnemyLoot[0]);
UtokensGained = irandom_range(0,global.EnemyLoot[1]);
ItemGained = global.EnemyItemDrop[irandom(array_length(global.EnemyItemDrop) - 1)];
GainRewards(EXPgained,UtokensGained);
if(ItemGained != "") {
	array_push(global.PromptQueue, "ItemDrop");
}
alarm_set(1,6);

