event_inherited();
width = 0;
height = 0;
cutscene = noone;

scale = 0.7;

timer = room_speed * 2;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

tempy = gui_height;
finaly = gui_height - height * scale;

fadeOut = false;

sprite = s_textbox_teal;
text_color_active = c_black;

// Create the message
message = "";