/// @desc helper function to append a value to the current index of an array inside an artefact to a value
/// @param artefacts the dialogue artefacts
/// @param key name of array to set
/// @param value
function quack_adapter_fc_append(argument0, argument1, argument2) {

	var artefacts = argument0;
	var key = argument1;
	var value = argument2;

	var index = artefacts[? "textindex"] // index of array in FC's dialog system
	var artefact = artefacts[? key]

	if (is_array(artefact[@ index])) {
		var arr = artefact[@ index];
		arr[@ array_length_1d(arr)] = value;
	}
	else {
		artefact[@ index] += value;
	}


}
