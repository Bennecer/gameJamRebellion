/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 350DB816
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)randY = random_range(100, room_height-100);$(13_10)$(13_10)//create$(13_10)instance_create_depth(room_width+40, randY, 1, o_Enemy);$(13_10)$(13_10)//Recommencer$(13_10)alarm[0] = spawn_rate;"
/// @description Execute Code


randY = random_range(100, room_height-100);

//create
instance_create_depth(room_width+40, randY, 1, o_Enemy);

//Recommencer
alarm[0] = spawn_rate;