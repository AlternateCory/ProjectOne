/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 196291F3
/// @DnDArgument : "key" "ord("L")"
var l196291F3_0;
l196291F3_0 = keyboard_check(ord("L"));
if (l196291F3_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 10CB089E
	/// @DnDApplyTo : 27b3fbef-51d0-4f4f-86d2-33a7aea46ee2
	/// @DnDParent : 196291F3
	/// @DnDArgument : "health" "9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999"
	/// @DnDArgument : "health_relative" "1"
	with(obj_first_player) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5B783363
/// @DnDArgument : "key" "ord("G")"
var l5B783363_0;
l5B783363_0 = keyboard_check(ord("G"));
if (l5B783363_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 327EB71C
	/// @DnDParent : 5B783363
	var l327EB71C_0;
	l327EB71C_0 = mouse_check_button(mb_left);
	if (l327EB71C_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 32E151C3
		/// @DnDParent : 327EB71C
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet1"
		/// @DnDArgument : "layer" ""BulletLayer""
		/// @DnDSaveInfo : "objectid" "86a6c44d-4b23-4282-b385-3a9353c87ab9"
		instance_create_layer(x, y, "BulletLayer", obj_bullet1);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 308C6108
		/// @DnDParent : 327EB71C
		/// @DnDArgument : "soundid" "snd_shoot"
		/// @DnDSaveInfo : "soundid" "20ef2d40-c26e-4c38-ac6e-dcaa77fd1ec6"
		audio_play_sound(snd_shoot, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5D78619F
/// @DnDArgument : "key" "ord("1")"
var l5D78619F_0;
l5D78619F_0 = keyboard_check(ord("1"));
if (l5D78619F_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5C89217A
	/// @DnDParent : 5D78619F
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "544efb83-fde4-4a1e-9949-b412f29252f1"
	room_goto(Room1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2B1DB904
/// @DnDArgument : "key" "ord("2")"
var l2B1DB904_0;
l2B1DB904_0 = keyboard_check(ord("2"));
if (l2B1DB904_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 683494EE
	/// @DnDParent : 2B1DB904
	/// @DnDArgument : "room" "Room2"
	/// @DnDSaveInfo : "room" "8665ca5c-45c6-4e40-a526-e167f00660ff"
	room_goto(Room2);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 27EDDD18
/// @DnDArgument : "key" "ord("3")"
var l27EDDD18_0;
l27EDDD18_0 = keyboard_check(ord("3"));
if (l27EDDD18_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3BC1148A
	/// @DnDParent : 27EDDD18
	/// @DnDArgument : "room" "Room3"
	/// @DnDSaveInfo : "room" "d3500d77-eb3a-4d0f-8c71-7c8cfcfadb11"
	room_goto(Room3);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6F48B12A
/// @DnDArgument : "key" "ord("4")"
var l6F48B12A_0;
l6F48B12A_0 = keyboard_check(ord("4"));
if (l6F48B12A_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2FD4C133
	/// @DnDParent : 6F48B12A
	/// @DnDArgument : "room" "Room4"
	/// @DnDSaveInfo : "room" "fe030ec4-2be9-4c13-9f25-9c3f5cedd36a"
	room_goto(Room4);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 72F6CDA0
/// @DnDArgument : "key" "ord("5")"
var l72F6CDA0_0;
l72F6CDA0_0 = keyboard_check(ord("5"));
if (l72F6CDA0_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 43B20414
	/// @DnDParent : 72F6CDA0
	/// @DnDArgument : "room" "BossRoom"
	/// @DnDSaveInfo : "room" "bd87336b-9028-45a9-abe2-d0137e8bd51f"
	room_goto(BossRoom);
}