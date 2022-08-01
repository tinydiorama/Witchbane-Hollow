/// @description Draw all the UI
// Gui defaults to the size of the VIEWport not the camera
if ( room == r_title ) {
	exit;	
}
var _gui_height = display_get_gui_height();
var _gui_width = display_get_gui_width(); 

if ( sprite_exists(paused_sprite) ) {
	draw_sprite_ext(paused_sprite, 0, 0, 0, paused_sprite_scale, paused_sprite_scale, 0, c_white, 1);
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

//var hud_right_edge = 2 + global.player_money * 15;
//draw_sprite_ext(s_hud, 0, 0, _gui_height, hud_right_edge, 1, 0, c_white, 1);
//draw_sprite(s_hud_edge, 0, hud_right_edge, _gui_height);

//draw_text(0, 0, global.player_energy);
var _gem_string = string(global.player_money);
if ( room != r_title && room != r_character_creation && room != r_character_name && room != r_horoscope_quiz ) {
	draw_sprite(s_hud_bg, 0, _gui_width - 5, 5);
	draw_nine_slice(s_energy_bg, _gui_width - 15, 7, _gui_width - 7, 7 + global.player_energy_max / 2 + 4);
	var hot_pink = make_color_rgb(255, 63, 110);
	if ( global.player_energy > 0 ) {
		draw_rectangle_color(_gui_width - 14, 9 + global.player_energy_max / 2 - global.player_energy / 2, _gui_width - 10, 9 + global.player_energy_max / 2, hot_pink, hot_pink, hot_pink, hot_pink, 0);
	}
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_set_font(font_large);
	draw_text_transformed(_gui_width - 25, 8, _gem_string, 0.35, 0.35, 0);
	draw_set_halign(fa_left);
}

// Room Transitions
// Handle Black fade/room transition
if ( doTransition ) {
	if ( room != spawn_room ) {
		black_alpha += 0.1;
		if ( black_alpha >= 1 ) {
			room_goto(spawn_room);
		}
	} else {
		black_alpha -= 0.1;
		if ( black_alpha < 0 ) {
			doTransition = false;	
		}
	}
	// Draw black fade
	draw_set_alpha(black_alpha);
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}