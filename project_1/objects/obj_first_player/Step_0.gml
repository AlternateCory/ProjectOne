/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 3080E28B
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 260F5451
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 6848AF38
var l6848AF38_0;
l6848AF38_0 = mouse_check_button(mb_left);
if (l6848AF38_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C05D78D
	/// @DnDParent : 6848AF38
	/// @DnDArgument : "var" "Cooldown"
	/// @DnDArgument : "op" "3"
	if(Cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 68279E47
		/// @DnDParent : 3C05D78D
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet1"
		/// @DnDArgument : "layer" ""BulletLayer""
		/// @DnDSaveInfo : "objectid" "86a6c44d-4b23-4282-b385-3a9353c87ab9"
		instance_create_layer(x, y, "BulletLayer", obj_bullet1);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 578DFD8D
		/// @DnDParent : 3C05D78D
		/// @DnDArgument : "sound" "snd_shoot"
		/// @DnDSaveInfo : "sound" "20ef2d40-c26e-4c38-ac6e-dcaa77fd1ec6"
		audio_sound_pitch(snd_shoot, 1);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5912C663
		/// @DnDParent : 3C05D78D
		/// @DnDArgument : "soundid" "snd_shoot"
		/// @DnDSaveInfo : "soundid" "20ef2d40-c26e-4c38-ac6e-dcaa77fd1ec6"
		audio_play_sound(snd_shoot, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05252807
		/// @DnDParent : 3C05D78D
		/// @DnDArgument : "expr" "8"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown = 8;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 159F86ED
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Cooldown"
Cooldown += -1;