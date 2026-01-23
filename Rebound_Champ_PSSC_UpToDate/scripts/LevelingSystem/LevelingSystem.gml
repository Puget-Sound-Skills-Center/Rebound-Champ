global.PlayerLevel = 1;
global.SkillPoints = 0;
global.UTokens = 0;
global.PlayerCurrentEXP = 0;
global.EXPNeeded = 10 + (5*global.PlayerLevel);

function GainRewards(EXP,UTokens) { // (DEPRECIATED ITEM)
	global.PromptQueue = ["Rewards"];
	global.PlayerCurrentEXP += EXP;
	global.UTokens += UTokens;
	global.EXPNeeded = 10 + (5*global.PlayerLevel);
	
	if(global.PlayerCurrentEXP >= global.EXPNeeded) { // Leveling Up System
		array_push(global.PromptQueue, "LevelUp");
		global.PlayerCurrentEXP -= global.EXPNeeded;
		global.PlayerLevel++;
		global.SkillPoints++;
		global.EXPNeeded = 10 + (5*global.PlayerLevel);
	}
	
	//if(Item != "") { // If successfully got item
		//array_push(global.PromptQueue, "ItemDrop");
		//AddToInventory(string(Item));
	//}
	
	if (obj_PlayableMirgo.IsInInventory = true) {
	EvaluateStats();
	}
}

function EvaluateStats() {
	if (instance_exists(obj_LevelHandler)) {
		with obj_LevelHandler {
			instance_destroy();	
		}
	}
	var StatDisplay = instance_create_layer(global.gui_w-1850,global.gui_h-525, "UI_Inventory", obj_LevelHandler);
	StatDisplay.CurrentLevel = global.PlayerLevel;
	StatDisplay.CurrentEXP = global.PlayerCurrentEXP;
	StatDisplay.EXP_Required = global.EXPNeeded;
	StatDisplay.Skill_Points = global.SkillPoints;
	StatDisplay.UTokens = global.UTokens;
}

function DisplaySkills() {
	var SkillsDisplay = instance_create_layer(global.gui_w-1850,global.gui_h-525, "UI_Inventory", obj_SkillsHandler);
}