/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B60292D
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "hp"
hp = 1;

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
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
image_xscale = 0.5;
image_yscale = 0.5;