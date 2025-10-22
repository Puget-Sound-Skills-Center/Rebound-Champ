function EgoRebound(){
	with (obj_ball) {
		obj_ball.TurnCounter = 0
		image_angle = floor(obj_EgoSlice.image_angle)
		direction = image_angle 
	}
}
function ChipGuard() {
	with (obj_dummy) {
		obj_dummy.Guard = obj_dummy.Guard - ((floor(obj_dummy.TimesParried / 20) + floor(obj_ball.speed / 15)) / 4)
		alarm_set(0,1)
	}
}

function SecondWind() {
	if (obj_TensionBar.currentTP = 100) { 
		obj_TensionBar.currentTP = 0
		instance_create_layer(obj_PlayerHeart.x,obj_PlayerHeart.y-90,"Instances",obj_SecondWind)
			with(obj_ball) {
			if(CurrentTarget = "Player") {
				obj_player.Cooldown = 0
				BallUpTime = 0
				CurrentTarget = "Enemy"
				IsTargettingEnemy = true
				direction = direction + 180
				}
			}
	} else if (obj_TensionBar.currentTP < 100){
		with(obj_PlayerLife) {
				alarm_set(0,1)
			}
			obj_GameStartupStuff.PlayerLives--
		with(obj_ball) {
			if(CurrentTarget = "Player") {
				obj_player.Cooldown = 0
				BallUpTime = 0
				CurrentTarget = "Enemy"
				IsTargettingEnemy = true
				direction = direction + 180
				}
			}
		}
	}

