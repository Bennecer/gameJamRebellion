/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09609C04
/// @DnDArgument : "code" "/// @description STATE DEAD$(13_10)$(13_10)if (cooldown == false && state == "dead"){$(13_10)	sprite_index = s_tree_die;$(13_10)	image_speed = 2;$(13_10)    $(13_10)	cooldown = true;$(13_10)	alarm[0] = 8;$(13_10)}$(13_10)"
/// @description STATE DEAD

if (cooldown == false && state == "dead"){
	sprite_index = s_tree_die;
	image_speed = 2;
    
	cooldown = true;
	alarm[0] = 8;
}