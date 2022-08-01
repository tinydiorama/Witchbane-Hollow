// Draw the option list
var restricted_max = min(max_shown, ds_list_size(options));
var min_draw = 0;
var max_draw = restricted_max - 1;

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

draw_set_font(font_reg);

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

if ( min_draw > 0 ) {
	draw_sprite(s_carat_pink_up, 0, gui_width / 2 - 70, 45);	
}
if ( max_draw < ds_list_size(options) - 1 ) {
	draw_sprite(s_carat_pink_down, 0, gui_width / 2 - 70, 200);	
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
		
		if ( device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), x + 16, x + 100) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0),  70 + quest_height * clamp_index,  70 + quest_height * clamp_index + quest_height) ) {
			mouse_hover_index = i;
			draw_text_ext_transformed_color(x+16, 70 + quest_height * clamp_index, option[? "text"], 3, 400, 0.5, 0.5, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);

			if ( mouse_check_button_pressed(mb_left) ) {
				index = i;
				view_index = i;
				
				selected_clamp_index = mouse_hover_index;
				var option = options[| mouse_hover_index];
				script_execute(option[? "script"]);
			}
		} else {
			//draw_nine_slice(sprite, x, y + 30 * i, x + width, y + 30 * i+1);
			draw_text_ext_transformed_color(x+16, 70 + quest_height * clamp_index, option[? "text"], 3, 400, 0.5, 0.5, 0, color, color, color, color, 1);
		}
	}
	clamp_index++;
}

// Draw the caret for the option selection
draw_sprite(s_ui_caret, 0, x + 5,70 + quest_height * selected_clamp_index);	