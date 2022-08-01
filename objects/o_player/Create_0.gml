initialize_movement_entity(0.5, 1, o_solid);

image_speed = 0; // how fast the character animates
acceleration_ = 0.5;
max_speed_ = 1.5;
direction_facing_ = dir.right;
global.player_health = 4; 
global.player_movement = true;

enum player {
	move,
	talking
}

enum dir {
	right,
	up,
	left,
	down
}

state_ = player.move;

// Sprite move lookup table
if ( global.player_species == 0 ) {
	object_set_sprite(o_player, s_player_0_run_down);
	sprite_[player.move, dir.right] = s_player_0_run_right;
	sprite_[player.move, dir.up] = s_player_0_run_up;
	sprite_[player.move, dir.left] = s_player_0_run_right;
	sprite_[player.move, dir.down] = s_player_0_run_down;

	sprite_[player.talking, dir.right] = s_player_0_run_right;
	sprite_[player.talking, dir.up] = s_player_0_run_up;
	sprite_[player.talking, dir.left] = s_player_0_run_right;
	sprite_[player.talking, dir.down] = s_player_0_run_down;
} else if ( global.player_species == 1 ) {
	object_set_sprite(o_player, s_player_1_run_down);
	sprite_[player.move, dir.right] = s_player_1_run_right;
	sprite_[player.move, dir.up] = s_player_1_run_up;
	sprite_[player.move, dir.left] = s_player_1_run_right;
	sprite_[player.move, dir.down] = s_player_1_run_down;

	sprite_[player.talking, dir.right] = s_player_1_run_right;
	sprite_[player.talking, dir.up] = s_player_1_run_up;
	sprite_[player.talking, dir.left] = s_player_1_run_right;
	sprite_[player.talking, dir.down] = s_player_1_run_down;
} else {
	object_set_sprite(o_player, s_player_2_run_down);
	sprite_[player.move, dir.right] = s_player_2_run_right;
	sprite_[player.move, dir.up] = s_player_2_run_up;
	sprite_[player.move, dir.left] = s_player_2_run_right;
	sprite_[player.move, dir.down] = s_player_2_run_down;

	sprite_[player.talking, dir.right] = s_player_2_run_right;
	sprite_[player.talking, dir.up] = s_player_2_run_up;
	sprite_[player.talking, dir.left] = s_player_2_run_right;
	sprite_[player.talking, dir.down] = s_player_2_run_down;
}

// Dialog
reset_dialogue_defaults();/*
myPortrait			= spr_testchar;
myVoice				= snd_voice2;
myFont				= font_reg;
myName				= "Green";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;*/