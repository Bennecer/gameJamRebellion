/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AF50ECE
/// @DnDArgument : "code" "if (image_index > 7 && isDestroying != true) {$(13_10)	image_speed = 0;$(13_10)}$(13_10)if (image_index > image_number -1 && isDestroying == true) {$(13_10)	image_speed = 0;$(13_10)}"
if (image_index > 7 && isDestroying != true) {
	image_speed = 0;
}
if (image_index > image_number -1 && isDestroying == true) {
	image_speed = 0;
}