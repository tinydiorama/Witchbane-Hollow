event_inherited();
width = 110;
height = 220;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

sprite = s_textbox_green;
text_color_active = c_black;
text_color_passive = make_color_rgb(143, 86, 191);

menux = display_get_gui_width() / 2 - 100;

cursorCategory = 0;
selectedCategory = 0;
hoverCategory = -1;
item_width = 28;

categories = ["Umbrae", "Curios", "Genesia", "Impresiums", "Ferrotypes", "Aconitums"];
sprites = [s_umbrae, s_curios, s_genesia, s_impresiums, s_ferrotypes, s_aconitums];
category_data = o_game.allumbrae;
known_data = o_game.umbrae;

quest_height = 25;
max_shown = 4;

/* Grimoire grid */
index = 0;

yindex = 0;
yDisplayIndex = 0;
xindex = 0;

minRowtoShow = 0;
toggleItemDesc = true;

numRows = 4;
numCols = 3;

gridx = menux - 10;
gridy = 85;

descx = gui_width / 2 + 10;
descy = 85;

option_grid = create_items_option_grid(numRows, numCols, category_data);
actualRows = min(ceil(ds_list_size(category_data) / numCols), numRows); // how many rows are we actually displaying

index = option_grid[yindex, xindex];
// Find the item
displayItem = ds_list_find_value(category_data, index);