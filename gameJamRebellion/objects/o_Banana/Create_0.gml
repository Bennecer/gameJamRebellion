/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04C96D70
/// @DnDArgument : "code" "state = "alive";"
state = "alive";

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 07716F54
/// @DnDArgument : "xscale" "0.4"
/// @DnDArgument : "yscale" "0.4"
image_xscale = 0.4;
image_yscale = 0.4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FA4C81F
/// @DnDInput : 3
/// @DnDArgument : "expr" "150"
/// @DnDArgument : "expr_1" "100"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "destroy"
/// @DnDArgument : "var_1" "blink"
/// @DnDArgument : "var_2" "isDestroying"
destroy = 150;
blink = 100;
isDestroying = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 22878EF7
/// @DnDInput : 2
/// @DnDArgument : "steps" "blink"
/// @DnDArgument : "steps_1" "destroy"
/// @DnDArgument : "alarm_1" "1"
alarm_set(0, blink);
alarm_set(1, destroy);