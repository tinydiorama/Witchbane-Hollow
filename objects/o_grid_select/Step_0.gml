if ( createGrid ) {
	if ( ds_list_size( listToDisplay ) == 0 ) {
		option_grid = 0;
		actualRows = 0;
		index = 0;
		displayItem = 0;
	} else {
		option_grid = create_items_option_grid(numRows, numCols, listToDisplay);
		actualRows = min(ceil(ds_list_size(listToDisplay) / numCols), numRows); // how many rows are we actually displaying

		index = option_grid[yindex, xindex];
		// Find the item
		displayItem = ds_list_find_value(listToDisplay, index);
	}
	createGrid = false;
	gridCreated = true;
} else if ( option_grid != 0 && gridCreated ) {
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
		displayItem = ds_list_find_value(listToDisplay, index);
	}
	
	if ( o_input.action_one_pressed ) {
		callingParent.selectedItem = ds_list_find_value(listToDisplay, index);
		callingParent.itemSelecting = false;
		callingParent.finishState = true;
		instance_destroy();
	}

	//index = clamp(index, 0, ds_list_size(option_grid) - 1);
}
	// Exit the options list
	if ( o_input.pause_pressed ) {
		instance_destroy();
	}