/// @description regainSpeed
if (speed < BallSpeedStored) {
	//show_debug_message("Sped up")
	speed = speed * 1.03
	alarm_set(4,2)
} else {
	speed = BallSpeedStored
}