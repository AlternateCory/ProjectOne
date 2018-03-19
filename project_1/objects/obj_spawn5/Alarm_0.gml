/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7E4230A1
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_spawn"
/// @DnDArgument : "layer" ""EnemyLayer""
/// @DnDSaveInfo : "objectid" "1de0f222-5202-441d-bb80-1c153b93c047"
instance_create_layer(random(room_width), random(room_height), "EnemyLayer", obj_spawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2CEC7EA1
/// @DnDArgument : "steps" "120"
alarm_set(0, 120);