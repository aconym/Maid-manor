var uk=keyboard_check(vk_up)
var dk=keyboard_check(vk_down)
var rk=keyboard_check(vk_right)
var lk=keyboard_check(vk_left)

//hspd=(rk-lk)*movspd
//vspd=(dk-uk)*movspd

// Grid-based movement
if place_snapped(64,64){ // Check if object is in a proper grid
    if lk {
		if !place_meeting(x-64,y,Wall_OBJ) { // Check wall collision
			direction=180;speed=movspd;
		} else {
			speed=0;
		}
	}
    if rk {
		if !place_meeting(x+64,y,Wall_OBJ) {
			direction=0;speed=movspd;
		} else {
			speed=0;
		}
	}
    if uk {
		if !place_meeting(x,y-64,Wall_OBJ) {
			direction=90;speed=movspd;
		} else {
			speed=0;
		}
	}
    if dk {
		if !place_meeting(x,y+64,Wall_OBJ) {
			direction=270;speed=movspd;
		} else {
			speed=0;
		}
	}
    if keyboard_check(vk_nokey)speed=0;
}