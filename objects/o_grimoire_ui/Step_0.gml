if ( !enabled ) {
	exit;
}

if ( cursorCategory == 0 ) {
	if ( o_input.down_pressed || o_input.up_pressed ) {
		selectedCategory += o_input.down_pressed - o_input.up_pressed;
		selectedCategory = clamp(selectedCategory, 0, array_length_1d(categories) - 1);
		if ( selectedCategory == 0 ) {
			category_data = o_game.allumbrae;
			known_data = o_game.umbrae;
		} else if ( selectedCategory == 1 ) {
			category_data = o_game.allcurios;
			known_data = o_game.curios;
		} else if ( selectedCategory == 2 ) {
			category_data = o_game.allgenesia;
			known_data = o_game.genesia;
		} else if ( selectedCategory == 3 ) {
			category_data = o_game.allimpresiums;
			known_data = o_game.impresiums;
		} else if ( selectedCategory == 4 ) {
			category_data = o_game.allferrotypes;
			known_data = o_game.ferrotypes;
		} else {
			category_data = o_game.allaconitums;
			known_data = o_game.aconitums;
		}
		show_debug_message(selectedCategory);
		option_grid = create_items_option_grid(numRows, numCols, category_data);
		actualRows = min(ceil(ds_list_size(category_data) / numCols), numRows); 
		xindex = 0;
		yindex = 0;
		yDisplayIndex = 0;
		minRowtoShow = 0;
		toggleItemDesc = true;
		index = 0;
		displayItem = ds_list_find_value(category_data, index);
	}
	if ( o_input.right_pressed || o_input.action_one_pressed ) {
		cursorCategory = 1;
	}
} else {
	if ( o_input.down_pressed ) {
		if ( yindex + 1 < array_height_2d(option_grid) && option_grid[yindex + 1, xindex] != -1 ) {
			yindex++;
			yDisplayIndex++;
			toggleItemDesc = true;
		}
	}
	if ( o_input.up_pressed ) {
		yindex--;
		yDisplayIndex--;
		toggleItemDesc = true;
	}
	if ( o_input.right_pressed ) {
		if ( xindex + 1 < numCols && option_grid[yindex, xindex + 1] != -1 ) {
			xindex++;
			toggleItemDesc = true;
		}
	}
	if ( o_input.left_pressed) {
		if ( xindex == 0 ) {
			cursorCategory = 0;
			exit;
		}
		xindex--;
		toggleItemDesc = true;
	}

	if ( toggleItemDesc = true ) {
		var lowerminrow = false;
		if ( yDisplayIndex < 0 ) {
			lowerminrow = true;
		}
		yindex = clamp(yindex, 0, array_height_2d(option_grid) - 1);
		yDisplayIndex = clamp(yDisplayIndex, 0, actualRows - 1);
		xindex = clamp(xindex, 0, numCols - 1);
	
		if ( lowerminrow ) {
			minRowtoShow = max(0, minRowtoShow - 1);
		} else if ( yindex > yDisplayIndex ) {
			minRowtoShow = yindex - yDisplayIndex;
		}
	
		index = option_grid[yindex, xindex];
		displayItem = ds_list_find_value(category_data, index);
	}

}
// Exit the options list
if ( o_input.pause_pressed ) {
	instance_destroy();
}
