///@function quack_adapter_fc(...)
function quack_adapter_fc() {

	/*
		An adapter for FC's dialogue system
	*/

	if (argument_count > 1) {
		var state = argument[1];
		var fc_artefacts = state[? "fc_artefacts"];
	}


	switch(argument[0]) {
		case QUACK.can_create:
			if (instance_exists(obj_textbox)) {
				return false;
			}
			return true;

		case QUACK.create:
			show_debug_message("ADAPTER: create")

			// make sure "Text" layer exists
			if (not layer_exists("Text")) {
				// find heighest layer in room
				var layers = layer_get_all();
				var closest = undefined;
				for (var i=0; i<array_length_1d(layers); i++) {
					var this_depth = layer_get_depth(layers[i]);
					if (is_undefined(closest) or closest > this_depth) closest = this_depth;
				}
				layer_create(closest-100, "Text");
			}

			// artefacts
			if (not is_undefined(fc_artefacts)) {
				ds_map_destroy(fc_artefacts);
			}

			var fc_artefacts = ds_map_create();
			quack_adapter_fc_reset(fc_artefacts, 0);

			state[? "fc_artefacts"] = fc_artefacts;
			state[? "active"] = true;
			state[? "puppetmaster"] = undefined;

			break;

		case QUACK.say:
			var say = string(argument[2])
			show_debug_message("ADAPTER: say " + say);

			// make sure current line is text, otherwise add a new line
			if (quack_adapter_fc_get(fc_artefacts, "types") != 0) {
				quack_adapter_fc_newline(fc_artefacts);
				quack_adapter_fc_set(fc_artefacts, "types", 0)
			}

			// split into newlines
			do {
				var pos = string_pos("\n", say);
				if (pos) {
					var first = string_copy(say, 1, pos-1);
					quack_adapter_fc_append(fc_artefacts, "text", first);
					quack_adapter_fc_newline(fc_artefacts);
					say = string_delete(say, 1, pos);
				}
			} until (pos == 0);
			quack_adapter_fc_append(fc_artefacts, "text", say);
			break;

		case QUACK.newpage:
			quack_adapter_fc_newline(fc_artefacts);
			break;

		case QUACK.option:
			var label = string(argument[2])
			var passage = string(argument[3])
			show_debug_message("ADAPTER: option " + label + " => " + passage);

			// make sure current line is options, otherwise make it so
			if (quack_adapter_fc_get(fc_artefacts, "types") != 1) {

				// unless we're an empty line a newline is needed
				if (quack_adapter_fc_get(fc_artefacts, "text") != "") {
					quack_adapter_fc_newline(fc_artefacts);
				}

				quack_adapter_fc_set(fc_artefacts, "types", 1)

				quack_adapter_fc_set(fc_artefacts, "text", []); // turn these into arrays
				quack_adapter_fc_set(fc_artefacts, "nextline", 0);
				quack_adapter_fc_set(fc_artefacts, "scripts", []);
			}

			quack_adapter_fc_append(fc_artefacts, "text", label);
			quack_adapter_fc_append(fc_artefacts, "scripts", [quack_state_set_passage, state, passage]);

			break;

		case QUACK.pragma:
			var key = argument[2];
			var value = argument[3];
			show_debug_message("ADAPTER: pragma " + string(key) + " => " + string(value));
			switch(key) {
				case "speaker":
					// change the speaker of the passage
					// unless we're an empty line a newline is needed
					if (quack_adapter_fc_get(fc_artefacts, "text") != "" and quack_adapter_fc_get(fc_artefacts, "speaker") != value) {
						quack_adapter_fc_newline(fc_artefacts);
					}

					quack_adapter_fc_set(fc_artefacts, "speaker", value)

					break;
				case "emotion":
					// change the emotion of the passage
					// unless we're an empty line a newline is needed
					quack_adapter_fc_set(fc_artefacts, "emotion", value)

					break;
				case "speed":
					// change the speed
					if (quack_adapter_fc_get(fc_artefacts, "types") == 0) {
						var len = string_length(quack_adapter_fc_get(fc_artefacts, "text"));

						if (not is_array(quack_adapter_fc_get(fc_artefacts, "speed"))) { // make sure speed is set
							quack_adapter_fc_set(fc_artefacts, "speed", []);

							if (len > 0) { // make sure first part of text is at normal speed
								quack_adapter_fc_append(fc_artefacts, "speed", 1)
								quack_adapter_fc_append(fc_artefacts, "speed", 1)
							}
						}

						quack_adapter_fc_append(fc_artefacts, "speed", len+1)
						quack_adapter_fc_append(fc_artefacts, "speed", value)
					}
					break;
				case "color":
				case "colour":
					// change the color
					if (quack_adapter_fc_get(fc_artefacts, "types") == 0) {
						var len = string_length(quack_adapter_fc_get(fc_artefacts, "text"));

						if (not is_array(quack_adapter_fc_get(fc_artefacts, "textcol"))) { // make sure speed is set
							quack_adapter_fc_set(fc_artefacts, "textcol", []);
						}

						quack_adapter_fc_append(fc_artefacts, "textcol", len+1)
						quack_adapter_fc_append(fc_artefacts, "textcol", value)
					}
					break;
				case "effects":
					// change the effect
					if (quack_adapter_fc_get(fc_artefacts, "types") == 0) {
						var len = string_length(quack_adapter_fc_get(fc_artefacts, "text"));

						if (not is_array(quack_adapter_fc_get(fc_artefacts, "effects"))) { // make sure speed is set
							quack_adapter_fc_set(fc_artefacts, "effects", []);
						}

						quack_adapter_fc_append(fc_artefacts, "effects", len+1)
						quack_adapter_fc_append(fc_artefacts, "effects", value)
					}
					break;
				case "active":
				case "preprocessor":
				case "puppetmaster":
					state[? key] = value;
					break;
				default:
					show_debug_message("ADAPTER: pragma " + string(key) + " not understood, ignoring");
			}
			break;

		case QUACK.after:
			show_debug_message("ADAPTER: after")

			// register preprocessor script
			var preprocessor = undefined
			if (not is_undefined(state[? "preprocessor"]) and script_exists(state[? "preprocessor"])) {
	          preprocessor = script_execute(state[? "preprocessor"], state);
			}

			var inst = create_dialogue(fc_artefacts[? "text"],
						    fc_artefacts[? "speaker"],
						    fc_artefacts[? "effects"],
						    fc_artefacts[? "speed"],
						    fc_artefacts[? "types"],
						    fc_artefacts[? "nextline"],
						    fc_artefacts[? "scripts"],
						    fc_artefacts[? "textcol"],
						    fc_artefacts[? "emotion"],
						    fc_artefacts[? "emote"]);

			// register puppetmaster script
			if (not is_undefined(state[? "puppetmaster"]) and script_exists(state[? "puppetmaster"])) {
	          script_execute(state[? "puppetmaster"], inst, preprocessor);
			}

			ds_map_destroy(fc_artefacts);
			state[? "fc_artefacts"] = undefined;

			break;

		case QUACK.is_atomic:
			return true;

	}


}
