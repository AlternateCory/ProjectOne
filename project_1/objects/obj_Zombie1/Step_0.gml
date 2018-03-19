/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 50462EED
/// @DnDArgument : "obj" "obj_first_player"
/// @DnDSaveInfo : "obj" "27b3fbef-51d0-4f4f-86d2-33a7aea46ee2"
var l50462EED_0 = false;
l50462EED_0 = instance_exists(obj_first_player);
if(l50462EED_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0E451C42
	/// @DnDParent : 50462EED
	/// @DnDArgument : "x" "obj_first_player.x"
	/// @DnDArgument : "y" "obj_first_player.y"
	direction = point_direction(x, y, obj_first_player.x, obj_first_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5CB6DC5E
	/// @DnDParent : 50462EED
	/// @DnDArgument : "speed" "SPD"
	speed = SPD;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0244266D
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5174CBD7
/// @DnDArgument : "var" "HP"
/// @DnDArgument : "op" "3"
if(HP <= 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 2A3D9C1A
	/// @DnDApplyTo : 0f7775d9-a3d7-48f5-847d-6b9c7f234df1
	/// @DnDParent : 5174CBD7
	/// @DnDArgument : "score" "1"
	/// @DnDArgument : "score_relative" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(1);
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 724276D8
	/// @DnDParent : 5174CBD7
	/// @DnDArgument : "sound" "snd_kill"
	/// @DnDArgument : "pitch" "random_range(0.5,2)"
	/// @DnDSaveInfo : "sound" "f3421582-683e-43a4-a001-b4409989dda3"
	audio_sound_pitch(snd_kill, random_range(0.5,2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 522831E6
	/// @DnDParent : 5174CBD7
	/// @DnDArgument : "soundid" "snd_kill"
	/// @DnDSaveInfo : "soundid" "f3421582-683e-43a4-a001-b4409989dda3"
	audio_play_sound(snd_kill, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 77057621
	/// @DnDParent : 5174CBD7
	instance_destroy();
}