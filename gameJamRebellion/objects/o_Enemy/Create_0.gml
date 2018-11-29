/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B60292D
/// @DnDInput : 3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "cooldown"
/// @DnDArgument : "var_2" "cooldown2"
hp = 1;
cooldown = false;
cooldown2 = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44D886BA
/// @DnDArgument : "code" "randomize();$(13_10)hspeed = choose(-3, -2);$(13_10)state = "alive";"
randomize();
hspeed = choose(-3, -2);
state = "alive";

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 189D9F6E
/// @DnDArgument : "xscale" "0.7"
/// @DnDArgument : "yscale" "0.7"
image_xscale = 0.7;
image_yscale = 0.7;