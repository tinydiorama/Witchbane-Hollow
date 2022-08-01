event_inherited();

// Draw the textbox
draw_nine_slice(sprite, gui_width - width * scale - 30, tempy, gui_width - 30, tempy + height * scale + 2);

// Draw the message
draw_text_ext_transformed_color(gui_width - width * scale - 24, tempy + 5, message, -1, width, 0.5, 0.5, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);

if ( ! fadeOut ) {
	if ( tempy > finaly ) {
		tempy--;	
	} else if ( tempy == finaly && alarm[0] == -1 && ! fadeOut ) {
		show_debug_message("alarm");
		alarm[0] = timer;
	} 
} else {
    tempy++;
	if ( tempy >= gui_height ) {
		instance_destroy();
	}
}