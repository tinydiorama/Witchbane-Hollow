event_inherited();

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

draw_sprite_ext(s_quests_rightbg, 0, gui_width / 2, 50, 1, 1, 0, c_white, 1);

if ( quest != -1 && instance_exists(parent) && readydisplay) {

	/*if ( ! surface_exists(surf) ) {
	    surf = surface_create(175, scrollPaneHeight);
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		surface_reset_target();
	}*/

	//surface_set_target(surf);
	var start_draw = 65;
	draw_set_font(font_reg);
	draw_text_ext_transformed_color(gui_width / 2 - 20, start_draw, name, -1, width * 3 + 150, 1, 1, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);

	draw_text_ext_transformed_color(gui_width / 2 - 16, start_draw + 15, location, -1, width * 3 + 150, 0.5, 0.5, 0, text_color_passive, text_color_passive, text_color_passive, text_color_passive, 1);
	draw_text_transformed_color(gui_width / 2 - 20 + 170 - string_width(quest_giver) * 0.5, start_draw + 15, quest_giver, 0.5, 0.5, 0, text_color_passive, text_color_passive, text_color_passive, text_color_passive, 1);
	draw_line_color(gui_width / 2 - 20, start_draw + 30, gui_width / 2 - 20 + 170, start_draw + 30, c_black, c_black);
		
		
	var height = 0;
	start_draw = 105;
	var color = text_color_active;
	var count = 0;
	for ( var i = linestart; i < linestart + numLines; i++ ) {
		if ( i < ds_list_size(splitinfo) ) {
			var info = splitinfo[| i];
			
			if ( info == "<LB>") {
				color = c_gray;
				info = string_replace_all(info,"<LB>"," ");
			} 
			info = string_replace_all(info,"<QT>","'");
			draw_text_ext_transformed_color(gui_width / 2 - 20, start_draw + 10 * count, info, -1, 340, 0.5, 0.5, 0, color, color, color, color, 1);	
			count++;
		}
	}
	
	draw_set_font(font_reg);

	//surface_reset_target();

	//draw_surface_part(surf, 0, 0 + mouse_y_offset * scrollbarratio, 175, scrollPaneHeight, gui_width / 2 - 20, 65 );
	//draw_surface_part(surf, 0, (mouse_y_offset + (scrollbarheight / 2)) * scrollbarratio, 175, scrollPaneHeight, gui_width / 2 - 20, 65 );
		
	// draw the scrollbar
	if ( scrolling ) {
		draw_sprite(s_scrollbar, 0, scrollbarx + 1, scrollbary);
		draw_rectangle_color( scrollbarx, scrollbary + mouse_y_offset, scrollbarx + 2, scrollbary + mouse_y_offset + scrollbarheight, scrollbarcolor, scrollbarcolor, scrollbarcolor, scrollbarcolor, 0 );
		if ( device_mouse_x_to_gui(0) == clamp( device_mouse_x_to_gui(0), scrollbarx, scrollbarx + 2) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), scrollbary, scrollbary + scrollbarheight )  ) {
			if ( o_input.mouse_down ) {
				activelyscrolling = true;
				mouse_y_start = device_mouse_y_to_gui(0);
				mousespeedcounter = mousespeed;
			}
		}
		if ( o_input.mouse_up ) {
			activelyscrolling = false;
		}
		if ( o_input.wheel_up ) {
			mouse_y_offset = clamp(mouse_y_offset - scrollspeed, 0, scrollPaneHeight - scrollbarheight);
			linestart = clamp(linestart - 1, 0, ds_list_size(splitinfo) - numLines );
		}
		if ( o_input.wheel_down ) {
			mouse_y_offset = clamp(mouse_y_offset + scrollspeed, 0, scrollPaneHeight - scrollbarheight);
			linestart = clamp(linestart + 1, 0, ds_list_size(splitinfo) - numLines );
		}
	}
	if ( activelyscrolling ) {
		if ( mousespeedcounter == 0 ) {
			if ( mouse_y_start < device_mouse_y_to_gui(0)) { // scrolling down
				mouse_y_offset = clamp(mouse_y_offset + scrollspeed, 0, scrollPaneHeight - scrollbarheight);
				linestart = clamp(linestart + 1, 0, ds_list_size(splitinfo) - numLines );
			} else { //scrolling up
				mouse_y_offset = clamp(mouse_y_offset - scrollspeed, 0, scrollPaneHeight - scrollbarheight);
				linestart = clamp(linestart - 1, 0, ds_list_size(splitinfo) - numLines );
			}
			mousespeedcounter = mousespeed;
		} else {
			mousespeedcounter--;
		}
	}
		
}