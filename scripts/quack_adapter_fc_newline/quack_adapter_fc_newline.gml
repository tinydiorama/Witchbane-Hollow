/// @desc helper function make a new line in fc dialogue
/// @param artefacts the artefacts
function quack_adapter_fc_newline(argument0) {

	var artefacts = argument0;
	var index = artefacts[? "textindex"]

	// copy some values
	var last_speaker = quack_adapter_fc_get(artefacts, "speaker");
	var last_emotion = quack_adapter_fc_get(artefacts, "emotion");

	quack_adapter_fc_reset(artefacts, index+1);

	quack_adapter_fc_set(artefacts, "speaker", last_speaker);
	quack_adapter_fc_set(artefacts, "emotion", last_emotion);


}
