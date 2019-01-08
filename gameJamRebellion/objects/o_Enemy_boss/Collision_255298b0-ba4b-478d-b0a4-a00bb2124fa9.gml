/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CF03980
/// @DnDArgument : "code" "/// @description TRIGGER ATTACK ENNEMY$(13_10)$(13_10)$(13_10)state = "attack";$(13_10)with(other){$(13_10)	if (!audio_is_playing(monkey_hurt) && hp>1) {$(13_10)		audio_play_sound(monkey_hurt, 10, false);$(13_10)	}$(13_10)}"
/// @description TRIGGER ATTACK ENNEMY


state = "attack";
with(other){
	if (!audio_is_playing(monkey_hurt) && hp>1) {
		audio_play_sound(monkey_hurt, 10, false);
	}
}