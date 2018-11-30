/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B876483
/// @DnDArgument : "code" "/// @description DEAD STATE$(13_10)$(13_10)//STATE DEAD$(13_10)if state == "dead" {$(13_10)	sprite_index = s_enemy_die;$(13_10)    if image_speed > 0{$(13_10)        if(image_index > image_number -1) {$(13_10)			o_Player.kills += 1;$(13_10)			if(o_Player.kills = 3){$(13_10)				if(o_Player.numberPlanted != 11){$(13_10)					o_Player.numberSeeds += 1;$(13_10)					o_Player.kills = 0;$(13_10)				}$(13_10)				else{$(13_10)					o_Player.kills = 0;$(13_10)				}$(13_10)			}$(13_10)			instance_destroy();$(13_10)		}$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)if (x+sprite_width/2 <= 0 && instance_exists(o_Player) && state = "alive"){$(13_10)    o_Player.hp -= 1;$(13_10)    instance_destroy();$(13_10)}$(13_10)$(13_10)"
/// @description DEAD STATE

//STATE DEAD
if state == "dead" {
	sprite_index = s_enemy_die;
    if image_speed > 0{
        if(image_index > image_number -1) {
			o_Player.kills += 1;
			if(o_Player.kills = 3){
				if(o_Player.numberPlanted != 11){
					o_Player.numberSeeds += 1;
					o_Player.kills = 0;
				}
				else{
					o_Player.kills = 0;
				}
			}
			instance_destroy();
		}
    }
}


if (x+sprite_width/2 <= 0 && instance_exists(o_Player) && state = "alive"){
    o_Player.hp -= 1;
    instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 386E6CE7
/// @DnDArgument : "code" "/// @description ATTACK STATE$(13_10)$(13_10)if ((state == "attack") and (cooldown == false) && o_Player.state != "dead" && o_Player.state != "hit") {$(13_10)	hspeed = 0;$(13_10)    sprite_index = s_enemy_attack;$(13_10)	o_Player.state = "hit";$(13_10)	o_Player.hp -= 1;$(13_10)	cooldown = true;$(13_10)	alarm[0] = 30;$(13_10)}"
/// @description ATTACK STATE

if ((state == "attack") and (cooldown == false) && o_Player.state != "dead" && o_Player.state != "hit") {
	hspeed = 0;
    sprite_index = s_enemy_attack;
	o_Player.state = "hit";
	o_Player.hp -= 1;
	cooldown = true;
	alarm[0] = 30;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 623720F0
/// @DnDArgument : "code" "/// @description ATTACK TREE STATE$(13_10)$(13_10)if ((state == "attackTree") and (cooldown2 == false)) {$(13_10)	cooldown2 = true;$(13_10)	alarm[2] = 30;$(13_10)}"
/// @description ATTACK TREE STATE

if ((state == "attackTree") and (cooldown2 == false)) {
	cooldown2 = true;
	alarm[2] = 30;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DF69672
/// @DnDArgument : "code" "/// @description MOVE STATE$(13_10)$(13_10)if state == "move" {$(13_10)	$(13_10)    hspeed = choose(-3, -2);$(13_10)}$(13_10)"
/// @description MOVE STATE

if state == "move" {
	
    hspeed = choose(-3, -2);
}