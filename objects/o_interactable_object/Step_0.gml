depth = -y;

var dirfacing = playerobject.direction_facing_;
show_debug_message(dirfacing);
var drx = detection_radius_x;
var dry = detection_radius_y;

if (point_in_rectangle(playerobject.x, playerobject.y, x-drx, y-dry, x+drx, y+dry)) {
	if(myTextbox != noone){ 
		if(!instance_exists(myTextbox)){ myTextbox = noone; exit; }
	} else if(o_input.action_one_pressed) {
	    //Set sprite_index based on point direction
		var showdialog = false;
	    var pd = point_direction(x, y, playerobject.x, playerobject.y);
	    if ( (pd >= 45) && (pd <= 135) && dirfacing == 3) { // object is above player
			showdialog = true;
		} else if ( (pd > 135) && (pd < 225) && dirfacing == 0 ) {
			showdialog = true;
		} else if ( (pd >= 225) && (pd <= 315) && dirfacing == 1 ) {
			showdialog = true;
		} else if ( (pd > 315 || pd < 45) && dirfacing == 2 ) {
			showdialog = true;
		}
			
		if ( showdialog ) {
			if(instance_exists(obj_textbox)){ exit; }	//exit if a textbox already exists
			if ( obj_text != -1 ) {
				create_dialogue(obj_text, -1);
			}	
		}
	}
//if(point_in_rectangle(playerobject.x, playerobject.y, x-dr, y-dr, x+dr, y+dr)){

} else {	//if player moves outside of detection radius
	if(myTextbox != noone){
		with(myTextbox) instance_destroy();
		myTextbox = noone;
	}
}