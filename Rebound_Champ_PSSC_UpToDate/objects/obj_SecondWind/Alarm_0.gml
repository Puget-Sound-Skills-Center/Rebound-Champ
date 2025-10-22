vspeed = vspeed + .025
image_alpha = image_alpha - .008
alarm_set(0,1)
if(image_alpha <= 0) {
		instance_destroy()
	} else {
		alarm_set(0,1)
	}
