event_inherited();
width = 150;
height = 220;

mouse_hover_index = 0;

sprite = s_textbox_green;
text_color_active =  make_color_rgb(143, 86, 191);
text_color_passive = c_black;

options = create_friends_option_list();

quest_height = 15;
max_shown = 9;

var option = options[| 0];
script_execute(option[? "script"]);