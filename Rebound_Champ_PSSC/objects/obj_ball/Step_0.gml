 /// @description Ball Movement and Targetting

if(BallActive = true) {
	// Follow Targets
	if(CurrentTarget = "Player") {
		if(BallModePLR = "Smooth") {
			var player_direction = point_direction(x,y,obj_PlayerHeart.x,obj_PlayerHeart.y)
			direction += sin(degtorad(player_direction - direction)) * (TurnSpeedModifier)
			image_angle = direction
		} else if (BallModePLR = "Sharp") {
			direction = point_direction(x,y,obj_PlayerHeart.x,obj_PlayerHeart.y)
			image_angle = direction
		}
	}
	if(CurrentTarget = "Enemy" && IsTargettingEnemy = true) {
	var enemy_direction = point_direction(x,y,obj_dummy.x,obj_dummy.y)
	direction += sin(degtorad(enemy_direction - direction)) * (TurnSpeedModifier)
	image_angle = direction
	}
	
	// Collision States
	if(place_meeting(x,y, obj_EgoSlice)) { // If ball hits blade
		if(CurrentTarget = "Player") {
			obj_TensionBar.currentTP = obj_TensionBar.currentTP + obj_TensionBar.TensionGain
			if (obj_TensionBar.currentTP > obj_TensionBar.maxTP) {
				obj_TensionBar.currentTP = 100
			}
			obj_TensionBar.BallStreak++
			obj_player.Cooldown = 0
			BallUpTime = 0
			BallSpeedModifer = obj_EgoSlice.BallSpeedModifier
			speed = speed + BallSpeedModifer + .75
			EgoRebound()
			CurrentTarget = "Enemy"
			IsTargettingEnemy = true
			with(obj_EgoSlice) {
				instance_destroy()	
			}
		}
	}
	if(place_meeting(x,y, obj_dummy)) { // If ball hits dummy
		if(CurrentTarget = "Enemy") {
			BallUpTime = 0
			ChipGuard()
			speed = speed - BallSpeedModifer
			obj_dummy.TimesParried++
			BallSpeedModifer = 0
			CurrentTarget = "Player"
		}
	}
	if(place_meeting(x,y, obj_PlayerHeart)) { // If ball hits player, specifically the heart
		if(CurrentTarget = "Player") {
			obj_TensionBar.BallStreak = 0
			BallSpeedStored = speed / 1.5
			speed = 1
			SecondWind()
			alarm_set(4,10)
		}
	}

if(speed < 30) {
	TurnSpeedModifier = 4 + OvertimeSetSpeed
} else if(speed < 60) {
		TurnSpeedModifier = 8 + OvertimeSetSpeed
	} else if(speed < 90) {
			TurnSpeedModifier = 12 + OvertimeSetSpeed
		} else if(speed < 120) {
				TurnSpeedModifier = 16 + OvertimeSetSpeed
			} else if(speed > 120) {
					TurnSpeedModifier = 16 + (speed / 10)  + OvertimeSetSpeed
				}
}