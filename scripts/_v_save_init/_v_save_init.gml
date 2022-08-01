/// @_v_save_init
/// @function _v_save_init
function _v_save_init() {

	// this function call itself befor any other when game starts

	gml_pragma("global", "_v_save_init()");

	global._v_save_name = "saves";
	global._v_save_section_name = "default";

	show_debug_message("v_save *** init -- OK!");




}
