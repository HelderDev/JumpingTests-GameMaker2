
scr_player_keys()
if (move_right){
vx = 5;
}

else if (move_left){
vx = -5;
}
else{
vx = 0;
}

 
#region Double Jump System
 
 ysp += grav;

if(keyboard_check_pressed(vk_space) && jump_current > 0)
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

scr_player_movements(vx, vy)