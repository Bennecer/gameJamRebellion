/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C27AA84
/// @DnDArgument : "code" "/// @description PAUSE STATE$(13_10)$(13_10)if(cooldown == false){$(13_10)	instance_activate_all();$(13_10)	instance_deactivate_object(o_GameOver);$(13_10)	instance_deactivate_object(o_Rejouer);$(13_10)	instance_deactivate_object(o_Quit);$(13_10)	instance_deactivate_object(o_Win);$(13_10)	instance_deactivate_object(o_WinRejouer);$(13_10)	instance_deactivate_object(o_WinQuit);$(13_10)	o_PLayPause.isPaused = false;$(13_10)	instance_destroy(o_PausedGame); $(13_10)	o_Pause.isPaused = false;$(13_10)	cooldown = true;$(13_10)	alarm[0] = 15;$(13_10)}$(13_10)$(13_10)"
/// @description PAUSE STATE

if(cooldown == false){
	instance_activate_all();
	instance_deactivate_object(o_GameOver);
	instance_deactivate_object(o_Rejouer);
	instance_deactivate_object(o_Quit);
	instance_deactivate_object(o_Win);
	instance_deactivate_object(o_WinRejouer);
	instance_deactivate_object(o_WinQuit);
	o_PLayPause.isPaused = false;
	instance_destroy(o_PausedGame); 
	o_Pause.isPaused = false;
	cooldown = true;
	alarm[0] = 15;
}