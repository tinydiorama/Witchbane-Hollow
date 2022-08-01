event_inherited();
width = 150;
height = 220;

mouse_hover_index = 0;
text_color_active =  make_color_rgb(143, 86, 191);
text_color_passive = c_black;

newList = o_game.new_mail;
allList = o_game.all_mail;
numNewMail = ds_list_size(newList);
numCount = numNewMail + ds_list_size(allList);

emptyMessage = "You don't have any mail yet!";

index = 0;

display_height = 15;
max_shown = 9;