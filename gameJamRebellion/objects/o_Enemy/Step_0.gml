/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B876483
/// @DnDArgument : "code" "/// @description DEAD STATE$(13_10)$(13_10)//STATE DEAD$(13_10)if state == "dead" {$(13_10)    if image_speed > 0{$(13_10)        if image_index > image_number -1 instance_destroy();    $(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)if (x+sprite_width/2 <= 0 && instance_exists(o_Player) && state = "alive"){$(13_10)    o_Player.hp -= 10;$(13_10)    instance_destroy();$(13_10)}"
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