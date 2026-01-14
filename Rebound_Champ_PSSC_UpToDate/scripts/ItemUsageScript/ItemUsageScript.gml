// All Existing Items: HandBook, Gumballs, Durr
function UseItem(Item){
	if (Item = "Durr") {
		ApplyEffect("Marked For Death",1);
	}
	if (Item = "Gumballs") {
		GumballFunction(); // found in Status Effects Script
	}
	if (Item = "Potion of Strength") {
		ApplyEffect("Strength",7);
	}
}