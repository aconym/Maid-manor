var uk=keyboard_check(vk_up)
var dk=keyboard_check(vk_down)
var rk=keyboard_check(vk_right)
var lk=keyboard_check(vk_left)

hspd=(rk-lk)*movspd
vspd=(dk-uk)*movspd

x+=hspd
y+=vspd
