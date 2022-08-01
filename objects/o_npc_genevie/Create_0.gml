event_inherited(); //so it will inherit from par_speaker

image_speed = 0;

//-------DIALOGUE STUFF

myPortrait			= s_genevie_portrait;
myVoice				= snd_voice1;
myName				= "Genevie";

myPortraitTalk		= s_genevie_mouth;
myPortraitTalk_x	= -8;
myPortraitTalk_y	= -99;
myPortraitIdle		= -1;

//quack_state = quack_state_new(global.dialogue, "Test", quack_adapter_fc);

questList = o_game.quests;
dialogpick = round(random_range(1, 5));

questindex = ds_list_find_index(o_game.quests, o_data.quests[? "intothedeepwoods"]);
quest1complete = ds_list_find_index(o_game.quests_done, o_data.quests[? "intothedeepwoods"]);
quest2 = ds_list_find_index(o_game.quests, o_data.quests[? "aplaceofteaching"]);
quest2complete = ds_list_find_index(o_game.quests_done, o_data.quests[? "aplaceofteaching"]);

if ( global.mainqueststate == 0 ) {
	 
}