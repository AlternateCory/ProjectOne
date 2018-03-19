/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 161BA3F0
/// @DnDApplyTo : 27b3fbef-51d0-4f4f-86d2-33a7aea46ee2
/// @DnDArgument : "health" "100"
with(obj_first_player) {

__dnd_health = real(100);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1C85AC06
instance_destroy();