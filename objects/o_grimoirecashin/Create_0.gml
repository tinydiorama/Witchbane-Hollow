event_inherited(); //so it will inherit from par_speaker

image_speed = 0;

//-------DIALOGUE STUFF

myPortrait			= s_librarian_portrait;
myVoice				= snd_voice1;
myName				= "Librarian";
myPortraitTalk		= -1;

//quack_state = quack_state_new(global.dialogue, "Test", quack_adapter_fc);

itemList = o_game.items;
itemMenuState = false;
selectedItem = false;
itemSelecting = false;
finishState = false;

energy_dec = -1;

child = false;

grimoireSlot = 0;

grimoireCashIn = ds_list_create();
