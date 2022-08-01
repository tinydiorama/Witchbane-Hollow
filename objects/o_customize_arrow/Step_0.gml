if(mouse_x == clamp(mouse_x, bbox_left, bbox_right) && mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)) {
	selected = true;
} 

if ( selected ) {
	image_speed = 2;
} else {
	image_speed = 0;
}
if(mouse_check_button_pressed(mb_left) && mouse_x == clamp(mouse_x, bbox_left, bbox_right) && mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)) {
	pressed = true;
}
if ( o_input.action_one_pressed && selected) {
	pressed = true;
}

if ( pressed ) {
	if ( type == 0 && leftright == 0 ) { // species left
		global.player_species -= 1;	
	} else if ( type == 0 && leftright == 1 ) { // species right
		global.player_species += 1;
	} else if ( type == 1 && leftright == 0 ) { // color left
		global.player_color -= 1;	
	} else if ( type == 1 && leftright == 1 ) { // color right
		global.player_color += 1;	
	}
	if ( global.player_species < 0 ) {
		global.player_species = 2;
	}
	if ( global.player_species > 2 ) {
		global.player_species = 0;	
	}
	if ( global.player_color < 0 ) {
		global.player_color = 1;
	}
	if ( global.player_color > 1 ) {
		global.player_color = 0;	
	}
	pressed = false;
}