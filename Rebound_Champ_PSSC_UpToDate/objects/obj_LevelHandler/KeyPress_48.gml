/// @description Debug Add XP
var RandomEXP = floor(random(10));
var RandomUTokens = floor(random(10));
GainRewards(RandomEXP,RandomUTokens);
show_debug_message(string("Gained " + string(RandomEXP) + " EXP and " + string(RandomUTokens) + " UTokens!"))
