//if ( o_input.down_pressed || o_input.up_pressed ) { // if lb or rb buttons are pressed on controller

if ( o_input.left_pressed && menuIndex == 1 ) {
	menuIndex = 0;
} else if ( (o_input.right_pressed || o_input.action_one_pressed) && menuIndex == 0 && numQuests > 0) {
	menuIndex = 1;
}
if ( menuIndex == 0 ) { // select between active and completed
	if ( o_input.up_pressed && categoryIndex == 1 ) {
		categoryIndex = 0;
		view_index = 0;
		menuIndex = 0;
		index = 0;
		activeList = o_game.quests;
		activeListStates = o_game.quest_states;
		options = options_incomplete;
		noQuestsMessage = "You don't have any active quests!";
		
		numQuests = ds_list_size(o_game.quests);
		if ( instance_exists(o_quest_ui) ) {
			instance_destroy(o_quest_ui);
		}
		if ( numQuests != 0 ) {
			var option = options[| 0];
			script_execute(option[? "script"]);
		}
	} else if ( o_input.down_pressed && categoryIndex == 0 ) {
		categoryIndex = 1;
		view_index = 0;
		menuIndex = 0;
		index = 0;
		options = options_completed;
		activeList = o_game.quests_done;
		activeListStates = o_game.quests_done_states;
		noQuestsMessage = "You don't have any completed quests!";
		
		numQuests = ds_list_size(o_game.quests_done);
		if ( instance_exists(o_quest_ui) ) {
			instance_destroy(o_quest_ui);
		}
		if ( numQuests != 0 ) {
			var option = options[| 0];
			script_execute(option[? "script"]);
		}
	}
} else {
	if ( numQuests == 0 ) {
			
	} else {
		if ( o_input.up_pressed || o_input.down_pressed ) {
			index += o_input.down_pressed - o_input.up_pressed;
			index = clamp(index, 0, ds_list_size(options) - 1);

			var restricted_max = min(max_shown, ds_list_size(options));
			view_index += o_input.down_pressed - o_input.up_pressed;
			view_index = clamp(view_index, 0, restricted_max - 1);
			// Run the option
	
			if ( instance_exists(o_quest_ui) ) {
				instance_destroy(o_quest_ui);
			}
			var option = options[| index];
			script_execute(option[? "script"]);
		}
	}
}

// Exit the options list
if ( o_input.pause_pressed ) {
	instance_destroy();
}