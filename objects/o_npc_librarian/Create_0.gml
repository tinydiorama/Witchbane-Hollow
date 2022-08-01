event_inherited(); //so it will inherit from par_speaker

image_speed = 0;

//-------DIALOGUE STUFF

myPortrait			= s_librarian_portrait;
myVoice				= snd_voice1;
myName				= "Librarian";
myPortraitTalk		= -1;
detection_radius_x = 20;
detection_radius_y = 40;
show_active_offset = 50;
show_active_yoffset = 5;

//quack_state = quack_state_new(global.dialogue, "Test", quack_adapter_fc);

questList = o_game.quests;