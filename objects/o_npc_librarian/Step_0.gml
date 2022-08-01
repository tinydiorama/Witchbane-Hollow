/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var questindex = ds_list_find_index(o_game.quests, o_data.quests[? "bookofspecimens"]);
if ( questindex == -1 ) { /* haven't gotten her quest yet */
	show_active_emoji = true;
} else {
	//var queststates = ds_list_find_value(o_game.quest_states(questindex), questindex);
}