event_inherited();

draw_set_font(font_reg);
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

draw_sprite_ext(s_friends_bg, 0, gui_width / 2, 50, 1, 1, 0, c_white, 1);

var friend = -1;
if ( instance_exists(parent) ) {
	var item_index = index;
	// Find the item
	friend = ds_list_find_value(o_game.friends, parent.index);
	var isDiscovered = o_game.friends_discovered[| parent.index];
	if ( friend != undefined ) {
		var text = friend[? "info"];
		var portrait = asset_get_index(friend[? "sprite"]);
		var name = friend[? "name"];
		var occupation = friend[? "occupation"];
		var horoscope = friend[? "horoscope"];
		var horoscope_icon = friend[? "horoscope_icon"];
		var location = friend[? "location"];
		if ( ! isDiscovered ) {
			name = "??????";
			occupation = "??????";
			location = "????";
			text = "????????????";
			portrait = s_default_portrait;
		}
		draw_sprite_ext(portrait, 0, x + 20, y+12, 0.75, 0.75, 0, c_white, 1);
		
		for ( var i = 0; i < 10; i++ ) {
			draw_sprite_ext(s_heart_empty, 0, gui_width / 2 + 20 + i * 12, y+130, 0.35, 0.35, 0, c_white, 0.7);
		}
		// Get friendship score
		var friendship_score = ds_map_find_value(o_game.friendship_scores, friend);
		var scaled_score = 0;
		if ( friendship_score == undefined ) { // we found the friend
			friendship_score = 0;
		} else {
			var scaled_score = floor(friendship_score / 10);
		}
		for ( var i = 0; i < scaled_score; i++ ) {
			draw_sprite_ext(s_heart_empty, 0, gui_width / 2 + 20 + i * 12, y+130, 0.35, 0.35, 0, make_color_rgb(202, 75, 69), 1);
		}
		
		//draw_nine_slice(s_textbox_teal, x, y + height + 4, x + width + 70, y + height + 15 + string_height_ext(text, -1, width * 2 + 150));
		draw_text_ext_transformed_color(gui_width / 2 + 70, y + 10, name, -1, width * 3 + 150, 0.7, 0.7, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);
		draw_text_ext_transformed_color(gui_width / 2 + 70, y + 25, occupation, -1, width * 3 + 150, 0.5, 0.5, 0, text_color_passive, text_color_passive, text_color_passive, text_color_passive, 1);
		draw_text_ext_transformed_color(gui_width / 2 + 70, y + 35, location, -1, width * 3 + 150, 0.5, 0.5, 0, text_color_passive, text_color_passive, text_color_passive, text_color_passive, 1);
		
		if ( isDiscovered ) {
			draw_sprite_ext(get_horoscope_icon("small", horoscope_icon), 0, gui_width / 2 + 70, y + 47, 0.75, 0.75, 0, c_white, 1);
			draw_text_ext_transformed_color(gui_width / 2 + 80, y + 45, horoscope, -1, 200, 0.5, 0.5, 0, text_color_passive, text_color_passive, text_color_passive, text_color_passive, 1);
		}

		draw_text_ext_transformed_color(gui_width / 2 + 20, y + 65, text, -1, 300, 0.4, 0.4, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);
	}
}