function PlayerStateFree(){
key_jump = keyboard_check(ord("W"));
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
//key_down = keyboard_check(ord("S"));
var _move = key_right - key_left !=0;

if(_move){

move_dir= point_direction(0,0, key_right - key_left,0)
move_spd = Approach(move_spd,move_spd_max,acc)

}else{

move_spd = Approach(move_spd,0,dcc)

}
hspd = lengthdir_x(move_spd, move_dir)

if place_meeting(x, y+1, obj_chao) and key_jump{
	vspd -= 20;
}

}

function fim_da_animacao() {
	 var _sprite = sprite_index;
    var _image = image_index;
    if(argument_count > 0)   _sprite = argument[0];
    if(argument_count > 1)  _image = argument[1];
    var _type = sprite_get_speed_type(sprite_index);
    var _spd = sprite_get_speed(sprite_index)*image_speed;
    if(_type == spritespeed_framespersecond)
        _spd = _spd/room_speed;
    if(argument_count > 2) _spd = argument[2];
    return _image + _spd >= sprite_get_number(_sprite);
}