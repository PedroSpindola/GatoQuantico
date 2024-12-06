pontuacao = 0;
event_inherited();
move_spd=10;
vida=1;
dano=5;
is_dead = false;
state = PlayerStateFree;
inimigos_atingidos = ds_list_create();
player_morto = false;
moedas = 0;
global.pause = false;
arma = noone;

usa_arma = function(){
	if(arma != noone){
		var _fire = mouse_check_button(mb_left);
		arma.atirar = _fire;
		var _dir = point_direction(x, y, mouse_x, mouse_y);
		
		var _x = x + lengthdir_x(sprite_width, _dir);
		var _y = y + lengthdir_y(sprite_height, _dir);
		arma.x = _x;
		arma.y = _y;
		
		arma.image_angle = _dir;
		
	}
}


joga_arma = function(){
	if(arma){
		var _joga = keyboard_check_released(ord("Q"));
		if(_joga){
			arma.speed = 9;
			arma.direction = arma.image_angle;
			arma = noone;
		}
	}
}
/*
enum PlayerState 
{
	FREE,
	ATTACK,
	
}
*/