/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A617F3E
/// @DnDArgument : "code" "/// @description DEBUG$(13_10)$(13_10)debug = keyboard_check(ord("P"));$(13_10)if debug {$(13_10)    game_restart();    $(13_10)}$(13_10)if keyboard_check_pressed(ord("O")){$(13_10)    hp -=1;    $(13_10)}"
/// @description DEBUG

debug = keyboard_check(ord("P"));
if debug {
    game_restart();    
}
if keyboard_check_pressed(ord("O")){
    hp -=1;    
}

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
/// @DnDArgument : "code" "/// @description MOVE STATE$(13_10)$(13_10)//STATE ALIVE$(13_10)if state == "alive" {$(13_10)    sprite_index = s_player;$(13_10)    $(13_10)    // MOUVEMENTS$(13_10)    if ukey {$(13_10)       y -= 15;$(13_10)       sprite_index = s_player;$(13_10)    }$(13_10)    $(13_10)    if dkey {$(13_10)       y += 15;$(13_10)       sprite_index = s_player;$(13_10)    }$(13_10)    $(13_10)    if lkey {$(13_10)       x -= 15;$(13_10)	   image_xscale = -0.3;$(13_10)    }$(13_10)    $(13_10)    if rkey {$(13_10)       x += 15;$(13_10)	   image_xscale = 0.3;$(13_10)    }$(13_10)    $(13_10)    //MOUVEMENTS OUT OF SCREEN$(13_10)    x = clamp(x, 32, room_width-sprite_width/2);$(13_10)	y = clamp(y, 0+sprite_height/2, room_height-sprite_height/2);$(13_10)}"
/// @description MOVE STATE

//STATE ALIVE
if state == "alive" {
    sprite_index = s_player;
    
    // MOUVEMENTS
    if ukey {
       y -= 15;
       sprite_index = s_player;
    }
    
    if dkey {
       y += 15;
       sprite_index = s_player;
    }
    
    if lkey {
       x -= 15;
	   image_xscale = -0.3;
    }
    
    if rkey {
       x += 15;
	   image_xscale = 0.3;
    }
    
    //MOUVEMENTS OUT OF SCREEN
    x = clamp(x, 32, room_width-sprite_width/2);
	y = clamp(y, 0+sprite_height/2, room_height-sprite_height/2);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 139F3948
/// @DnDArgument : "code" "/// @description DEAD STATE$(13_10)$(13_10)if (hp <= 0){$(13_10)    state = "dead";$(13_10)}$(13_10)$(13_10)if state == "dead" {$(13_10)    //sprite_index = s_player_dying;$(13_10)    $(13_10)   // if image_speed > 0 {$(13_10)     //   if image_index > image_number -1 instance_destroy();    $(13_10)    //}$(13_10)	$(13_10)	instance_destroy();$(13_10)}"
/// @description DEAD STATE

if (hp <= 0){
    state = "dead";
}

if state == "dead" {
    //sprite_index = s_player_dying;
    
   // if image_speed > 0 {
     //   if image_index > image_number -1 instance_destroy();    
    //}
	
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07983B99
/// @DnDArgument : "code" "/// @description SHOOT COCONUT$(13_10)$(13_10)if (skey && cooldown == false){$(13_10)    instance_create_depth(x, y, 1, o_Coconut);$(13_10)    cooldown = true;$(13_10)    alarm[0] = 15;$(13_10)}"
/// @description SHOOT COCONUT

if (skey && cooldown == false){
    instance_create_depth(x, y, 1, o_Coconut);
    cooldown = true;
    alarm[0] = 15;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 046E5CB7
/// @DnDArgument : "code" "/// @description PLANT TREE$(13_10)$(13_10)if (pkey and (cooldown1 == false)){$(13_10)	treePlanted = false;$(13_10)	numberPlanted = 0;$(13_10)	i=0;$(13_10)	while(i<instance_number(o_Tree)){$(13_10)		if(instance_find(o_Tree, i).image_index != 0){$(13_10)			numberPlanted += 1;	$(13_10)		}$(13_10)		i += 1;$(13_10)	}$(13_10)	show_debug_message(numberPlanted);$(13_10)	show_debug_message(treePlanted);$(13_10)	if(numberPlanted < instance_number(o_Tree)){$(13_10)		while(!treePlanted ){$(13_10)			hasFoundTree = false;$(13_10)			if(!hasFoundTree){$(13_10)				randomTree = instance_find(o_Tree, random(instance_number(o_Tree)));$(13_10)				if(randomTree.image_index == 0){$(13_10)					randomTree.image_index = 1;$(13_10)					hasFoundTree = true;$(13_10)					treePlanted = true;$(13_10)					numberPlanted += 1;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		treePlanted = false;$(13_10)		cooldown1=true;$(13_10)		alarm[1] = 10;$(13_10)	}$(13_10)}"
/// @description PLANT TREE

if (pkey and (cooldown1 == false)){
	treePlanted = false;
	numberPlanted = 0;
	i=0;
	while(i<instance_number(o_Tree)){
		if(instance_find(o_Tree, i).image_index != 0){
			numberPlanted += 1;	
		}
		i += 1;
	}
	show_debug_message(numberPlanted);
	show_debug_message(treePlanted);
	if(numberPlanted < instance_number(o_Tree)){
		while(!treePlanted ){
			hasFoundTree = false;
			if(!hasFoundTree){
				randomTree = instance_find(o_Tree, random(instance_number(o_Tree)));
				if(randomTree.image_index == 0){
					randomTree.image_index = 1;
					hasFoundTree = true;
					treePlanted = true;
					numberPlanted += 1;
				}
			}
		}
		treePlanted = false;
		cooldown1=true;
		alarm[1] = 10;
	}
}