/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3FE04912
/// @DnDArgument : "obj" "obj_first_player"
/// @DnDSaveInfo : "obj" "27b3fbef-51d0-4f4f-86d2-33a7aea46ee2"
var l3FE04912_0 = false;
l3FE04912_0 = instance_exists(obj_first_player);
if(l3FE04912_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 560A3AF7
	/// @DnDApplyTo : 27b3fbef-51d0-4f4f-86d2-33a7aea46ee2
	/// @DnDParent : 3FE04912
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "var_temp" "1"
	with(obj_first_player) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var hp = __dnd_health;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 5E6345DC
	/// @DnDApplyTo : 27b3fbef-51d0-4f4f-86d2-33a7aea46ee2
	/// @DnDParent : 3FE04912
	/// @DnDArgument : "x2" "100"
	/// @DnDArgument : "y2" "20"
	/// @DnDArgument : "value" "hp"
	/// @DnDArgument : "backcol" "$FF0000FF"
	/// @DnDArgument : "barcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF05FAFF"
	/// @DnDArgument : "maxcol" "$FF05FF32"
	with(obj_first_player) draw_healthbar(0, 0, 100, 20, hp, $FF0000FF & $FFFFFF, $FF05FAFF & $FFFFFF, $FF05FF32 & $FFFFFF, 0, (($FF0000FF>>24) != 0), (($FF000000>>24) != 0));

	/// @DnDAction : YoYo Games.Instance Variables.Get_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1D6A6ACA
	/// @DnDApplyTo : 0f7775d9-a3d7-48f5-847d-6b9c7f234df1
	/// @DnDParent : 3FE04912
	/// @DnDArgument : "var" "curr_score"
	/// @DnDArgument : "var_temp" "1"
	with(obj_life_controller) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	var curr_score = __dnd_score;
	}

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 734207FA
	/// @DnDParent : 3FE04912
	/// @DnDArgument : "font" "Score_fnt"
	/// @DnDSaveInfo : "font" "7e2bc40e-edc2-46fa-a24a-9bc540180685"
	draw_set_font(Score_fnt);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 51E30F99
	/// @DnDParent : 3FE04912
	/// @DnDArgument : "color" "$FF0000FF"
	draw_set_colour($FF0000FF & $ffffff);
	draw_set_alpha(($FF0000FF >> 24) / $ff);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2A55B6E5
	/// @DnDParent : 3FE04912
	/// @DnDArgument : "code" "draw_text(20, 30, "Health = " + string(hp));$(13_10)draw_text(20, 70, "Kills = " + string(curr_score));$(13_10)draw_text(20, 110, "Room " + string(room));"
	draw_text(20, 30, "Health = " + string(hp));
	draw_text(20, 70, "Kills = " + string(curr_score));
	draw_text(20, 110, "Room " + string(room));
}