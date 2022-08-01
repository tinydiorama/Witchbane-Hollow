event_inherited();

// Draw the option list
for ( var i = index - 2; i <= index + 2; i++ ) {
	if ( i >= 0 && i < ds_list_size(options) ) {
		var option = options[| i];
		var color = text_color_passive;
		if ( i == index ) {
			color = text_color_active;	
		}
		var buffer = 1;
		if ( i != index - 2 ) {
			buffer = 15 * (i+2-index);
		} 
		draw_text_transformed_color(x+16, y+buffer, option[? "text"], 0.5, 0.5, 0, color, color, color, color, 1);
	}
}

// Draw the caret for the option selection
draw_sprite(s_ui_caret, 0, x+6, y+12+10*2);