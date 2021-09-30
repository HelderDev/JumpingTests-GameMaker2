// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_jump(){
#region Double Jump System
 ysp += grav;

if(jump && jump_current > 0)
{
    ysp = -8;
    jump_current--;
}

if(place_meeting(x, y + ysp, obj_solid))
{
    while(!place_meeting(x, y + sign(ysp), obj_solid))
    {
        y += sign(ysp);
    }
 
    if(ysp > 0)
    {
        jump_current = jump_number;
    }
 
    ysp = 0;
}

y += ysp;
 
#endregion

}