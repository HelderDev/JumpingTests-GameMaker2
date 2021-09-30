

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

scr_player_jump();
scr_player_movements(vx, vy);