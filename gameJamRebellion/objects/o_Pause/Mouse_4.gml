/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F3FEDA6
/// @DnDArgument : "code" "/// @description PAUSE STATE$(13_10)$(13_10)if(!isPaused && cooldown == false){$(13_10)	o_PLayPause.isPaused = true;$(13_10)	instance_deactivate_all(1);$(13_10)	instance_activate_object(o_PLayPause);$(13_10)	instance_activate_object(o_Reprendre);$(13_10)	instance_activate_object(o_QuitPaused);$(13_10)	isPaused = true;$(13_10)	instance_create_depth(0, 0, 0, o_PausedGame);$(13_10)	instance_deactivate_object(o_Pause);$(13_10)	cooldown = true;$(13_10)	alarm[0] = 15;$(13_10)}$(13_10)$(13_10)"
/// @description PAUSE STATE

if(!isPaused && cooldown == false){
	o_PLayPause.isPaused = true;
	instance_deactivate_all(1);
	instance_activate_object(o_PLayPause);
	instance_activate_object(o_Reprendre);
	instance_activate_object(o_QuitPaused);
	isPaused = true;
	instance_create_depth(0, 0, 0, o_PausedGame);
	instance_deactivate_object(o_Pause);
	cooldown = true;
	alarm[0] = 15;
}