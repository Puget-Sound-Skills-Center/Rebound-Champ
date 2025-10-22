/// @description assess TP Gain

if(BallStreak > 10) {
	StreakBonus = 1
} else if (BallStreak > 20) {
		StreakBonus = 2
	} else if (BallStreak > 30) {
			StreakBonus = 3
		} 



TensionGain = 4 + obj_player.TPGainModifier + StreakBonus
