// Draw the option list
var restricted_max = min(max_shown, ds_list_size(options));
var min_draw = 0;
var max_draw = restricted_max - 1;

draw_set_font(font_large);

draw_sprite_ext(s_grimoire_bg, 0, gui_width / 2, 70, 1, 1, 0, c_white, 1);


for ( var i = 0; i < array_length_1d(categories); i++ ) {
	if ( selectedCategory == i || hoverCategory == i ) {
		if ( cursorCategory == 0 ) {
			var highlight = make_colour_rgb(200, 213, 217);
			draw_rectangle_color(menux - 16 - sprite_get_width(sprites[selectedCategory]) * 1.5, 79 + 25 * i, menux - 13, 78 + 25 * i + 2 + sprite_get_height(sprites[selectedCategory]) * 1.5, highlight, highlight, highlight, highlight, 0);
		}
		draw_sprite_ext(sprites[i], 0, menux - 15, 80 + 25 * i, 1.5, 1.5, 0, c_white, 1);
	} else {
		draw_sprite_ext(sprites[i], 0, menux, 80 + 25 * i, 1.5, 1.5, 0, c_white, 1);
	}
}

draw_sprite_ext(s_grimoire_toppage, 0, gui_width / 2, 70, 1, 1, 0, c_white, 1);

// Contents
draw_sprite_ext(asset_get_index( "s_grimoire_banner_" + string(selectedCategory) ), 0, gui_width / 2, 50, 1, 1, 0, c_white, 1);
draw_set_halign(fa_center);
draw_text_transformed_color(gui_width / 2, 55, categories[selectedCategory], 0.4, 0.4, 0, c_black, c_black, c_black, c_black, 1);
draw_set_halign(fa_left);

// Grid
var knownIndex = 0;
for ( var i = 0 + minRowtoShow; i < actualRows + minRowtoShow; i++ ) {
	for ( var j = 0; j < numCols; j++ ) {
		if ( option_grid[i, j] != -1 ) {
			var displayi = i - minRowtoShow;
			var item_slot = option_grid[i, j];
			var item = category_data[| item_slot];
			var item_count = category_data[| item_slot];
			draw_sprite(s_inventory_box, 0, gridx + j * 35, gridy + displayi * 35);
			var item_icon = item[? "sprite"];
			var item_asset = asset_get_index(item_icon);
			var scale = 1.5;
			var discoveredColor = c_black;
			var discoveredAlpha = 0.2;
			if ( known_data[| knownIndex] ) {
				discoveredColor = c_white;
				discoveredAlpha = 1;
			}
			draw_sprite_ext(asset_get_index(item_icon), 
						0, 
						gridx + j * 35 + (item_width - (sprite_get_width(item_asset)) * scale) / 2 + (sprite_get_xoffset(item_asset) * scale),
						gridy + displayi * 35 + (item_width - (sprite_get_height(item_asset)) * scale) / 2 + (sprite_get_yoffset(item_asset) * scale), scale, scale, 0, discoveredColor, discoveredAlpha);
			//draw_sprite(asset_get_index(item[? "icon"]), 0, x + j * 35, y + displayi * 35);
		}
		knownIndex++;
	}
}
if ( cursorCategory == 1 ) {
	draw_sprite(s_inventory_selected, 0, gridx + xindex * 35, gridy + yDisplayIndex * 35);
}

// Display Info
var name = displayItem[? "name"];
var itemlocale = displayItem[? "location"];
var horoscope = displayItem[? "horoscope"];
var info = displayItem[? "info"];
if ( ! known_data[| index] ) {
	name = "??????";
	itemlocale = "????";
	horoscope = "???";
	info = "???????????????????";
}
draw_text_ext_transformed_color(descx, descy, name, -1, width * 3, 0.4, 0.4, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);
draw_text_ext_transformed_color(descx, descy + 10, itemlocale, -1, width * 3, 0.3, 0.3, 0, text_color_active,text_color_active,text_color_active,text_color_active, 1);

if ( known_data[| index] ) {
	var horowidth = string_width(horoscope) * 0.3;
	var horoscope_icon = displayItem[? "horoscope_icon"];
	draw_sprite_ext(get_horoscope_icon("small", horoscope_icon), 0, descx + width - horowidth - 9, descy + 10, 0.75, 0.75, 0, c_white, 1);
}
draw_set_halign(fa_right);
draw_text_ext_transformed_color(descx + width, descy + 10, horoscope, -1, width * 3, 0.3, 0.3, 0, text_color_active,text_color_active,text_color_active,text_color_active, 1);
draw_set_halign(fa_left);

draw_line_color(descx, descy + 20, descx + width, descy + 20, c_black, c_black);
draw_text_ext_transformed_color(descx, descy + 25, info, -1, width * 3 - 10, 0.35, 0.35, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);
