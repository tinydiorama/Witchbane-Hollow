/// @desc helper function to set a the current index of an array inside a artefacts to a value
/// @param artefacts the artefacts
/// @param key name of array to set
/// @param value
function quack_adapter_fc_set(argument0, argument1, argument2) {

	var artefacts = argument0;
	var key = argument1;
	var value = argument2;

	var index = artefacts[? "textindex"] // index of array in FC's dialog system
	var artefact = artefacts[? key]
	artefact[@ index] = value;


}
