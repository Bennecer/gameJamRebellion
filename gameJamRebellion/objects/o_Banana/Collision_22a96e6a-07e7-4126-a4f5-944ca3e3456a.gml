/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 230E2BF0
/// @DnDArgument : "code" "/// Get bonus life$(13_10)$(13_10)with(other){$(13_10)	hp += 1;$(13_10)}$(13_10)if (!audio_is_playing(bonus_life)) {$(13_10)	audio_play_sound(bonus_life, 10, false);$(13_10)}$(13_10)instance_destroy();"
/// Get bonus life

with(other){
	hp += 1;
}
if (!audio_is_playing(bonus_life)) {
	audio_play_sound(bonus_life, 10, false);
}
instance_destroy();