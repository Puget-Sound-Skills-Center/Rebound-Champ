randomize();
NPC_Noise = global.NPC_Noises;

if (NPC_Noise != [""]) {
	var NoisePick = NPC_Noise[irandom(array_length(NPC_Noise) - 1)];
	audio_play_sound(asset_get_index(NoisePick),1,false);
}
DiaLength = string_length(StoredDialogue);
DiaProgress = 0;
obj_PlayableMirgo.CanAdvance = false;
// Start rolling Dialogue
alarm_set(0,1);
