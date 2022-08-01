event_inherited();
width = 150;
height = 220;

mouse_hover_index = 0;

sprite = s_textbox_green;
text_color_active =  make_color_rgb(143, 86, 191);
text_color_passive = c_black;
numQuests = ds_list_size(o_game.quests);
numCompletedQuests = ds_list_size(o_game.quests_done);

categoryIndex = 0;
menuIndex = 1;
options_completed = create_quests_option_list(o_game.quests_done);
activeList = o_game.quests;
activeListStates = o_game.quest_states;
var tempquests = o_game.quests;
options_incomplete = create_quests_option_list(o_game.quests);

noQuestsMessage = "You don't have any active quests!";

if ( numQuests == 0 ) {
	options = 0;
} else {
	options = options_incomplete;

	var option = options[| 0];
	script_execute(option[? "script"]);
}

quest_height = 15;
max_shown = 9;