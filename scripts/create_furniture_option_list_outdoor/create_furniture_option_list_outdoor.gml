function create_furniture_option_list_outdoor() {
	var options = ds_list_create();

	var furniture_list = o_game.furniture_outdoor;
	for ( var i = 0; i < ds_list_size(furniture_list); i++ ) {
		var furniture = furniture_list[| i];
		var option_text = furniture[? "name"];
		var option_sprite = furniture[? "sprite"];
		var option_object = furniture[? "object"];
	
		//Attempt to prevent the text from going past the ui frame
		if ( string_length(option_text) > 20 ) {
			option_text = string_copy(option_text, 0, 17);
			option_text += "...";
		}
		var option = ds_map_create();
		option[? "name"] = option_text;
		option[? "sprite"] = option_sprite;
		option[? "object"] = option_object;
		
		options[| i] = option;
	}
	mark_option_list(options);
	return options;


}
