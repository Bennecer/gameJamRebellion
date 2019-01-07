/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65B017C9
/// @DnDArgument : "code" "/// @description COLLISION ENEMY$(13_10)$(13_10)if (other.state != "dead") {$(13_10)    with (other){$(13_10)	    //sprite_index = S_Explosion;$(13_10)	    //state = "dead";$(13_10)		hp -= 1;$(13_10)    }$(13_10)    instance_destroy();$(13_10)}"
/// @description COLLISION ENEMY

if (other.state != "dead") {
    with (other){
	    //sprite_index = S_Explosion;
	    //state = "dead";
		hp -= 1;
    }
    instance_destroy();
}