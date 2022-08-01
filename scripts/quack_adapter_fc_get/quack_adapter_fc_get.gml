/// @desc helper function to get the value of an array inside the artefacts at the current index
/// @param artefacts the artefacts
/// @param key name of array to get
function quack_adapter_fc_get(argument0, argument1) {

	var artefacts = argument0;
	var key = argument1;

	var index = artefacts[? "textindex"] // index of array in FC's dialog system
	var artefact = artefacts[? key]
	return artefact[@ index];


}
