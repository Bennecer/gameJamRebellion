/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5472A2E5
/// @DnDArgument : "code" "if(image_index != 0){$(13_10)	state = "beingAttacked";$(13_10)}$(13_10)$(13_10)if(state == "beingAttacked" and cooldown3 == false){$(13_10)	with(other){$(13_10)		hspeed = 0;$(13_10)	    sprite_index = s_enemy_man_attack;$(13_10)		state = "attackTree";$(13_10)	}$(13_10)	hp -= 1;$(13_10)	if(hp <= 0){$(13_10)		with(other){$(13_10)			state = "move";	$(13_10)			sprite_index = s_enemy_man;$(13_10)		}$(13_10)		state = "dead";$(13_10)	}$(13_10)	cooldown3 = true;$(13_10)	alarm[3] = 10;$(13_10)}"
if(image_index != 0){
	state = "beingAttacked";
}

if(state == "beingAttacked" and cooldown3 == false){
	with(other){
		hspeed = 0;
	    sprite_index = s_enemy_man_attack;
		state = "attackTree";
	}
	hp -= 1;
	if(hp <= 0){
		with(other){
			state = "move";	
			sprite_index = s_enemy_man;
		}
		state = "dead";
	}
	cooldown3 = true;
	alarm[3] = 10;
}