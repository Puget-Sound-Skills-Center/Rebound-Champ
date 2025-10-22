if (HoldCharge = true) {
	//show_debug_message("Released")
	Cooldown = 1.5
	HoldCharge = false
	ChargePower = obj_Debug_HoldIndicator.chargeMeter
	//show_debug_message(string("Charge: " + string(ChargePower) + "%"))
	var _slice = instance_create_layer(obj_PlayerHeart.x,obj_PlayerHeart.y,"Instances",obj_EgoSlice);
	with (_slice) {
		image_xscale = 2 + (obj_Debug_HoldIndicator.chargeMeter / 15)
		image_yscale = 4.5 - (obj_Debug_HoldIndicator.chargeMeter / 25)
		BallSpeedModifier = (obj_Debug_HoldIndicator.chargeMeter / 10)
	}
	var _sliceFX = instance_create_layer(obj_PlayerHeart.x,obj_PlayerHeart.y,"Instances",obj_EgoSliceEffect);
	with (_sliceFX) {
		image_xscale = 2 + (obj_Debug_HoldIndicator.chargeMeter / 15)
		image_yscale = 4.5 - (obj_Debug_HoldIndicator.chargeMeter / 25)
	}
	with(obj_Debug_HoldIndicator) {
		alarm_set(0,1)
	}
}
