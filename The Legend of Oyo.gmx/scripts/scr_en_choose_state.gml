/// scr_en_choose_state

if(alarm[0] <= 0){
    state = choose(scr_en_wander,scr_en_idle);
    alarm[0] = room_speed*irandom_range(2,4);
    if(state == scr_en_wander){
    xaxis = random_range(-1, 1);
    yaxis = random_range(-1, 1);
    }
}
