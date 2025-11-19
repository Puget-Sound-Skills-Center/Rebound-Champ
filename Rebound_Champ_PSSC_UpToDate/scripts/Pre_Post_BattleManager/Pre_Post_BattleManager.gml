global.wasInBattle = false;
global.PromptQueue = [""]; // [Rewards, Loot, LevelUp] last two should be optional
global.EnemyLoot = []; // [EXP, UTokens]
global.EnemyItemDrop = []; // ["Item", ""] (NOTE: With each "" in the array, increase odds of getting nothing)
global.playerX = 0;
global.playerY = 0;

function BattlePrep(){
	FreezePlayer();
	global.playerX = obj_PlayableMirgo.x;
	global.playerY = obj_PlayableMirgo.y;
	global.wasInBattle = true;
	room_goto(BattleRoom);
}

function ExitBattle(){
	room_goto(World_Seg1);
	obj_PlayableMirgo.x = global.playerX;
	obj_PlayableMirgo.y = global.playerY;
}