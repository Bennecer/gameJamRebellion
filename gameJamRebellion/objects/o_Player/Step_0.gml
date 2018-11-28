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
/// @DnDArgument : "code" "/// @description COMMANDS$(13_10)$(13_10)//ACTIONS KEY$(13_10)ukey = keyboard_check(vk_up) or keyboard_check(ord("W"));$(13_10)dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));$(13_10)lkey = keyboard_check(vk_left) or keyboard_check(ord("A"));$(13_10)rkey = keyboard_check(vk_right) or keyboard_check(ord("D"));$(13_10)//To kick$(13_10)skey = keyboard_check(vk_space);"
/// @description COMMANDS

//ACTIONS KEY
ukey = keyboard_check(vk_up) or keyboard_check(ord("W"));
dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
lkey = keyboard_check(vk_left) or keyboard_check(ord("A"));
rkey = keyboard_check(vk_right) or keyboard_check(ord("D"));
//To kick
skey = keyboard_check(vk_space);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FABB3CE
/// @DnDArgument : "code" "/// @description MOVE STATE$(13_10)$(13_10)//STATE ALIVE$(13_10)if state == "alive" {$(13_10)    sprite_index = s_player;$(13_10)    $(13_10)    // MOUVEMENTS$(13_10)    if ukey {$(13_10)       y -= 15;$(13_10)       sprite_index = s_player;$(13_10)    }$(13_10)    $(13_10)    if dkey {$(13_10)       y += 15;$(13_10)       sprite_index = s_player;$(13_10)    }$(13_10)    $(13_10)    if lkey {$(13_10)       x -= 15;$(13_10)	   image_xscale = -1;$(13_10)    }$(13_10)    $(13_10)    if rkey {$(13_10)       x += 15;$(13_10)	   image_xscale = 1;$(13_10)    }$(13_10)    $(13_10)    //MOUVEMENTS OUT OF SCREEN$(13_10)    x = clamp(x, 100, room_width-100);$(13_10)	y = clamp(y, 100, room_height-100);$(13_10)}"
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
	   image_xscale = -1;
    }
    
    if rkey {
       x += 15;
	   image_xscale = 1;
    }
    
    //MOUVEMENTS OUT OF SCREEN
    x = clamp(x, 100, room_width-100);
	y = clamp(y, 100, room_height-100);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 139F3948
/// @DnDArgument : "code" "/// @description DEAD STATE$(13_10)$(13_10)if (hp <= 0){$(13_10)    state = "dead";$(13_10)}$(13_10)$(13_10)if state == "dead" {$(13_10)    //sprite_index = s_player_dying;$(13_10)    $(13_10)    if image_speed > 0 {$(13_10)        if image_index > image_number -1 instance_destroy();    $(13_10)    }$(13_10)}"
/// @description DEAD STATE

if (hp <= 0){
    state = "dead";
}

if state == "dead" {
    //sprite_index = s_player_dying;
    
    if image_speed > 0 {
        if image_index > image_number -1 instance_destroy();    
    }
}