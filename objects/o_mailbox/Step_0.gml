// Inherit the parent event
event_inherited();

if ( newmail && (counter++ mod 30 == 0) ) {
	image_index++;
	if ( image_index > 2 ) {
		image_index = 1;	
	}
}

// when fixing this, make sure to find any other instances of this code copied!!

var dirfacing = o_player.direction_facing_;
var drx = 9;
var dry = 9;

if (point_in_rectangle(o_player.x, o_player.y, x-drx, y-dry, x+drx, y+dry)) {
	if(o_input.action_one_pressed) {
	    //Set sprite_index based on point direction
		var showmail = false;
	    var pd = point_direction(x, y, o_player.x, o_player.y);
	    if ( (pd >= 45) && (pd <= 135) && dirfacing == 3) { // object is above player
			showmail = true;
		} else if ( (pd > 135) && (pd < 225) && dirfacing == 0 ) {
			showmail = true;
		} else if ( (pd >= 225) && (pd <= 315) && dirfacing == 1 ) {
			showmail = true;
		} else if ( (pd > 315 || pd < 45) && dirfacing == 2 ) {
			showmail = true;
		}
			
		if ( showmail ) {
			instance_create_layer(0, 0, "Instances", o_mailbox_ui);
		}
	}
} 