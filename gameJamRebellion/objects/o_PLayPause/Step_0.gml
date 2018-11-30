/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B8A0301
/// @DnDArgument : "code" "/// @description COMMANDS$(13_10)$(13_10)//To pause$(13_10)ekey = keyboard_check(vk_escape);"
/// @description COMMANDS

//To pause
ekey = keyboard_check(vk_escape);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20DE5DEF
/// @DnDArgument : "code" "/// @description PAUSE STATE$(13_10)$(13_10)if(ekey && !isPaused && cooldown == false){$(13_10)	instance_deactivate_all(1);$(13_10)	instance_activate_object(o_Reprendre);$(13_10)	instance_activate_object(o_QuitPaused);$(13_10)	isPaused = true;$(13_10)	instance_create_depth(0, 0, 0, o_PausedGame);$(13_10)	cooldown = true;$(13_10)	alarm[0] = 15;$(13_10)}$(13_10)else if(ekey && isPaused && cooldown == false){$(13_10)	instance_activate_all();$(13_10)	instance_deactivate_object(o_Reprendre);$(13_10)	instance_deactivate_object(o_GameOver);$(13_10)	instance_deactivate_object(o_Rejouer);$(13_10)	instance_deactivate_object(o_Quit);$(13_10)	isPaused = false;$(13_10)	instance_destroy(o_PausedGame); $(13_10)	o_Pause.isPaused = false;$(13_10)	cooldown = true;$(13_10)	alarm[0] = 15;$(13_10)}$(13_10)$(13_10)"
/// @description PAUSE STATE

if(ekey && !isPaused && cooldown == false){
	instance_deactivate_all(1);
	instance_activate_object(o_Reprendre);
	instance_activate_object(o_QuitPaused);
	isPaused = true;
	instance_create_depth(0, 0, 0, o_PausedGame);
	cooldown = true;
	alarm[0] = 15;
}
else if(ekey && isPaused && cooldown == false){
	instance_activate_all();
	instance_deactivate_object(o_Reprendre);
	instance_deactivate_object(o_GameOver);
	instance_deactivate_object(o_Rejouer);
	instance_deactivate_object(o_Quit);
	isPaused = false;
	instance_destroy(o_PausedGame); 
	o_Pause.isPaused = false;
	cooldown = true;
	alarm[0] = 15;
}