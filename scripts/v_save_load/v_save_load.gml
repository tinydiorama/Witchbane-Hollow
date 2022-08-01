/// @v_save_load
/// @function v_save_load
/// @param item_name
/// @param item_def_val(real/string)
function v_save_load(argument0, argument1) {

	var _v_save_item_name = argument0;
	var _v_save_item_default_val = argument1;
	var _v_result = _v_save_item_default_val;

	if(is_string(_v_save_item_name))
	{
		ini_open(global._v_save_name + ".ini");
		if(is_string(_v_save_item_default_val))
		{
			_v_result = ini_read_string(global._v_save_section_name,_v_save_item_name,_v_save_item_default_val);
		}
		else
		{
			_v_result = ini_read_real(global._v_save_section_name,_v_save_item_name,_v_save_item_default_val);
		}
		ini_close();
	}
	else
	{
		show_error("***v_load -- wrong item name", false);
	}

	return _v_result;



}
