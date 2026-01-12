#region // All Effect Tooltips
	if (SelectedEffect == "Strength") { // REFER TO obj_player > Global Left Released Event
		EffectConnotation = "Positive";
		DisplayTooltip = "Strong and hard-hitting, synergizes well with malice";
		StatInfo = string("Increases charge meter by " + string(25*TT_EffectPotency) + " and ball knockback by " + string(5*TT_EffectPotency) + "%");
	}
	if (SelectedEffect == "Speed") { // REFER TO obj_player > Global Left Released Event
		EffectConnotation = "Positive";
		DisplayTooltip = "With movements so swift and fluid, everything to you\nfeels so light";
		StatInfo = string("Decreases swing cooldown by " + string(7.5*TT_EffectPotency) + "%\n* Increases movement speed by " + string(5*TT_EffectPotency) + "%");
	}
	if (SelectedEffect == "Insight") { // REFER TO 
		EffectConnotation = "Positive";
		DisplayTooltip = "Learning quicker than usual makes for quicker\nstrategic approach";
		StatInfo = string("Increase TP gain by " + string(1*TT_EffectPotency));
	}
	if (SelectedEffect == "Evasive") { // REFER TO
		EffectConnotation = "Positive";
		DisplayTooltip = "Unlocking your instincts to avoid what seems unavoidable";
		StatInfo = string("Enables proc dodging;\n* Increases dodge chance by " + string(5*TT_EffectPotency) + "%");
	}
	if (SelectedEffect == "Vitality") { // REFER TO 
		EffectConnotation = "Positive";
		DisplayTooltip = "Your heart beats strong, you're more harder to take down";
		StatInfo = string("Gain " + string(1*TT_EffectPotency) + " extra lives");
	}
	if (SelectedEffect == "Malice") { // REFER TO BallFunction Script > ChipGuard Function
		EffectConnotation = "Positive";
		DisplayTooltip = "Strengthened and more determined to take down\nyour enemy";
		StatInfo = string(string(15*TT_EffectPotency) + "% more guard damage to enemies");
	}
	if (SelectedEffect == "Marked For Death") { // REFER TO 
		EffectConnotation = "Negative";
		DisplayTooltip = "The overwhelming burden will be the death of me";
		StatInfo = string("you're down to 1 life, but 4x more Exp and Utokens");
	}
	

#endregion