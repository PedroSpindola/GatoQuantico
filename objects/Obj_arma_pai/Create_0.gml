/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
image_xscale = 0.5;
image_yscale = 0.5;
alarm[0]= 60 * 5;
atirar = false;
delay_tiro = 0;
em_uso = false;
self.bala= Obj_bala;
atirando = function(){
	if(atirar){
		delay_tiro--;
		if(delay_tiro<=0){
			delay_tiro = countdown * room_speed;
			
			var _x = lengthdir_x(sprite_height, image_angle);
			var _y = lengthdir_y(sprite_height, image_angle);
			
			var _tiro = instance_create_layer(x + _x, y + _y, layer, bala);
			_tiro.speed = velocidade;
			_tiro.direction = image_angle;
		}
	}
}
