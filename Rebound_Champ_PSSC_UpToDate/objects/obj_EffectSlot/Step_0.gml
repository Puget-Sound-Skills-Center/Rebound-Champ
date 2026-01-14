var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(mx, my, x1, y1, x2, y2)) {
	
	if (mouse_check_button_pressed(mb_left)) {
			show_debug_message(string("Effect Name: " + string(EffectName))); // What number the slot is
				obj_EffectTooltipManager.SelectedEffect = string(EffectName);
				obj_EffectTooltipManager.TT_EffectPotency = EffectPotency;
	}
	
}

// Update Stats

if (EffectName == "Strength") {
	global.StrengthLevel = EffectPotency;
}
if (EffectName == "Speed") {
	global.SpeedLevel = EffectPotency;
}
if (EffectName == "Insight") {
	global.InsightLevel = EffectPotency;
}
if (EffectName == "Evasive") {
	global.EvasiveLevel = EffectPotency;
}
if (EffectName == "Vitality") {
	global.VitalityLevel = EffectPotency;
}
if (EffectName == "Malice") {
	global.MaliceLevel = EffectPotency;
}

Update_PlayerStats();

