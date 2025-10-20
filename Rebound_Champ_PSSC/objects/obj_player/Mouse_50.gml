if(HoldCharge = false && SwingEnabled = true) {
	HoldCharge = true
	//show_debug_message("Held")
	instance_create_layer(x,y,"Instances",obj_Debug_HoldIndicator)
}
