global.Pos_StatusEffectsList = ["Strength","Speed","Insight","Evasive","Vitality","Malice"]; // # of unique effects = 6
global.ActiveStatusEffects = ["","","","","",""];
global.ASE_Potency = [0,0,0,0,0,0];

// PLAN: When a new effect is applied, it would be added in the ActiveStatusEffects (ASE) array and its potency
// on the ASE_Potency array. Whenever the gumball function is called, it first declares the effect then the 

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
}