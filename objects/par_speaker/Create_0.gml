event_inherited();

//-----------Customise (FOR USER)
playerobject = o_player;
interact_key = o_input.action_one_pressed;
detection_radius = 9;
detection_radius_x = 9;
detection_radius_y = 9;

myVoice			= snd_voice1;
myPortrait		= -1;
myFont			= font_reg;
myName			= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;
myPortraitIdle_x	= -1;
myPortraitIdle_y	= -1;

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();