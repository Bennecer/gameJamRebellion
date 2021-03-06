/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F529A25
/// @DnDArgument : "code" "/// @description COMMANDS$(13_10)$(13_10)//ACTIONS KEY$(13_10)ukey = keyboard_check(vk_up) or keyboard_check(ord("W"));$(13_10)dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));$(13_10)lkey = keyboard_check(vk_left) or keyboard_check(ord("A"));$(13_10)rkey = keyboard_check(vk_right) or keyboard_check(ord("D"));$(13_10)//To kick$(13_10)skey = keyboard_check(vk_space);$(13_10)//To plant$(13_10)pkey = keyboard_check(vk_shift);"
/// @description COMMANDS

//ACTIONS KEY
ukey = keyboard_check(vk_up) or keyboard_check(ord("W"));
dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
lkey = keyboard_check(vk_left) or keyboard_check(ord("A"));
rkey = keyboard_check(vk_right) or keyboard_check(ord("D"));
//To kick
skey = keyboard_check(vk_space);
//To plant
pkey = keyboard_check(vk_shift);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FABB3CE
/// @DnDArgument : "code" "/// @description MOVE STATE$(13_10)$(13_10)//STATE ALIVE$(13_10)if state == "alive" {$(13_10)    $(13_10)    // MOUVEMENTS$(13_10)    if ukey {$(13_10)		sprite_index = s_player_back_walk;$(13_10)		image_xscale = 0.45;$(13_10)		image_yscale = 0.45;$(13_10)		y -= 15;$(13_10)    }$(13_10)    $(13_10)    else if dkey {$(13_10)	    sprite_index = s_player_walk_front;$(13_10)		image_xscale = 0.45;$(13_10)		image_yscale = 0.45;$(13_10)	    y += 15;$(13_10)    }$(13_10)    $(13_10)    else if lkey {$(13_10)	    sprite_index = s_player_profile_walk;$(13_10)		image_xscale = -0.5;$(13_10)		image_yscale = 0.5;$(13_10)	    x -= 15;$(13_10)    }$(13_10)    $(13_10)    else if rkey {$(13_10)	    sprite_index = s_player_profile_walk;$(13_10)		image_xscale = 0.5;$(13_10)		image_yscale = 0.5;$(13_10)	    x += 15;$(13_10)    }$(13_10)	else{$(13_10)		sprite_index = s_player;$(13_10)		image_xscale = 0.45;$(13_10)		image_yscale = 0.45;$(13_10)	}$(13_10)    $(13_10)    //MOUVEMENTS OUT OF SCREEN$(13_10)    x = clamp(x, 32, room_width-sprite_width/2);$(13_10)	y = clamp(y, 0+sprite_height/2, room_height-sprite_height/2);$(13_10)}"
/// @description MOVE STATE

//STATE ALIVE
if state == "alive" {
    
    // MOUVEMENTS
    if ukey {
		sprite_index = s_player_back_walk;
		image_xscale = 0.45;
		image_yscale = 0.45;
		y -= 15;
    }
    
    else if dkey {
	    sprite_index = s_player_walk_front;
		image_xscale = 0.45;
		image_yscale = 0.45;
	    y += 15;
    }
    
    else if lkey {
	    sprite_index = s_player_profile_walk;
		image_xscale = -0.5;
		image_yscale = 0.5;
	    x -= 15;
    }
    
    else if rkey {
	    sprite_index = s_player_profile_walk;
		image_xscale = 0.5;
		image_yscale = 0.5;
	    x += 15;
    }
	else{
		sprite_index = s_player;
		image_xscale = 0.45;
		image_yscale = 0.45;
	}
    
    //MOUVEMENTS OUT OF SCREEN
    x = clamp(x, 32, room_width-sprite_width/2);
	y = clamp(y, 0+sprite_height/2, room_height-sprite_height/2);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D7903A2
/// @DnDArgument : "code" "/// @description HIT STATE$(13_10)$(13_10)if state == "hit" && hp > 0 {$(13_10)    sprite_index = s_player_hit;$(13_10)	/*if !audio_is_playing(monkey_hit) {$(13_10)		audio_play_sound(monkey_hit, 10, false);$(13_10)	}*/$(13_10)	$(13_10)	image_xscale = -0.5;$(13_10)	image_yscale = 0.5;$(13_10)	$(13_10)	// MOUVEMENTS$(13_10)	x -= 7;$(13_10)    $(13_10)    //MOUVEMENTS OUT OF SCREEN$(13_10)    x = clamp(x, 32, room_width-sprite_width/2);$(13_10)	y = clamp(y, 0+sprite_height/2, room_height-sprite_height/2);$(13_10)	$(13_10)	if image_speed > 0 {$(13_10)		if image_index > image_number -1 {$(13_10)			/*if !audio_is_playing(monkey_hit) {$(13_10)				audio_play_sound(monkey_hit, 10, false);$(13_10)			}*/$(13_10)			sprite_index = s_player;$(13_10)			state = "alive";$(13_10)		}$(13_10)    }$(13_10)}"
/// @description HIT STATE

if state == "hit" && hp > 0 {
    sprite_index = s_player_hit;
	/*if !audio_is_playing(monkey_hit) {
		audio_play_sound(monkey_hit, 10, false);
	}*/
	
	image_xscale = -0.5;
	image_yscale = 0.5;
	
	// MOUVEMENTS
	x -= 7;
    
    //MOUVEMENTS OUT OF SCREEN
    x = clamp(x, 32, room_width-sprite_width/2);
	y = clamp(y, 0+sprite_height/2, room_height-sprite_height/2);
	
	if image_speed > 0 {
		if image_index > image_number -1 {
			/*if !audio_is_playing(monkey_hit) {
				audio_play_sound(monkey_hit, 10, false);
			}*/
			sprite_index = s_player;
			state = "alive";
		}
    }
}/**/

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 139F3948
/// @DnDArgument : "code" "/// @description DEAD STATE$(13_10)$(13_10)if (hp <= 0){$(13_10)    state = "dead";$(13_10)}$(13_10)$(13_10)if state == "dead" {$(13_10)    sprite_index = s_player_die;$(13_10)	$(13_10)	if !audio_is_playing(monkey_die) {$(13_10)		audio_play_sound(monkey_die, 10, false);$(13_10)	}$(13_10)    $(13_10)    if image_speed > 0 {$(13_10)		if image_index > image_number -1 {$(13_10)			instance_deactivate_all(1);$(13_10)			instance_activate_object(o_GameOver);$(13_10)			audio_pause_all();$(13_10)			audio_play_sound(game_die, 10, false);$(13_10)			instance_activate_object(o_Rejouer);$(13_10)			instance_activate_object(o_Quit);$(13_10)			instance_destroy(); $(13_10)		}$(13_10)    }$(13_10)	$(13_10)}"
/// @description DEAD STATE

if (hp <= 0){
    state = "dead";
}

if state == "dead" {
    sprite_index = s_player_die;
	
	if !audio_is_playing(monkey_die) {
		audio_play_sound(monkey_die, 10, false);
	}
    
    if image_speed > 0 {
		if image_index > image_number -1 {
			instance_deactivate_all(1);
			instance_activate_object(o_GameOver);
			audio_pause_all();
			audio_play_sound(game_die, 10, false);
			instance_activate_object(o_Rejouer);
			instance_activate_object(o_Quit);
			instance_destroy(); 
		}
    }
	
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07983B99
/// @DnDArgument : "code" "/// @description SHOOT COCONUT$(13_10)$(13_10)if (skey && cooldown == false && state != "dead" && isCollision == false){$(13_10)	state = "attackCoconut";$(13_10)	$(13_10)	sprite_index = s_player_profile;$(13_10)	image_xscale = 0.55;$(13_10)	image_yscale = 0.55;$(13_10)	sprite_index = s_player_attack_walk;$(13_10)    $(13_10)    cooldown = true;$(13_10)    alarm[0] = 15;$(13_10)}$(13_10)$(13_10)if(state = "attackCoconut"){$(13_10)	 if image_speed > 0 {$(13_10)		if image_index > image_number -1 {$(13_10)			sprite_index = s_player;$(13_10)			state = "alive";$(13_10)		}$(13_10)    }$(13_10)}"
/// @description SHOOT COCONUT

if (skey && cooldown == false && state != "dead" && isCollision == false){
	state = "attackCoconut";
	
	sprite_index = s_player_profile;
	image_xscale = 0.55;
	image_yscale = 0.55;
	sprite_index = s_player_attack_walk;
    
    cooldown = true;
    alarm[0] = 15;
}

if(state = "attackCoconut"){
	 if image_speed > 0 {
		if image_index > image_number -1 {
			sprite_index = s_player;
			state = "alive";
		}
    }
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 046E5CB7
/// @DnDArgument : "code" "/// @description PLANT TREE$(13_10)$(13_10)if (pkey and (cooldown1 == false) and numberSeeds > 0){$(13_10)	treePlanted = false;$(13_10)	numberPlanted = 0;$(13_10)	i=0;$(13_10)	while(i<instance_number(o_Tree)){$(13_10)		if(instance_find(o_Tree, i).image_index != 0){$(13_10)			numberPlanted += 1;	$(13_10)		}$(13_10)		i += 1;$(13_10)	}$(13_10)	if(numberPlanted < instance_number(o_Tree)){$(13_10)		while(!treePlanted ){$(13_10)			hasFoundTree = false;$(13_10)			if(!hasFoundTree){$(13_10)				randomTree = instance_find(o_Tree, random(instance_number(o_Tree)));$(13_10)				if(randomTree.image_index == 0 && cooldown2 == false){$(13_10)					$(13_10)					randomTree.sprite_index = s_tree_grow;$(13_10)					randomTree.image_index = 1;$(13_10)					randomTree.image_speed = 2;$(13_10)					$(13_10)					cooldown2 = true;$(13_10)					alarm[2] = 15;$(13_10)				    $(13_10)					hasFoundTree = true;$(13_10)					treePlanted = true;$(13_10)					numberPlanted += 1;$(13_10)					numberSeeds -= 1;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		treePlanted = false;$(13_10)		cooldown1=true;$(13_10)		alarm[1] = 15;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(numberPlanted == 11){$(13_10)	audio_pause_all();$(13_10)	audio_play_sound(success, 10, false);$(13_10)	instance_deactivate_all(1);$(13_10)	instance_deactivate_object(o_Player);$(13_10)	instance_activate_object(o_Win);$(13_10)}"
/// @description PLANT TREE

if (pkey and (cooldown1 == false) and numberSeeds > 0){
	treePlanted = false;
	numberPlanted = 0;
	i=0;
	while(i<instance_number(o_Tree)){
		if(instance_find(o_Tree, i).image_index != 0){
			numberPlanted += 1;	
		}
		i += 1;
	}
	if(numberPlanted < instance_number(o_Tree)){
		while(!treePlanted ){
			hasFoundTree = false;
			if(!hasFoundTree){
				randomTree = instance_find(o_Tree, random(instance_number(o_Tree)));
				if(randomTree.image_index == 0 && cooldown2 == false){
					
					randomTree.sprite_index = s_tree_grow;
					randomTree.image_index = 1;
					randomTree.image_speed = 2;
					
					cooldown2 = true;
					alarm[2] = 15;
				    
					hasFoundTree = true;
					treePlanted = true;
					numberPlanted += 1;
					numberSeeds -= 1;
				}
			}
		}
		treePlanted = false;
		cooldown1=true;
		alarm[1] = 15;
	}
}

if(numberPlanted == 11){
	audio_pause_all();
	audio_play_sound(success, 10, false);
	instance_deactivate_all(1);
	instance_deactivate_object(o_Player);
	instance_activate_object(o_Win);
}