///@arg text
///@arg script
///@arg closescript
function create_option(argument0, argument1, argument2) {

	var text = argument0;
	var script = argument1;

	// Create the option map
	var option = ds_map_create();
	option[? "text"] = text;
	option[? "script"] = script;
	if(argument_count > 2){
	    option[? "closescript"] = argument[2];
	}

	return option;


}
