
function Scr_inimigos_state_free(){

	hspd= move_spd*move_dir;
	if(place_meeting(x+hspd, y, obj_chao)){
	
		move_dir*= -1;
	}
	if(object_index == Obj_inimigo2){

	sprite_index= Spr_andandoAtirador;
	
	}else if(object_index == Obj_inimigo_voador){
	
	sprite_index = Spr_inimigoMorcego	
	
}


}
function inimigos_dano(pontos){

	if(place_meeting(x+hspd,y,Obj_hitbox) or place_meeting(x+hspd,y,Obj_bala)){
	Obj_player.pontuacao += pontos;
	//mudar o Obj do place_meeting para o obj da arma e do tiro
	if(vida<=0){
		instance_destroy();
		instance_create_layer(x,y, "Instances", Obj_moedas);
		}
	}

}
function tiro(){
	
	var distancia=point_distance(x,y, Obj_player.x, Obj_player.y)
	
	if(distancia<300){

		hspd=0
		if(global.tempo_tiro==true){
			
			
			
			if(global.atacando == true){
				var direcao_jogador = point_direction(x, y, Obj_player.x, Obj_player.y);

				_xx = x + lengthdir_x(64, direcao_jogador);
				_yy = y + lengthdir_y(64, direcao_jogador);
				
				if(object_index == Obj_inimigo2){
	
					sprite_index = Spr_ratoAtirando;
	
				}
				else if(object_index == Obj_inimigo_voador){

					sprite_index = Spr_ataqueMorcego;
					
				}
	

				
				Obj_som.Som_tiroInimigo.play = true;
				var _tiro = instance_create_layer(_xx,_yy,"Instances",Obj_tiro_morcego);
				_tiro.direction = direcao_jogador;
				global.tempo_tiro=false;
				alarm[0] = room_speed * 3;
				//sprite_index = Spr_inimigoMorcego;
			}
		}
		
	}

}

function distancia_player(){
	

	
	
}

