/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40D80B12
/// @DnDArgument : "expr" "80"
/// @DnDArgument : "var" "spawn_rate"
spawn_rate = 80;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4DD6CD7B
/// @DnDArgument : "steps" "spawn_rate"
alarm_set(0, spawn_rate);