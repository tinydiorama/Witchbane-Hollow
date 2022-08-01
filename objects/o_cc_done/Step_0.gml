if(mouse_x == clamp(mouse_x, bbox_left, bbox_right) && mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)) {
	selected = true;
} 

if ( selected ) {
	image_index = 1;
} else {
	image_index = 0;
}
if(mouse_check_button_pressed(mb_left) && mouse_x == clamp(mouse_x, bbox_left, bbox_right) && mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)) {
	pressed = true;
}
if ( o_input.action_one_pressed && selected) {
	pressed = true;
}

if ( pressed ) {
	room_goto(r_character_name);	
}