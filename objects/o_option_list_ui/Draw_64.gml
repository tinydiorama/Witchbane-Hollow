event_inherited();

draw_nine_slice(sprite, x, y, x + width, y + height);

// Draw the option list
var restricted_max = min(max_shown, ds_list_size(options));
var min_draw = 0;
var max_draw = restricted_max - 1;

draw_set_font(font_large);

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
		//draw_nine_slice(sprite, x, y + 30 * i, x + width, y + 30 * i+1);

		draw_text_transformed_color(x+16, y+5+13*clamp_index, option[? "text"], 0.5, 0.5, 0, color, color, color, color, 1);
	}
	clamp_index++;
}

// Draw the caret for the option selection
draw_sprite(s_ui_caret, 0, x+6, y+7+13*selected_clamp_index);	