function create_items_option_list() {
	var options = ds_list_create();

	var items_list = o_game.items;
	for ( var i = 0; i < ds_list_size(items_list); i++ ) {
		var item = items_list[| i];
		var item_number = o_game.item_number[| i];
		var option_text = "x" + string(item_number) + " " + item[? "name"];
	
		//Attempt to prevent the text from going past the ui frame
		if ( string_length(option_text) > 20 ) {
			option_text = string_copy(option_text, 0, 17);
			option_text += "...";
		}
	
		options[| i] = create_option(option_text, item_option_use_ui);
	}
	mark_option_list(options);
	return options;


}
