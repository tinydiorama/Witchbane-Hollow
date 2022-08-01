/// @desc resets dialog options to default values for a given index, used for init and newlines
/// @param artefacts the artefact map
/// @param index which index to reset
function quack_adapter_fc_reset(argument0, argument1) {

	var artefacts = argument0;
	var index = argument1;

	// initialize new entries for FC dialog system
	// all of these artefacts gain a zero (or other default)
	var names = ["text", "speaker", "effects", "speed" , "types", "nextline", "scripts", "textcol", "emotion", "emote"];
	for(var i=0; i<array_length_1d(names); i++) {
		var name = names[i];
		if (not is_array(artefacts[? name])) {
			artefacts[? name] = [];
		}
		var artefact = artefacts[? name]
	
		switch(name) {
		case "text":
			artefact[@ index] = "";
			break;
		case "speaker":
			// speaker defaults to calling instance
			artefact[@ index] = id;
			break
		default:
			artefact[@ index] = 0;
		}
	}

	artefacts[? "textindex"] = index;


}
