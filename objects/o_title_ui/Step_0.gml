if ( o_input.left_pressed || o_input.up_pressed ) {
	index = max(--index, 0);	
}
if ( o_input.right_pressed || o_input.down_pressed ) {
	index = min(++index, option_length - 1);	
}
if ( o_input.action_one_pressed ) {
	switch (index) {
		case options.continue_game:
			show_debug_message("Continue");
			load_game();
			break;
		case options.new_game:
			room_goto(r_character_creation);
			break;
		case options.credits:
			show_debug_message("credits");
			break;
		case options.quit:
			game_end();
			break;
	}
}