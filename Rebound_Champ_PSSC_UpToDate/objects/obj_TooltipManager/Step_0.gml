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
		ItemSelected = "Ashura's Handbook"; // Displays name of item
		ToolTipDesc = "* Firm written Handbook, could learn a thing or\ntwo from this"; // Brief description of item
		Desc_Mood = "Neutral"; // Connotation of effect of item (Positive, Neutral, Negative)
		HelpfulDesc = ""; // description of what happens upon using
	}
	if(DisplaySprIndex == 2) { // Gumballs
		ItemSelected = "Gumballs";
		ToolTipDesc = "* Oddly vibrant, makes you question whether if\nits edible or not-";
		Desc_Mood = "Positive";
		HelpfulDesc = "+ Apply random positive status effect for your\nnext battle. (effects stack)";
	}
	if(DisplaySprIndex == 3) { // Durr
		ItemSelected = "Durr";
		ToolTipDesc = "* You shoudldn't be even having this in the first\nplace-";
		Desc_Mood = "Negative";
		HelpfulDesc = "- THIS WILL KILL YOU.";
	}
#endregion