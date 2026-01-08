global.Pos_StatusEffectsList = ["Strength","Speed","Insight","Evasive","Vitality","Malice"]; // # of unique effects = 6
global.ActiveStatusEffects = ["","","","","",""];
global.ASE_Potency = [0,0,0,0,0,0];

global.EffectBorderCoords = [];

// PLAN: When a new effect is applied, it would be added in the ActiveStatusEffects (ASE) array and its potency
// on the ASE_Potency array. Whenever the gumball function is called, it first declares the effect then the 

function AssignEffectBorders(Index) {
	if (Index == 0) {
		global.EffectBorderCoords = [10,710,192,895];
	}
	if (Index == 1) {
		global.EffectBorderCoords = [214,710,400,895];
	}
	if (Index == 2) {
		global.EffectBorderCoords = [420,710,604,895];
	}
	if (Index == 3) {
		global.EffectBorderCoords = [626,710,810,895];
	}
	if (Index == 4) {
		global.EffectBorderCoords = [830,710,1016,895];
	}
	if (Index == 5) {
		global.EffectBorderCoords = [10,907,192,1090];
	}
	if (Index == 6) {
		global.EffectBorderCoords = [214,907,400,1090];
	}
}


function DeclareEffect(Effect) {
	if (Effect == "Strength") {
		return(1);
	} else if (Effect == "Speed") {
		return(2);
	} else if (Effect == "Insight") {
		return(3);
	} else if (Effect == "Evasive") {
		return(4);
	} else if (Effect == "Vitality") {
		return(5);
	} else if (Effect == "Malice") {
		return(6);
	}
}

function UpdateEffects() {
	if(instance_exists(obj_EffectSlot)) {
		with obj_EffectSlot {
			instance_destroy();	
		}
	}
		for (var i = 0; i < array_length(global.ActiveStatusEffects); i++) {
			if(global.ActiveStatusEffects[i] != "") {
				var Effect = instance_create_layer(((global.gui_w-890) + 150*i),global.gui_h-10, "UI_Inventory", obj_EffectSlot);
				Effect.EffectIndex = DeclareEffect(global.ActiveStatusEffects[i]);
				Effect.EffectPotency = global.ASE_Potency[i];
			} else if (global.ActiveStatusEffects[i] == "") {
				break;
			}
		}
}

function GumballFunction() {
	randomize();
	var randompull = string(global.Pos_StatusEffectsList[irandom(array_length(global.Pos_StatusEffectsList) - 1)]);
	show_debug_message(string(randompull)); // Remove this later 
	for (var i = 0; i < array_length(global.ActiveStatusEffects); i++) {
		
		if (global.ActiveStatusEffects[i] == "") { // if the effect is New
			global.ActiveStatusEffects[i] = randompull;
			global.ASE_Potency[i] += 1;
			break;
		} else if (global.ActiveStatusEffects[i] == "Strength" && randompull == "Strength") { // if the effect is Strength
			global.ASE_Potency[i] += 1;
			break;
		} else if (global.ActiveStatusEffects[i] == "Speed" && randompull == "Speed") { // if the effect is Speed
			global.ASE_Potency[i] += 1;
			break;
		} else if (global.ActiveStatusEffects[i] == "Insight" && randompull == "Insight") { // if the effect is Insight
			global.ASE_Potency[i] += 1;
			break;
		} else if (global.ActiveStatusEffects[i] == "Evasive" && randompull == "Evasive") { // if the effect is Evasive
			global.ASE_Potency[i] += 1;
			break;
		} else if (global.ActiveStatusEffects[i] == "Vitality" && randompull == "Vitality") { // if the effect is Vitality
			global.ASE_Potency[i] += 1;
			break;
		} else if (global.ActiveStatusEffects[i] == "Malice" && randompull == "Malice") { // if the effect is Malice
			global.ASE_Potency[i] += 1;
			break;
		}
		
	}
	UpdateEffects();
}