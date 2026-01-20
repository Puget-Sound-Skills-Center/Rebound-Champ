// Dummy lives create 
for (var i=0;i<DummyLives;i++) {
	var life = instance_create_layer(1920 - (60*i), 64, "UI", obj_DummyLife)
	with (life) {
		life.LifeID = i
		//show_debug_message(life.LifeID)
		//show_debug_message(life.x)
	}
}

// Player lives create
for (var i=0;i<global.BasePlayerLives;i++) {
	var plrlife = instance_create_layer(96 + (60*i), 64, "UI", obj_PlayerLife)
	with (plrlife) {
		plrlife.LifeID = i
		//show_debug_message(plrlife.LifeID)
		//show_debug_message(plrlife.x)
	}
}

