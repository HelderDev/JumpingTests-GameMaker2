// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_movements(vx, vy){
#region Vertical and Horizontal Movement
	// Vertical
	repeat(abs(vy)) {
	    if (!place_meeting(x, y + sign(vy), obj_solid))
	        y += sign(vy); 
	    else {
	        vy = 0;
	        break;
	    }
	}

	// Horizontal
	repeat(abs(vx)) {
	    // Move up slope
	    if (place_meeting(x + sign(vx), y, obj_solid) && place_meeting(x + sign(vx), y - 1, obj_solid) && !place_meeting(x + sign(vx), y - 2, obj_solid))
	        y -= 2;
	    else if (place_meeting(x + sign(vx), y, obj_solid) && !place_meeting(x + sign(vx), y - 1, obj_solid))
	        y -= 1
    
	    // Move down slope
	    if (!place_meeting(x + sign(vx), y, obj_solid) && !place_meeting(x + sign(vx), y + 1, obj_solid) && !place_meeting(x + sign(vx), y + 2, obj_solid) && place_meeting(x + sign(vx), y + 3, obj_solid))
	        y += 2;
	    else if (!place_meeting(x + sign(vx), y, obj_solid) && !place_meeting(x + sign(vx), y + 1, obj_solid) && place_meeting(x + sign(vx), y + 2, obj_solid))
	        y += 1; 

	    if (!place_meeting(x + sign(vx), y, obj_solid))
	        x += sign(vx); 
	    else {
	        vx = 0;
	        break;
	    }
	}

#endregion
}