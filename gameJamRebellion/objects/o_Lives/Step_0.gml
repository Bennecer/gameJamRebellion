/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B570DB2
/// @DnDArgument : "code" "/// @description STEPS OF LIVES$(13_10)$(13_10)if(state == "alive"){$(13_10)	if(o_Player.hp == 5){$(13_10)		image_index = 0;$(13_10)	}$(13_10)	else if(o_Player.hp == 4){$(13_10)		image_index = 1;$(13_10)	}$(13_10)	else if(o_Player.hp == 3){$(13_10)		image_index = 2;$(13_10)	}$(13_10)	else if(o_Player.hp == 2){$(13_10)		image_index = 3;$(13_10)	}$(13_10)	else if(o_Player.hp == 1){$(13_10)		image_index = 4;$(13_10)	}$(13_10)	else if(o_Player.hp == 0){$(13_10)		image_index = 5;$(13_10)		state = "dead";$(13_10)	}$(13_10)}"
/// @description STEPS OF LIVES

if(state == "alive"){
	if(o_Player.hp == 5){
		image_index = 0;
	}
	else if(o_Player.hp == 4){
		image_index = 1;
	}
	else if(o_Player.hp == 3){
		image_index = 2;
	}
	else if(o_Player.hp == 2){
		image_index = 3;
	}
	else if(o_Player.hp == 1){
		image_index = 4;
	}
	else if(o_Player.hp == 0){
		image_index = 5;
		state = "dead";
	}
}