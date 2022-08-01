///@arg list
function create_quests_option_list(argument0) {
	var options = ds_list_create();

	var quest_list = argument0;
	for ( var i = 0; i < ds_list_size(quest_list); i++ ) {
		var quest = quest_list[| i];
		var option_text = quest[? "name"];
	
		//Attempt to prevent the text from going past the ui frame
		if ( string_length(option_text) > 20 ) {
			option_text = string_copy(option_text, 0, 17);
			option_text += "...";
		}
	
		options[| i] = create_option(option_text, quest_option_view_ui);
	}
	mark_option_list(options);
	return options;


}
