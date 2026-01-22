// Global Misc Stuff 
global.UsedManual = true;
global.ManualActive = false;

// Global Positive stat changers
global.StrengthLevel = 0;
global.SpeedLevel = 0;
global.InsightLevel = 0;
global.EvasiveLevel = 0;
global.VitalityLevel = 0;
global.MaliceLevel = 0;


// All changable player stats:
global.BasePlayerLives = 3; // Affected by vitality
global.ChargeCapBonus = 0; // Affected by Strength
global.BallKnockbackBonus = 0; // Affected by Strength
global.BaseTPGain = 1; // Affected by Insight
global.GuardBreakBonus = 0; // Affected by Malice
global.BaseCoolDown = 1.5; // Affected by Speed
global.SpeedBonus = 0; // Affected by Speed
global.DodgeChance = 0; // Affected by Evasive



function Update_PlayerStats() { // Updates everytime an effect is applied, skill point allocated, etc.
	show_debug_message("Updated player Stats");
	global.BasePlayerLives = 3 + global.VitalityLevel;
	global.ChargeCapBonus = 0 + (global.StrengthLevel * 10);
	global.BallKnockbackBonus = 0 + (global.StrengthLevel * 5);
	global.GuardBreakBonus = 0 + (global.MaliceLevel * 15)
	global.BaseTPGain = 1 + global.InsightLevel;
	global.BaseCoolDown = 1.5 - (global.SpeedLevel * .1);
	global.SpeedBonus = 0 + (global.SpeedLevel * 2.5);
	global.DodgeChance = 0 + (global.EvasiveLevel * 5);
}