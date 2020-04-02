/// scr_get_input

key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_dash = keyboard_check_pressed(ord('Z'));
key_attack = keyboard_check_pressed(ord('X'));
key_pause  = keyboard_check_pressed(vk_escape);
key_enter = keyboard_check_pressed(vk_enter);
key_spell = keyboard_check_pressed(ord('C'));

//get axis
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);


if(gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, 0.35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    key_dash = gamepad_button_check_pressed(0, gp_face1);
    key_attack = gamepad_button_check_pressed(0, gp_face4);
     key_spell = gamepad_button_check_pressed(0, gp_face2);
    key_pause = gamepad_button_check_pressed(0 , gp_start);
    
}
