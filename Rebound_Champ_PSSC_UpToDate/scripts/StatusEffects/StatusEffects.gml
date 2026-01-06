global.StatusEffectsList = ["Strength","Speed"];
global.ActiveStatusEffects = [];
global.ASE_Potency = [];

// PLAN: When a new effect is applied, it would be added in the ActiveStatusEffects (ASE) array and its potency
// on the ASE_Potency array. Whenever the gumball function is called, it first declares the effect then the 


function GumballFunction() {
	randomize();
	var randompull = string(global.StatusEffectsList[irandom(array_length(global.StatusEffectsList) - 1)]);
	show_debug_message(string(randompull));
}