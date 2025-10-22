/// @description Ball Up Time
BallUpTime += .1
if(BallUpTime > 1) {
	Overtime = true
	OvertimeSetSpeed = 10
} else {
	Overtime = false	
	OvertimeSetSpeed = 0
}
alarm_set(2,6)
