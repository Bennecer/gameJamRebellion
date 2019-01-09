/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B60292D
/// @DnDInput : 4
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "cooldown"
/// @DnDArgument : "var_2" "cooldown2"
/// @DnDArgument : "var_3" "cooldown3"
hp = 2;
cooldown = false;
cooldown2 = false;
cooldown3 = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44D886BA
/// @DnDArgument : "code" "hspeed = choose(-4);$(13_10)state = "alive";"
hspeed = choose(-4);
state = "alive";

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 189D9F6E
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
image_xscale = 0.5;
image_yscale = 0.5;