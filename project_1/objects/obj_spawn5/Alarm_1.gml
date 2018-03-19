/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1413118C
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_health"
/// @DnDArgument : "layer" ""Enemylayer""
/// @DnDSaveInfo : "objectid" "b80b5f5b-caa3-4652-9c5e-f383161e7257"
instance_create_layer(random(room_width), random(room_height), "Enemylayer", obj_health);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 195B6D97
/// @DnDArgument : "steps" "1200"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1200);