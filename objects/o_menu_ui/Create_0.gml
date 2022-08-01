// Initialize the menu UI
event_inherited();
height = 96;

max_shown = 5;
mouse_hover_index = 0;
clicked = false;

// Create the options list
var option_index = 0;
options = ds_list_create();
options[| option_index++] = create_option("Quests", menu_option_quests, menu_close_quests);
options[| option_index++] = create_option("Items", menu_option_items, menu_close_items);
options[| option_index++] = create_option("Friends", menu_option_friends, menu_close_friends);
options[| option_index++] = create_option("Grimoire", menu_option_grimoire, menu_close_grimoire);
options[| option_index++] = create_option("Settings", menu_option_settings, menu_close_settings);
//options[| option_index++] = create_option("Load", menu_option_load, menu_close_quests);
//options[| option_index++] = create_option("Exit", menu_option_exit, menu_close_quests);
mark_option_list(options);

var option = options[| 0];
script_execute(option[? "script"]);
closescript = menu_close_quests;