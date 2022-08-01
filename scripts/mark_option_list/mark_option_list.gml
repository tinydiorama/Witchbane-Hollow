///@arg list
function mark_option_list(argument0) {

	var list = argument0;

	// Loop through data structure and mark all the maps
	for ( var i = 0; i < ds_list_size(list); i++ ) {
		ds_list_mark_as_map(list, i);	
	}


}
