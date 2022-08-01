///@arg numRows
///@arg numCols
///@arg list
function create_items_option_grid(argument0, argument1, argument2) {
	var numRows = argument0;
	var numCols = argument1;
	
	var counter = 0;

	var items_list = argument2;
	
	var actualRows = ceil(ds_list_size(items_list) / numCols); 
	var options;
	
	for ( var i = 0; i < actualRows; i++ ) {
		for ( var j = 0; j < numCols; j++ ) {
			if ( counter < ds_list_size(items_list) ) {
				options[i, j] = counter;
				counter++;
			} else {
				options[i, j] = -1;
			}
		}
	}
	return options;


}
