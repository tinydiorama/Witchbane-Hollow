/// @v_save
/// @function v_save
/// @param item_name
/// @param item_val(real/string)
function v_save(argument0, argument1) {

	var _v_save_item_name = argument0;
	var _v_save_item_val = argument1;

	if(is_string(_v_save_item_name))
	{
		ini_open(global._v_save_name + ".ini");
		if(is_string(_v_save_item_val))
		{
			ini_write_string(global._v_save_section_name,_v_save_item_name,_v_save_item_val);
		}
		else
		{
			ini_write_real(global._v_save_section_name,_v_save_item_name,_v_save_item_val);
		}
		ini_close();
	}
	else
	{
		show_error("***v_save -- wrong item name", false);
	}


}
