/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5281CB88
/// @DnDApplyTo : 27b3fbef-51d0-4f4f-86d2-33a7aea46ee2
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
with(obj_first_player) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);
}