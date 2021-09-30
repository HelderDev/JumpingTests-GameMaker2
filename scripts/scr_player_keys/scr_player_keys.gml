/// scr_mario_controls
move_right = keyboard_check(ord("D"));
move_left = keyboard_check(ord("A"));;
jump = keyboard_check_pressed(vk_space);
isTrue = false

with(obj_player){
	if place_snapped(32,32){
	isTrue = true;
	show_debug_message("PLACE_SNAPPED")
	}
	else{
	show_debug_message("PLACE_NOT_SNAPPED")
	}
}