event_inherited();
width = 150;
height = 220;

mouse_hover_index = 0;

sprite = s_textbox_green;
text_color_active =  make_color_rgb(143, 86, 191);
text_color_passive = c_black;

options = ds_list_create();
options[| 0] = create_option("Save", menu_option_save);
options[| 1] = create_option("Load", menu_option_load);
options[| 2] = create_option("Exit", menu_option_exit);
mark_option_list(options);

quest_height = 15;
max_shown = 3;