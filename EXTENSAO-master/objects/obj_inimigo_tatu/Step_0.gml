if(global.pause){
	hspd=0;
	image_speed = 0;
	exit;
}
image_speed = 1;
event_inherited();
Scr_inimigos_state_free()

var jogador = instance_nearest(x, y, Obj_player);
if (jogador != noone) {
    var distancia_jogador_x = abs(jogador.x - x);
    var distancia_jogador_y = abs(jogador.y - y);

    var deteccao = 200;

    if (distancia_jogador_x < deteccao && distancia_jogador_y < 10) { 
        if (!preparando && !correndo) {
			move_spd=0;
            preparando = true;
            contador = delay; // Iniciar o contador
            if (jogador.x > x) {
                direcao = 1;
				
				
            } else if (jogador.x < x) {
                direcao = -1; 
				
            }
			image_index = 0;
            sprite_index = Spr_inimigoTatuAlerta;
        }
    }

    if (preparando) {
        contador--;
        if (contador <= 0) {
            preparando = false;
            correndo = true;
            sprite_index = Spr_inimigoTatuRolando;
            show_debug_message("Tatu está rolando.");
        }
    }
	
    if (correndo) {
        var new_x = x + (move_spd * direcao);
        if (!place_meeting(new_x, y, obj_chao)) {
            move_spd=6;
            //show_debug_message("Nova posição: " + string(x));
        }
    }

    if (place_meeting(x, y, Obj_player) && sprite_index == Spr_inimigoTatuRolando) {
        jogador.pontuacao -= 20;
        jogador.vida--;
    }
	if(correndo && place_meeting(new_x,y,obj_chao)){
		move_dir=0;
		move_spd=0;

		show_debug_message(move_spd);
        sprite_index = Spr_inimigoTatuBatendo;
		
		//x = 1000;

	}
}
