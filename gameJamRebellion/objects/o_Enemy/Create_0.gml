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