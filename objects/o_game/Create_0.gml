global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);
instance_create_layer(0, 0, "Instances", o_data);

//audio_play_sound(a_music, 10, true);
draw_set_font(font_large);

// player stuff
global.player_start_position = i_game_start;
global.player_money = 0;
global.player_name = "Tir";
global.horoscope = "spear";

randomize();
global.seed = random_get_seed();

picked_items = ds_map_create();
plant_status = ds_list_create();

global.player_energy = 100;
global.player_energy_max = 100;

//adjust_energy(-98);

global.player_species = 0;
global.player_color = 0;

global.dialogue = quack_load("quack_data.txt");
global.day = 0;
dialogrunning = false;

global.mainqueststate = 0;

/* quest specific variables */
geneviedaytoreturn = 0;

//set the UI size
var _view_width = camera_get_view_width(view_camera[0]) * 1.5;
var _view_height = camera_get_view_height(view_camera[0]) * 1.5;
display_set_gui_size(_view_width, _view_height);

// Pausing (happens after gui is set)
paused_ = false;
paused_sprite = noone;
paused_sprite_scale = display_get_gui_width() / view_wport[0];

// Inventory
items = ds_list_create();
item_number = ds_list_create();

/*pickup_item(o_data.items[? "potion"], 4);
pickup_item(o_data.items[? "strawberry"], 4);
pickup_item(o_data.items[? "blueberry"], 2);
pickup_item(o_data.items[? "house"], 1);
pickup_item(o_data.items[? "lady"], 5);
pickup_item(o_data.items[? "augustus"], 6);

use_item(o_data.items[? "blueberry"], 2);*/

// Friends
friends = ds_list_create();
friend_keys = get_friend_keys();
friends_discovered = ds_list_create();
friendship_scores = ds_map_create();

obtain_friends();
/*discover_friend("natalie");

increase_friendship(o_data.friends[? "natalie"], 15);*/

// Quests
quests = ds_list_create();
quests_done = ds_list_create();
quest_states = ds_list_create();
quests_done_states = ds_list_create();

/*
pickup_quest(o_data.quests[? "intothedeepwoods"]);
pickup_quest(o_data.quests[? "quest2"]);
pickup_quest(o_data.quests[? "quest3"]);
pickup_quest(o_data.quests[? "quest4"]);
pickup_quest(o_data.quests[? "quest5"]);*/

/*
update_quest_state(o_data.quests[? "intothedeepwoods"], 1);
update_quest_state(o_data.quests[? "intothedeepwoods"], 2);
update_quest_state(o_data.quests[? "intothedeepwoods"], 3);
update_quest_state(o_data.quests[? "intothedeepwoods"], 6);
update_quest_state(o_data.quests[? "intothedeepwoods"], 7);*/

//complete_quest(o_data.quests[? "quest1"]);


// Collectables
allumbrae = ds_list_create();
umbrae = ds_list_create();
allcurios = ds_list_create();
curios = ds_list_create();
allgenesia = ds_list_create();
genesia = ds_list_create();
allimpresiums = ds_list_create();
impresiums = ds_list_create();
allferrotypes = ds_list_create();
ferrotypes = ds_list_create();
allaconitums = ds_list_create();
aconitums = ds_list_create();

totalgrimoires = ds_map_size(o_data.umbrae) + ds_map_size(o_data.curios) + 
				 ds_map_size(o_data.genesia) + ds_map_size(o_data.impresiums) +
				 ds_map_size(o_data.ferrotypes) + ds_map_size(o_data.aconitums);
totalgrimoire_collect = 0;
obtain_collectables();
/*
pickup_collectable( umbrae, 0);
pickup_collectable( umbrae, 2);
pickup_collectable( curios, 1);
pickup_collectable( curios, 3);*/

// Furniture
furniture_outdoor = ds_list_create();

pickup_furniture(o_data.furniture_outdoor[? "chair"], "outdoor");
pickup_furniture(o_data.furniture_outdoor[? "table"], "outdoor");

// Mailbox
mail_queue = ds_list_create();
new_mail = ds_list_create();
all_mail = ds_list_create();

// Create save data
global.save_data = ds_map_create();
global.load = false;

global.outside = false;


black_alpha = 0;
spawn_room = -1;
doTransition = false;