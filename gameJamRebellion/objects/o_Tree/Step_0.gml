/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09609C04
/// @DnDArgument : "code" "/// @description STATE DEAD$(13_10)/*if (hp <= 0) {$(13_10)	state = "dead";$(13_10)}*/$(13_10)$(13_10)if(state == "dead"){	$(13_10)	image_index = 0;$(13_10)	state = "alive";$(13_10)	hp = 5;$(13_10)}"
/// @description STATE DEAD
/*if (hp <= 0) {
	state = "dead";
}*/

if(state == "dead"){	
	image_index = 0;
	state = "alive";
	hp = 5;
}/**/

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39632FB7
/// @DnDArgument : "code" "/// @description ATTACK TREE STATE$(13_10)$(13_10)/*if ((state == "attackTree") and (cooldown2 == false)) {$(13_10)	o_Enemy.hspeed = 0;$(13_10)    o_Enemy.sprite_index = s_enemy_attack;$(13_10)	hp -= 1;$(13_10)	cooldown2 = true;$(13_10)	alarm[2] = 30;$(13_10)}*/"
/// @description ATTACK TREE STATE

/*if ((state == "attackTree") and (cooldown2 == false)) {
	o_Enemy.hspeed = 0;
    o_Enemy.sprite_index = s_enemy_attack;
	hp -= 1;
	cooldown2 = true;
	alarm[2] = 30;
}*//**/