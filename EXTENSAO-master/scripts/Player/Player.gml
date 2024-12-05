
function PlayerStateFree(){
key_jump = keyboard_check(ord("W"));
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
//key_down = keyboard_check(ord("S"));
var _move = key_right - key_left !=0;
var solta_pulo = keyboard_check_released(ord("W"))
if(_move){

move_dir= point_direction(0,0, key_right - key_left,0)
move_spd = Approach(move_spd,move_spd_max,acc)
sprite_index = Spr_player_walk
	
	}
else{

move_spd = Approach(move_spd,0,dcc)
sprite_index = Spr_player_idle

	}
hspd = lengthdir_x(move_spd, move_dir)

if place_meeting(x, y+1, obj_chao) and key_jump{
	
	vspd -= 20;
	Obj_som.sfx_pulo.play = true
}
if(solta_pulo){
	vspd +=5
}

	
if(!place_meeting(x, y+1,obj_chao)){
	
	if(vspd<0){
	
	sprite_index = Spr_player_jump
	
	}else{
		
	sprite_index = Spr_player_descendo
	
	}
}
	
	if (mouse_check_button(mb_right)){
		if(mouse_x < x) image_xscale = -1; 
	else image_xscale = 1;
	image_index = 0;
	Obj_som.Sfx_ataquebasico.play = true
    state = PlayerStateAttack;
	}
	if(Obj_player.is_dead){
		
		state = PlayerDead	
		
	}
	//if (mouse_check_button_released(mb_left)){
		
	//	state = PlayerStateTiro;
	
	//}
	
}
	
function PlayerStateAttack() {
	
	
	sprite_index = Spr_player_attack;
	if(image_index > 0){
		if(!instance_exists(Obj_hitbox)){
			instance_create_layer(x + (80 * image_xscale), y, layer, Obj_hitbox);
		}	
	}
	sprite_index = Spr_player_attack;
		if(image_index >= image_number - 1){
		if(instance_exists(Obj_hitbox)){ instance_destroy(Obj_hitbox)}
		state = PlayerStateFree;

	}
}
//function PlayerStateTiro(){
	
	//direcao_bala = point_direction(x,y,mouse_x,mouse_y);
	
	//_xx = x + lengthdir_x(64, Obj_player);
	//_yy = y + lengthdir_y(64, Obj_player);
				
	//audio_play_sound(Tiro_inimigo, 2,false);
	//var _tiro = instance_create_layer(_xx,_yy,"Instances",Obj_bala);
	//_tiro.direction = direcao_bala;
	//state = PlayerStateFree;
//}

function PlayerDead(){
	sprite_index = Spr_player_dead;
	hspd = 0
	vspd = 0
	
	if(image_index>=image_number-1){
	
		vida = 1
		
		
	}
	
	
	
}

