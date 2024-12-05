if(global.pause){
	hspd=0;
	image_speed = 0;
	exit;
}
image_speed = 1;
event_inherited();

state = Scr_inimigos_state_free()

tiro();
//inimigos_dano(valor_pontos)

