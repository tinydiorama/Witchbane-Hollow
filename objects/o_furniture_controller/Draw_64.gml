if ( furnitureMode ) {
	draw_nine_slice(s_textbox_white, 0, 0, 100, display_get_height() );
	// Draw the option list
	var restricted_max = min(max_shown, ds_list_size(options));
	var min_draw = 0;
	var max_draw = restricted_max - 1;

	if ( view_index == 0 ) {
		min_draw = index;
		max_draw = index + restricted_max - 1;
	} else if ( view_index == restricted_max - 1 ) {
		// show index through index - view_index
		min_draw = index - restricted_max + 1;
		max_draw = index;
	} else {
		// show index - view_index through index - view_index + max_shown
		min_draw = index - view_index;
		max_draw = index - view_index + restricted_max - 1;
	}

	var clamp_index = 0;
	var selected_clamp_index = 0;
	for ( var i = min_draw; i <= max_draw; i++ ) {
		if ( i >= 0 && i < ds_list_size(options) ) {
			var option = options[| i];
			var color = text_color_passive;
			if ( i == index ) {
				color = text_color_active;
				selected_clamp_index = clamp_index;
			}
			draw_set_font(font_reg);
			draw_sprite(asset_get_index(option[? "sprite"]), 
						0, 
						(item_width - sprite_get_width(asset_get_index(option[? "sprite"]))) / 2 + sprite_get_xoffset(asset_get_index(option[? "sprite"])),
						((item_height * (clamp_index + 1)) - sprite_get_height(asset_get_index(option[? "sprite"]))) / 2 + sprite_get_yoffset(asset_get_index(option[? "sprite"]) ));
			draw_text_ext_transformed_color((item_width / 2 - string_width(option[? "name"]) / 2),
						item_height * (clamp_index + 1) - string_height(option[? "name"]), option[? "name"], 3, 400, 1, 1, 0, color, color, color, color, 1);
		}
		clamp_index++;
	}

	// Draw the caret for the option selection
	draw_sprite_ext(s_ui_caret, 0, x+6, y + item_height * selected_clamp_index + 7 * selected_clamp_index + 3, 1, 1, 0, c_black, 1);	
} else {
	draw_text(0, 0, "Press B to place furniture");	
}