draw_set_halign(fa_left);
draw_set_font(MainInventory_FontALT);
draw_text(x,y,"- Mirgo -");

draw_set_font(MiscInventory_Font);
draw_text(x,y+65,string("LV(" + string(CurrentLevel) + ") (" + string(CurrentEXP) + "/" + string(EXP_Required) + ")"));
draw_text(x,y+110,string("UTokens: " + string(UTokens)));
draw_text(x,y+155,string("Skill Points: " + string(Skill_Points)));

// Display Stats (+45 for each new line)

draw_set_font(MainInventory_FontALT);
draw_text(x+315,y,string("- Stats -"));

draw_set_font(MiscInventory_Font);
draw_text(x+315,y+65, string("Player HP: " + string(global.BasePlayerLives)));
draw_text(x+315,y+110, string("Charge Bonus: " + string(global.ChargeCapBonus)));
draw_text(x+315,y+155, string("Knockback Multi: x" + string(1 + (global.BallKnockbackBonus/100))));
draw_text(x+315,y+200, string("Base TP Gain: " + string(global.BaseTPGain)));
draw_text(x+315,y+245, string("Guard Chip Multi: x" + string(1 + (global.GuardBreakBonus/100))));
draw_text(x+315,y+290, string("Slash Cooldown: " + string(global.BaseCoolDown) + " seconds"));
draw_text(x+315,y+335, string("Movement Speed Multi: x" ));
draw_text(x+315,y+380, string("Dodge Chance: " + string(global.DodgeChance) + "%" ));



