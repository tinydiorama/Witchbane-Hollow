if ( fastcount == fastness ) {
	if ( pos <= string_length(fulltext) ) {
	     displaytext = displaytext + string_char_at(fulltext, pos);
		 pos++;
	}
	fastcount = 0;
} else {
	fastcount++;
}
if ( selectedx == 0 && selectedy == 0 ) {
	left_species.selected = true;
	right_species.selected = false;
	left_color.selected = false;
	right_color.selected = false;
	done_button.selected = false;
} else if ( selectedx == 1 && selectedy == 0 ) {
	left_species.selected = false;
	right_species.selected = true;
	left_color.selected = false;
	right_color.selected = false;
	done_button.selected = false;
} else if ( selectedx == 0 && selectedy == 1 ) {
	left_species.selected = false;
	right_species.selected = false;
	left_color.selected = true;
	right_color.selected = false;
	done_button.selected = false;
} else if ( selectedx == 1 && selectedy == 1 ) {
	left_species.selected = false;
	right_species.selected = false;
	left_color.selected = false;
	right_color.selected = true;
	done_button.selected = false;
} else { // done button
	done_button.selected = true;
	left_species.selected = false;
	right_species.selected = false;
	left_color.selected = false;
	right_color.selected = false;
}
if ( o_input.left_pressed ) {
	selectedx--;
	if ( selectedx < 0 ) {
		selectedx = 1;
	}
}
if ( o_input.right_pressed ) {
	selectedx++;
	if ( selectedx > 1 ) {
		selectedx = 0;
	}
}
if ( o_input.down_pressed ) {
	selectedy++;
	if ( selectedy > 2 ) {
		selectedy = 0;
	}
}
if ( o_input.up_pressed ) {
	selectedy--;
	if ( selectedy < 0 ) {
		selectedy = 2;
	}
}