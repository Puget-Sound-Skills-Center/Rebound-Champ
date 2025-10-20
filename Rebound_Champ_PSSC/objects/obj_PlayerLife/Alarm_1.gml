/// @description Animation Loop
	vspeed = vspeed + .075
	image_angle = image_angle - .15
	image_alpha = image_alpha - .02
	if(image_alpha <= 0) {
		instance_destroy()
	} else {
		alarm_set(1,1)
	}