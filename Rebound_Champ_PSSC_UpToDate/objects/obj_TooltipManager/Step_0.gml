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
		ToolTipDesc = "* Firm written Handbook, could learn a thing or\ntwo from this";
	}
	if(DisplaySprIndex == 2) { // Gumballs
		ToolTipDesc = "* Edible, wonder how it tastes";
	}
	if(DisplaySprIndex == 3) { // Durr
		ToolTipDesc = "* You shoudldn't be even having this in the first\nplace-";
	}
#endregion