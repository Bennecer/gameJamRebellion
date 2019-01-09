/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C2D85F8
/// @DnDArgument : "code" "$(13_10)if(other.image_index != 0){$(13_10)	state = "attackingTree";$(13_10)}$(13_10)$(13_10)$(13_10)if(state == "attackingTree" and cooldown3 == false){$(13_10)	$(13_10)	if(state != "dead"){$(13_10)		hspeed = 0;$(13_10)		sprite_index = s_enemy_boss_attack;$(13_10)		state = "attackTree";$(13_10)	}$(13_10)}$(13_10)$(13_10)if(state = "attackTree" and cooldown3 == false){$(13_10)	$(13_10)	if(other.hp <= 1){$(13_10)		if(state != "dead"){$(13_10)			state = "move";	$(13_10)			sprite_index = s_enemy_boss;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	other.hp -= 1;$(13_10)	$(13_10)	cooldown3 = true;$(13_10)	alarm[3] = 10;$(13_10)}"

if(other.image_index != 0){
	state = "attackingTree";
}


if(state == "attackingTree" and cooldown3 == false){
	
	if(state != "dead"){
		hspeed = 0;
		sprite_index = s_enemy_boss_attack;
		state = "attackTree";
	}
}

if(state = "attackTree" and cooldown3 == false){
	
	if(other.hp <= 1){
		if(state != "dead"){
			state = "move";	
			sprite_index = s_enemy_boss;
		}
	}
	
	other.hp -= 1;
	
	cooldown3 = true;
	alarm[3] = 10;
}