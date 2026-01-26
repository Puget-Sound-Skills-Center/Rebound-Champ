if (HoldCharge = true) {
	//show_debug_message("Released")
	var ChargePercentage = (obj_Debug_HoldIndicator.chargeMeter / obj_Debug_HoldIndicator.MaxCharge)
	Cooldown = global.BaseCoolDown
	HoldCharge = false
	ChargePower = obj_Debug_HoldIndicator.chargeMeter
	//show_debug_message(string("Charge: " + string(ChargePower) + "%"))
	audio_play_sound(SwordSwing,1,false);
	var _slice = instance_create_layer(obj_PlayerHeart.x,obj_PlayerHeart.y,"Instances",obj_EgoSlice);
	with (_slice) {
		image_xscale = 2 + ((100 * ChargePercentage) / 15)
		image_yscale = 4.5 - ((100 * ChargePercentage) / 25)
		BallSpeedModifier = ((obj_Debug_HoldIndicator.chargeMeter / 10) * (1 + (global.BallKnockbackBonus/100)))
	}
	var _sliceFX = instance_create_layer(obj_PlayerHeart.x,obj_PlayerHeart.y,"Instances",obj_EgoSliceEffect);
	with (_sliceFX) {
		image_xscale = 2 + ((100 * ChargePercentage) / 15)
		image_yscale = 4.5 - ((100 * ChargePercentage) / 25)
	}
	with(obj_Debug_HoldIndicator) {
		alarm_set(0,1)
	}
}
