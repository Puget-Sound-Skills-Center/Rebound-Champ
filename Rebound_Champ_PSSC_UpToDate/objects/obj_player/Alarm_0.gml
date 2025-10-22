/// @description Cooldown Timer

if (Cooldown > 0) {
	Cooldown = Cooldown - .1
} else if (Cooldown <= 0) {
	Cooldown = 0
}
alarm_set(0,6)
