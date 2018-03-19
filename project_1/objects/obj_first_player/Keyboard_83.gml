/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D5FFE57
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height-187"
if(y < room_height-187)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1C638BCA
	/// @DnDParent : 6D5FFE57
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "4"
	/// @DnDArgument : "y_relative" "1"
	
	y += 4;
}