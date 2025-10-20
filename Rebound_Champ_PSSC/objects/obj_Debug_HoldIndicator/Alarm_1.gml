/// @description Increase charge longer held
chargeMeter = floor((chargeMeter + 1) * 1.4)
if(chargeMeter >= 100) {
	chargeMeter = 100
} else {
	alarm_set(1,5)
}