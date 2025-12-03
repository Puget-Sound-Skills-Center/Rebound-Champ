if (IsDisplaying == false) {
	visible = false;
} else {
	visible = true;
} 

#region // All Item Tooltips
	if(DisplaySprIndex == 0) { // Nothing 
		ToolTipDesc = "";
	}
	if(DisplaySprIndex == 1) { // HandBook
		ItemSelected = "Ashura's Handbook";
		ToolTipDesc = "* Firm written Handbook, could learn a thing or\ntwo from this";
	}
	if(DisplaySprIndex == 2) { // Gumballs
		ItemSelected = "Gumballs";
		ToolTipDesc = "* Oddly vibrant, makes you question whether if\nits edible or not-";
	}
	if(DisplaySprIndex == 3) { // Durr
		ItemSelected = "Durr";
		ToolTipDesc = "* You shoudldn't be even having this in the first\nplace-";
	}
#endregion