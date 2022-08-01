/// @v_save_exists
/// @function v_save_exists
function v_save_exists() {

	var _v_result = false;

	if file_exists(global._v_save_name + ".ini")
	{
		_v_result = true;
	}

	return _v_result;



}
