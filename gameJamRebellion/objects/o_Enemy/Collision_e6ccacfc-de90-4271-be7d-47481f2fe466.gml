/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F7FEB58
/// @DnDArgument : "code" "/// @description ATTAQUE ENEMY$(13_10)$(13_10)if(state == "alive"){$(13_10)    o_Player.hp -= 10;$(13_10)    state = "dead";$(13_10)}"
/// @description ATTAQUE ENEMY

if(state == "alive"){
    o_Player.hp -= 10;
    state = "dead";
}