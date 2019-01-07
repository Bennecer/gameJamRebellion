/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6696D96D
/// @DnDInput : 4
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "cooldown2"
/// @DnDArgument : "var_2" "cooldown"
/// @DnDArgument : "var_3" "cooldown3"
hp = 5;
cooldown2 = false;
cooldown = false;
cooldown3 = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04C96D70
/// @DnDArgument : "code" "state = "alive";$(13_10)image_speed = 0;"
state = "alive";
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 07716F54
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
image_xscale = 0.5;
image_yscale = 0.5;