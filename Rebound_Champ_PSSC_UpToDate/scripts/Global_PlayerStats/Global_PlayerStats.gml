// Global Positive stat changers
global.StrengthLevel = 0;
global.SpeedLevel = 0;
global.InsightLevel = 0;
global.EvasiveLevel = 0;
global.VitalityLevel = 0;
global.MaliceLevel = 0;


// All changable player stats:
global.BasePlayerLives = 3;
global.ChargeCapBonus = 0;
global.BallKnockbackBonus = 0;



function Update_PlayerStats() { // Updates everytime an effect is applied, skill point allocated, etc.
	show_debug_message("Updated player Stats");
	global.BasePlayerLives = 3 + global.VitalityLevel;
	global.ChargeCapBonus = 0 + (global.StrengthLevel * 125);
	global.BallKnockbackBonus = 0 + (global.StrengthLevel * 5);
}