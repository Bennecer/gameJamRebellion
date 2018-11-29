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
/// @DnDArgument : "code" "/// @description PAUSE STATE$(13_10)$(13_10)if(ekey && !isPaused && cooldown == false){$(13_10)	instance_deactivate_all(1);$(13_10)	isPaused = true;$(13_10)	instance_create_depth(0, 0, 0, o_PausedGame);$(13_10)	cooldown = true;$(13_10)	alarm[0] = 15;$(13_10)}$(13_10)else if(ekey && isPaused && cooldown == false){$(13_10)	instance_activate_all();$(13_10)	isPaused = false;$(13_10)	instance_destroy(o_PausedGame); $(13_10)	cooldown = true;$(13_10)	alarm[0] = 15;$(13_10)}$(13_10)$(13_10)"
/// @description PAUSE STATE

if(ekey && !isPaused && cooldown == false){
	instance_deactivate_all(1);
	isPaused = true;
	instance_create_depth(0, 0, 0, o_PausedGame);
	cooldown = true;
	alarm[0] = 15;
}
else if(ekey && isPaused && cooldown == false){
	instance_activate_all();
	isPaused = false;
	instance_destroy(o_PausedGame); 
	cooldown = true;
	alarm[0] = 15;
}