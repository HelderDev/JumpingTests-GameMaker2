
scr_player_movement()
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

if(place_meeting(x, y + ysp, obj_wall))
{
    while(!place_meeting(x, y + sign(ysp), obj_wall))
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

#region Vertical and Horizontal Movement
// Vertical
repeat(abs(vy)) {
    if (!place_meeting(x, y + sign(vy), obj_wall))
        y += sign(vy); 
    else {
        vy = 0;
        break;
    }
}

// Horizontal
repeat(abs(vx)) {
    // Move up slope
    if (place_meeting(x + sign(vx), y, obj_wall) && place_meeting(x + sign(vx), y - 1, obj_wall) && !place_meeting(x + sign(vx), y - 2, obj_wall))
        y -= 2;
    else if (place_meeting(x + sign(vx), y, obj_wall) && !place_meeting(x + sign(vx), y - 1, obj_wall))
        y -= 1
    
    // Move down slope
    if (!place_meeting(x + sign(vx), y, obj_wall) && !place_meeting(x + sign(vx), y + 1, obj_wall) && !place_meeting(x + sign(vx), y + 2, obj_wall) && place_meeting(x + sign(vx), y + 3, obj_wall))
        y += 2;
    else if (!place_meeting(x + sign(vx), y, obj_wall) && !place_meeting(x + sign(vx), y + 1, obj_wall) && place_meeting(x + sign(vx), y + 2, obj_wall))
        y += 1; 

    if (!place_meeting(x + sign(vx), y, obj_wall))
        x += sign(vx); 
    else {
        vx = 0;
        break;
    }
}

#endregion