/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09609C04
/// @DnDArgument : "code" "/// @description STATE DEAD$(13_10)if(hp<=0){$(13_10)	state = "dead";$(13_10)}$(13_10)$(13_10)$(13_10)if ( state == "dead"){$(13_10)	if (!audio_is_playing(breaking_tree) && o_Player.hp>1) {$(13_10)		audio_play_sound(breaking_tree, 10, false);$(13_10)	}$(13_10)	sprite_index = s_tree_die;$(13_10)	image_speed = 2;$(13_10)    $(13_10)	if(image_index > image_number -1) {$(13_10)		instance_create_depth(x, y, 1, o_Tree);$(13_10)		instance_destroy();$(13_10)	}$(13_10)	$(13_10)}$(13_10)"
/// @description STATE DEAD
if(hp<=0){
	state = "dead";
}


if ( state == "dead"){
	if (!audio_is_playing(breaking_tree) && o_Player.hp>1) {
		audio_play_sound(breaking_tree, 10, false);
	}
	sprite_index = s_tree_die;
	image_speed = 2;
    
	if(image_index > image_number -1) {
		instance_create_depth(x, y, 1, o_Tree);
		instance_destroy();
	}
	
}