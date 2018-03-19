/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 3D340F13
/// @DnDApplyTo : 27b3fbef-51d0-4f4f-86d2-33a7aea46ee2
/// @DnDArgument : "health" "100"
with(obj_first_player) {

__dnd_health = real(100);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 52B90599
/// @DnDArgument : "soundid" "snd_background"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "149bc871-1272-44c5-9c74-3ac68301d16d"
audio_play_sound(snd_background, 0, 1);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 0A617FAD
/// @DnDApplyTo : 0f7775d9-a3d7-48f5-847d-6b9c7f234df1
with(obj_life_controller) {

__dnd_score = real(0);
}