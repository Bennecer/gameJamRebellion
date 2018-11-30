/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0145C586
/// @DnDArgument : "code" "cooldown = false;$(13_10)if(state = "attackCoconut" ){$(13_10)	instance_create_depth(x, y, 1, o_Coconut);$(13_10)	audio_play_sound(throw, 10, false);$(13_10)}"
cooldown = false;
if(state = "attackCoconut" ){
	instance_create_depth(x, y, 1, o_Coconut);
	audio_play_sound(throw, 10, false);
}