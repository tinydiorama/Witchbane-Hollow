function create_friends_option_list() {
	var options = ds_list_create();

	var friends_list = o_game.friends;
	for ( var i = 0; i < ds_list_size(friends_list); i++ ) {
		var friend = friends_list[| i];
		var discovered = o_game.friends_discovered[| i];
		var option_text = friend[? "name"];
	
		//Attempt to prevent the text from going past the ui frame
		if ( string_length(option_text) > 20 ) {
			option_text = string_copy(option_text, 0, 17);
			option_text += "...";
		}
	
		options[| i] = create_option(option_text, friend_option_view_ui);
	}
	mark_option_list(options);
	return options;


}
