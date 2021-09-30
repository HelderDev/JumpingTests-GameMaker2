// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dummy_enemy_movements(vx, vy){
	 

	// Horizontal
	repeat(abs(vx)) {
	    if (!place_meeting(x + sign(vx), y, obj_solid))
		{
		x += sign(vx); 
		 
		}
	    else {
	        vx = vx * -1;
	        break;
	    }
	}
 return vx;
}