if ( index < array_length_1d(questions) ) {
	fulltext = questions[index];
}
if ( fastcount == fastness ) {
	if ( pos <= string_length(fulltext) ) {
	     displaytext = displaytext + string_char_at(fulltext, pos);
		 pos++;
	}
	fastcount = 0;
} else {
	fastcount++;
}
if ( o_input.down_pressed ) {
	selected++;
	if ( selected > 3 ) {
		selected = 0;
	}
}
if ( o_input.up_pressed ) {
	selected--;
	if ( selected < 0 ) {
		selected = 3;
	}
}
if ( o_input.action_one_pressed ) {
	if ( index == 0 ) { // Question 1
		if ( selected == 0 ) {
			chalice++;
		} else if ( selected == 1 ) {
			spear++;
		} else if ( selected == 2 ) {
			moon++;
		} else {
			lantern++;
		}
	} else if ( index == 1 ) { // Question 2
		if ( selected == 0 ) {
			spear++;
		} else if ( selected == 1 ) {
			moon++;
		} else if ( selected == 2 ) {
			lantern++;
		} else {
			compass++;
		}
	} else if ( index == 2 ) { // Question 3
		if ( selected == 0 ) {
			lantern++;
		} else if ( selected == 1 ) {
			compass++;
		} else if ( selected == 2 ) {
			chalice++;
		} else {
			spear++;
		}
	} else if ( index == 3 ) { // Question 4
		if ( selected == 0 ) {
			compass++;
		} else if ( selected == 1 ) {
			chalice++;
		} else if ( selected == 2 ) {
			spear++;
		} else {
			moon++;
		}
	} else if ( index == 4 ) { // Question 5
		if ( selected == 0 ) {
			moon++;
		} else if ( selected == 1 ) {
			lantern++;
		} else if ( selected == 2 ) {
			compass++;
		} else {
			chalice++;
		}
	}
	show_debug_message("Moon" + string(moon));
	show_debug_message("Spear" + string(spear));
	show_debug_message("Compass" + string(compass));
	show_debug_message("Chalice" + string(chalice));
	show_debug_message("Lantern" + string(lantern));
	selected = 0;
	index++;
	changeText = true;
	if ( index > array_length_1d(questions) ) {
		room_goto(r_world);
	}
}