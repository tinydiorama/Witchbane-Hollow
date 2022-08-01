event_inherited(); //so it will inherit from par_speaker


//-------DIALOGUE STUFF

myPortrait			= spr_testchar;
myVoice				= snd_voice1;
myName				= "Blue";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;

quack_state = quack_state_new(global.dialogue, "CQ-G-1A", quack_adapter_fc);
show_active_emoji = false;
show_active_offset = 25;
show_active_yoffset = -1;
active_index = 0;
counter = 0;
image_speed = 1;

energy_dec = -4;

//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue