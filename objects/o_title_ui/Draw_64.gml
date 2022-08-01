var _gui_height = display_get_gui_height();
var _gui_width = display_get_gui_width();

for ( var i = 0; i < option_length; i++ ) {
	
	if ( i == 0 && ! v_save_exists()) {
		if ( i == index ) {
			index = 1;
		}
		draw_set_color(menu_dark_color);
		draw_text_transformed(120 + i * 70, _gui_height - 30, option[i], 0.5, 0.5, 0);
	} else {
		if ( i == index ) {
			draw_set_color(menu_color);
		} else {
			draw_set_color(menu_dark_color);	
		}
		draw_text_transformed(120 + i * 70, _gui_height - 30, option[i], 0.5, 0.5, 0);
	}
}
draw_set_color(c_white);