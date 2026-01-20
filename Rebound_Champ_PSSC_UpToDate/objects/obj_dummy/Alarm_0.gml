/// @description Assess Guard
RawGuard = Guard * 100
randomize();
Roll = irandom_range(1,10000)
if (Roll >= RawGuard) {
	with(obj_DummyLife) {
		alarm_set(0,1)
	}
	instance_create_layer(obj_dummy.x-40,obj_dummy.y-60,"Instances",obj_ProcHitInd)
	Guard = Guard + GuardRecovery
	if (Guard > 100) {
		Guard = 100
	}
	show_debug_message("PROC HIT!!")
	obj_GameStartupStuff.DummyLives--
	if(obj_GameStartupStuff.DummyLives <= 0) {
		ExitBattle();
	}
}