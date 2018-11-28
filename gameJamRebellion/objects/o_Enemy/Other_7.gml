/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55EAA014
/// @DnDArgument : "code" "if(state == "attack"){$(13_10)    image_index = 0;$(13_10)	sprite_index = s_enemy;$(13_10)    hspeed = choose(-3, -2);$(13_10)	state = "move";$(13_10)}"
if(state == "attack"){
    image_index = 0;
	sprite_index = s_enemy;
    hspeed = choose(-3, -2);
	state = "move";
}