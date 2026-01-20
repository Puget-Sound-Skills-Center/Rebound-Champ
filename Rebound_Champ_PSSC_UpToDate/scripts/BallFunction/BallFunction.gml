function EgoRebound(){
	with (obj_ball) {
		obj_ball.TurnCounter = 0
		image_angle = floor(obj_EgoSlice.image_angle)
		direction = image_angle 
	}
}
function ChipGuard() {
	var MaliceModifier = 1 + (global.GuardBreakBonus/100);
	with (obj_dummy) {
		obj_dummy.Guard = obj_dummy.Guard - (((floor(obj_dummy.TimesParried / 20) + floor(obj_ball.speed / 15)) / 4) * MaliceModifier);
		alarm_set(0,1)
	}
}


function RollForDodge() {
	var RawGuard = global.DodgeChance;
	if (RawGuard > 100) {
		RawGuard = 100;
	}
	randomize();
	var Roll = irandom_range(1,100);
	show_debug_message(string("Chance: " + string(RawGuard) + "% , Roll:" + string(Roll)));
	if (Roll <= RawGuard) { // Dodge Proc'd
		instance_create_layer(obj_PlayerHeart.x,obj_PlayerHeart.y-90,"Instances",obj_DodgeInd);
		show_debug_message("PROC Dodge!!");
		with(obj_ball) { // Code to change targets
			if(CurrentTarget = "Player") {
				obj_player.Cooldown = 0
				BallUpTime = 0
				CurrentTarget = "Enemy"
				IsTargettingEnemy = true
				direction = direction + 180
				}
			}
	} else if (Roll > RawGuard) {
		show_debug_message("Dodge Failed");
		SecondWind();
	}
}

function SecondWind() {
	if (obj_TensionBar.currentTP = 100) { 
		obj_TensionBar.currentTP = 0
		instance_create_layer(obj_PlayerHeart.x,obj_PlayerHeart.y-90,"Instances",obj_SecondWind);
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
			if (obj_GameStartupStuff.PlayerLives < 1) { // Losing Condition
				global.wasInBattle = false;
				global.DeathFlavorText = "The Ball got to you.";
				GameOver("The Ball got to you.");
			}
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

