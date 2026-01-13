/// @description Increase charge longer held
chargeMeter = floor((chargeMeter + 1) * 1.4)
if(chargeMeter >= MaxCharge) {
	chargeMeter = MaxCharge
} else {
	alarm_set(1,5)
}