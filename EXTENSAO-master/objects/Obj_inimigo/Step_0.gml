
var direcao_jogador = point_direction(x, y, Obj_player.x, Obj_player.y);


var move_speed = 10; 
hspeed = move_speed * lengthdir_x(1, direcao_jogador);
vspeed = move_speed * lengthdir_y(1, direcao_jogador);

