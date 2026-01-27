// All Existing Items: HandBook, Gumballs, Durr
function UseItem(Item){
	if (Item = "Durr") {
		ApplyEffect("Marked For Death",1);
	}
	if (Item = "Gumballs") {
		audio_play_sound(GumballEat,1,false);
		GumballFunction(); // found in Status Effects Script
	}
	if (Item = "Potion of Strength") {
		ApplyEffect("Strength",7);
	}
	if (Item = "Ashura's Handbook") {
		global.UsedManual = true;
	}
}