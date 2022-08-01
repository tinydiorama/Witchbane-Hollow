event_inherited();
width = 75;
height = 220;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

item_width = 28;

x = 100;
y = 80;
toggleItemDesc = true;

index = 0;

yindex = 0;
yDisplayIndex = 0;
xindex = 0;

minRowtoShow = 0;

sprite = s_textbox_teal;
text_color_active = c_black;
text_color_passive = make_color_rgb(143, 86, 191);

numRows = 5;
numCols = 5;

if ( ds_list_size( o_game.items ) == 0 ) {
	option_grid = 0;
	actualRows = 0;
	index = 0;
	displayItem = 0;
} else {
	option_grid = create_items_option_grid(numRows, numCols, o_game.items);
	actualRows = min(ceil(ds_list_size(o_game.items) / numCols), numRows); // how many rows are we actually displaying

	index = option_grid[yindex, xindex];
	// Find the item
	displayItem = ds_list_find_value(o_game.items, index);
}