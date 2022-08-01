// Draw the option list
draw_sprite_ext(s_pickitem_bg, 0, gui_width / 2, 55, 1, 1, 0, c_white, 1);
if ( ! gridCreated ) {
	draw_set_font(font_reg);
	draw_set_halign(fa_center);
	draw_text_ext_transformed(x + 80, y + 50, "You don't have any items yet!", -1, 200, 0.5, 0.5, 0);
	draw_set_halign(fa_left);

} else {

	for ( var i = 0 + minRowtoShow; i < actualRows + minRowtoShow; i++ ) {
		for ( var j = 0; j < numCols; j++ ) {
			if ( option_grid[i, j] != -1 ) {
				var displayi = i - minRowtoShow;
				var item_slot = option_grid[i, j];
				var item = listToDisplay[| item_slot];
				draw_sprite(s_inventory_box, 0, x + j * 35, y + displayi * 35);
				var item_icon = item[? "icon"];
				var item_asset = asset_get_index(item_icon);
				var scale = 1.5;
				draw_sprite_ext(asset_get_index(item_icon), 
							0, 
							x + j * 35 + (item_width - (sprite_get_width(item_asset)) * scale) / 2 + (sprite_get_xoffset(item_asset) * scale),
							y + displayi * 35 + (item_width - (sprite_get_height(item_asset)) * scale) / 2 + (sprite_get_yoffset(item_asset) * scale), scale, scale, 0, c_white, 1);
				//draw_sprite(asset_get_index(item[? "icon"]), 0, x + j * 35, y + displayi * 35);
			}
		}
	}
	draw_sprite(s_inventory_selected, 0, x + xindex * 35, y + yDisplayIndex * 35);

	var name = displayItem[? "name"];
	draw_text_ext_transformed_color(gui_width / 2 + 65, y + 5, name, -1, width * 3 + 50, 0.4, 0.4, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);
	draw_line_color(gui_width / 2 + 65, y + 20, gui_width / 2 + 90 + width, y + 20, c_black, c_black);
	draw_text_ext_transformed_color(gui_width / 2 + 65, y + 25, displayItem[? "info"], -1, width * 3 + 50, 0.35, 0.35, 0, text_color_active, text_color_active, text_color_active, text_color_active, 1);
}
