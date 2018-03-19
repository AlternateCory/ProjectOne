/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 284D8882
/// @DnDArgument : "obj" "obj_first_player"
/// @DnDSaveInfo : "obj" "27b3fbef-51d0-4f4f-86d2-33a7aea46ee2"
var l284D8882_0 = false;
l284D8882_0 = instance_exists(obj_first_player);
if(l284D8882_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 46AEA217
	/// @DnDApplyTo : 27b3fbef-51d0-4f4f-86d2-33a7aea46ee2
	/// @DnDParent : 284D8882
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "var_temp" "1"
	with(obj_first_player) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var hp = __dnd_health;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 217C36F3
	/// @DnDParent : 284D8882
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	if(hp <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 5997BCAC
		/// @DnDParent : 217C36F3
		/// @DnDArgument : "room" "EndRoom"
		/// @DnDSaveInfo : "room" "dd9669ec-245b-45a2-a82e-5b6a3efed03f"
		room_goto(EndRoom);
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 435944D2
/// @DnDArgument : "obj" "obj_first_player"
/// @DnDSaveInfo : "obj" "27b3fbef-51d0-4f4f-86d2-33a7aea46ee2"
var l435944D2_0 = false;
l435944D2_0 = instance_exists(obj_first_player);
if(l435944D2_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3060A5A5
	/// @DnDApplyTo : 0f7775d9-a3d7-48f5-847d-6b9c7f234df1
	/// @DnDParent : 435944D2
	/// @DnDArgument : "var" "curr_score"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	curr_score = __dnd_score;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2798ED97
	/// @DnDParent : 435944D2
	/// @DnDArgument : "var" "curr_score"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "20"
	if(curr_score >= 20)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DF07B3F
		/// @DnDParent : 2798ED97
		/// @DnDArgument : "var" "room"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "BossRoom"
		if(!(room == BossRoom))
		{
			/// @DnDAction : YoYo Games.Rooms.Next_Room
			/// @DnDVersion : 1
			/// @DnDHash : 6F03AA74
			/// @DnDParent : 1DF07B3F
			room_goto_next();
		}
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 50F0FEAD
/// @DnDArgument : "obj" "obj_first_player"
/// @DnDSaveInfo : "obj" "27b3fbef-51d0-4f4f-86d2-33a7aea46ee2"
var l50F0FEAD_0 = false;
l50F0FEAD_0 = instance_exists(obj_first_player);
if(l50F0FEAD_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 417DC2E4
	/// @DnDParent : 50F0FEAD
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "BossRoom"
	if(room == BossRoom)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 55C197B0
		/// @DnDParent : 417DC2E4
		/// @DnDArgument : "obj" "obj_ZombieBoss"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "934d6021-99c3-44a2-bb44-729f36c325ae"
		var l55C197B0_0 = false;
		l55C197B0_0 = instance_exists(obj_ZombieBoss);
		if(!l55C197B0_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0BF29B12
			/// @DnDParent : 55C197B0
			/// @DnDArgument : "var" "curr_score"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "20"
			if(curr_score >= 20)
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 00FACFDB
				/// @DnDParent : 0BF29B12
				/// @DnDArgument : "room" "WinRoom"
				/// @DnDSaveInfo : "room" "4574da83-e771-4432-9d36-8ea83e6f6e7b"
				room_goto(WinRoom);
			}
		}
	}
}