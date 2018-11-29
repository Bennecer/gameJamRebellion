/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B876483
/// @DnDArgument : "code" "/// @description DEAD STATE$(13_10)$(13_10)//STATE DEAD$(13_10)if state == "dead" {$(13_10)    if image_speed > 0{$(13_10)        if image_index > image_number -1 instance_destroy();    $(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)if (x+sprite_width/2 <= 0 && instance_exists(o_Player) && state = "alive"){$(13_10)    o_Player.hp -= 10;$(13_10)    instance_destroy();$(13_10)}$(13_10)$(13_10)"
/// @description DEAD STATE

//STATE DEAD
if state == "dead" {
    if image_speed > 0{
        if image_index > image_number -1 instance_destroy();    
    }
}


if (x+sprite_width/2 <= 0 && instance_exists(o_Player) && state = "alive"){
    o_Player.hp -= 10;
    instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 386E6CE7
/// @DnDArgument : "code" "/// @description ATTACK STATE$(13_10)$(13_10)if ((state == "attack") and (cooldown == false)) {$(13_10)	hspeed = 0;$(13_10)    sprite_index = s_enemy_attack;$(13_10)	o_Player.hp -= 10;$(13_10)	cooldown = true;$(13_10)	alarm[0] = 30;$(13_10)}"
/// @description ATTACK STATE

if ((state == "attack") and (cooldown == false)) {
	hspeed = 0;
    sprite_index = s_enemy_attack;
	o_Player.hp -= 10;
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
/// @DnDArgument : "code" "/// @description MOVE STATE$(13_10)$(13_10)if state == "move" {$(13_10)    hspeed = choose(-3, -2);$(13_10)}$(13_10)"
/// @description MOVE STATE

if state == "move" {
    hspeed = choose(-3, -2);
}