/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AFA2C30
/// @DnDArgument : "code" "/// @description GROWING TREE$(13_10)if (image_index > 0) {state = "grow";}$(13_10)$(13_10)if state == "grow" {$(13_10)	image_speed = 4;$(13_10)	$(13_10)	if (image_index = 4) {$(13_10)		image_speed = 0;$(13_10)		image_index = 4;$(13_10)	}$(13_10)	$(13_10)}"
/// @description GROWING TREE
if (image_index > 0) {state = "grow";}

if state == "grow" {
	image_speed = 4;
	
	if (image_index = 4) {
		image_speed = 0;
		image_index = 4;
	}
	
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09609C04
/// @DnDArgument : "code" "/// @description STATE DEAD$(13_10)$(13_10)if(state == "dead"){	$(13_10)	sprite_index = s_tree;$(13_10)	image_index = 0;$(13_10)	state = "alive";$(13_10)	hp = 5;$(13_10)}"
/// @description STATE DEAD

if(state == "dead"){	
	sprite_index = s_tree;
	image_index = 0;
	state = "alive";
	hp = 5;
}