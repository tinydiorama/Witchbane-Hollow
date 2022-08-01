event_inherited();
width = 150;
height = 22;
index = 0;

sprite = s_textbox_green;
text_color_active = c_black;
text_color_passive = make_color_rgb(143, 86, 191);

create_quest = false;

quest = -1;

linestart = 0;
numLines = 13;
linestoScroll = 5;
scrolling = false;
scrollbarmaxdistance = 0;
activelyscrolling = false;
mouse_y_offset = 0;
mousespeed = 1;
mousespeedcounter = 0;
scrollbarratio = 0;
scrollbarheight = 0;
totalHeight = 0;
scrollPaneHeight = 140;
scrollbarcolor = make_color_rgb(255, 63, 110);
scrollspeed = 20;

mouse_y_start = 0;

readydisplay = false;
activeList = o_game.quests;
activeListStates = o_game.quest_states;

gui_height = display_get_gui_height();
gui_width = display_get_gui_width();

scrollbarx = gui_width / 2 + 152;
scrollbary = 95;
splitinfo = ds_list_create();