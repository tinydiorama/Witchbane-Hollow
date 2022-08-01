// Draw the option list

draw_set_font(font_large);
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

var spriteWidth = sprite_get_width(s_items_button);
var spriteSpacer = 3;

draw_sprite(s_menu_top_bg, 0, gui_width / 2, 0);

if ( index == 0 ) {
	draw_sprite(s_quest_button, 0, gui_width / 2 - spriteWidth * 2 - spriteSpacer * 2, 0);
} else {
	if ( device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), gui_width / 2 - spriteWidth * 2.5 - spriteSpacer * 2, gui_width / 2 - spriteWidth * 1.5 - spriteSpacer * 2) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), 0, 26) ) {
		draw_sprite(s_quest_button, 2, gui_width / 2 - spriteWidth * 2 - spriteSpacer * 2, 0);
		mouse_hover_index = 0;
		if ( mouse_check_button_pressed(mb_left) ) {
			clicked = true;
		}
	} else {
		draw_sprite(s_quest_button, 1, gui_width / 2 - spriteWidth * 2 - spriteSpacer * 2, 0);
	}
}
if ( index == 1 ) {
	draw_sprite(s_items_button, 0, gui_width / 2 - spriteWidth - spriteSpacer, 0);
} else {
	if ( device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), gui_width / 2 - spriteWidth * 1.5 - spriteSpacer, gui_width / 2 - spriteWidth / 2 - spriteSpacer) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), 0, 26) ) {
		draw_sprite(s_items_button, 2, gui_width / 2 - spriteWidth - spriteSpacer, 0);
		mouse_hover_index = 1;
		if ( mouse_check_button_pressed(mb_left) ) {
			clicked = true;
		}
	} else {
		draw_sprite(s_items_button, 1, gui_width / 2 - spriteWidth - spriteSpacer, 0);
	}
}
if ( index == 2 ) {
	draw_sprite(s_friends_button, 0, gui_width / 2, 0);
} else {
	if ( device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), gui_width / 2 - spriteWidth / 2, gui_width / 2 + spriteWidth / 2) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), 0, 26) ) {
		draw_sprite(s_friends_button, 2, gui_width / 2, 0);
		mouse_hover_index = 2;
		if ( mouse_check_button_pressed(mb_left) ) {
			clicked = true;
		}
	} else {
		draw_sprite(s_friends_button, 1, gui_width / 2, 0);
	}
}
if ( index == 3 ) {
	draw_sprite(s_grimoire_button, 0, gui_width / 2 + spriteWidth + spriteSpacer, 0);
} else {
	if ( device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), gui_width / 2 + spriteWidth / 2 + spriteSpacer, gui_width / 2 + spriteWidth * 1.5 + spriteSpacer) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), 0, 26) ) {
		draw_sprite(s_grimoire_button, 2, gui_width / 2 + spriteWidth + spriteSpacer, 0);
		mouse_hover_index = 3;
		if ( mouse_check_button_pressed(mb_left) ) {
			clicked = true;
		}
	} else {
		draw_sprite(s_grimoire_button, 1, gui_width / 2 + spriteWidth + spriteSpacer, 0);
	}
}
if ( index == 4 ) {
	draw_sprite(s_settings_button, 0, gui_width / 2 + spriteWidth * 2 + spriteSpacer * 2, 0);
} else {
	if ( device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0),  gui_width / 2 + spriteWidth * 1.5 + spriteSpacer * 2, gui_width / 2 + spriteWidth * 2.5 + spriteSpacer * 2) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), 0, 26) ) {
		draw_sprite(s_settings_button, 2, gui_width / 2 + spriteWidth * 2 + spriteSpacer * 2, 0);
		mouse_hover_index = 4;
		if ( mouse_check_button_pressed(mb_left) ) {
			clicked = true;
		}
	} else {
		draw_sprite(s_settings_button, 1, gui_width / 2 + spriteWidth * 2 + spriteSpacer * 2, 0);
	}
}	