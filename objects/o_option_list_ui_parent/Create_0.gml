event_inherited();
index = 0;
width = 64;
height = 64;

sprite = s_textbox;

// Create the options list
options = ds_list_create();
mark_option_list(options);

// Color for non highlighted text
purple_gray = make_color_rgb(229, 170, 215);

text_color_active = c_white;
text_color_passive = purple_gray;

// Set game to paused
o_game.paused_ = true;

view_index = 0;
max_shown = 5;