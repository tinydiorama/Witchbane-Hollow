event_inherited();

image_speed = 0;
image_index = 0;
newmail = false;

counter = 0;

if ( ds_list_size(o_game.new_mail) > 0 ) { // new mail
	image_index = 1;
	newmail = true;
}