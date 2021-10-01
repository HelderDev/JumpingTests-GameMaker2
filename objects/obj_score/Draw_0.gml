/// @description Insert description here
// You can write your code in this editor
scr_hud_position();

score_x = obj_player.x - hud_score_x;
score_y = obj_player.y - hud_score_y;
draw_text(score_x, score_y, score)