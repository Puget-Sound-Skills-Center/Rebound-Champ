randomize();
BellSFX = ["Bell1","Bell2","Bell3"];
audio_play_sound(asset_get_index(BellSFX[irandom(array_length(BellSFX) - 1)]),1,false);

DeathFlavorText = "";
ComeBack = false;
alarm_set(0,180);
