if ( !enabled ) {
	exit;
}

if ( create_quest ) {	
	if ( instance_exists(parent) ) {
		// Find the item
		quest = ds_list_find_value(activeList, parent.index);
		if ( quest != undefined ) {
			text = format_text( quest[? "info"], 320, font_large);
			name = quest[? "name"];
			location = quest[? "location"];
			quest_giver = quest[? "quest_giver"];
			updates = quest[? "updates"];
			info = string_replace_all(updates[| 0],"<QT>","'");
		
			// height is the distance between the first thing and the last thing, plus the updates

			quest_states = activeListStates[| parent.index];
			numStates = array_length(quest_states);	
			totalHeight = 0;
			draw_set_font(font_reg);
			// Calculating heights for all the quest updates
			for ( var i = numStates - 1; i >= 0; i-- ) {
				if ( i == numStates - 1 ) {
					color = text_color_active;
				} else {
					color = c_gray;
				}
				var updateIndex = quest_states[i];
				split_string( updates[| updateIndex], 335 );
				ds_list_add(splitinfo, "<LB>");
				info = string_replace_all(updates[| updateIndex],"<QT>","'");
				//totalHeight = totalHeight + ( string_height_ext(info, -1, 340) / 2 ) + 10;
			}
			
			// Special code just for the grimoire quest
			if ( name == "Book of Specimens" ) {
				var grimoirestring = " " + string(o_game.totalgrimoire_collect) + " / " + string(o_game.totalgrimoires);
				ds_list_add(splitinfo, grimoirestring);
			}
	
			totalHeight = 10 * ds_list_size(splitinfo);
			if ( totalHeight > 140 ) {
				scrolling = true;
				scrollbarratio = totalHeight / scrollPaneHeight;
				scrollbarheight = scrollPaneHeight / scrollbarratio;

				scrollspeed = (scrollPaneHeight - scrollbarheight) / (ds_list_size(splitinfo) - numLines);
				linestoScroll = 1;

				scrollbarmaxdistance = scrollPaneHeight - scrollbarheight;
			}
			//surf = surface_create(175, scrollPaneHeight);
			/*surface_set_target(surf);
			draw_clear_alpha(c_black, 0);
			surface_reset_target();*/
		}
	}
	create_quest = false;
	readydisplay = true;
}

// Exit the options list
if ( o_input.pause_pressed ) {
	instance_destroy();
}