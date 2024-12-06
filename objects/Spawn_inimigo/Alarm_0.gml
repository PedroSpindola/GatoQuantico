// Faça o spawn do inimigo
instance_create(x, y, Obj_inimigo1);

// Defina o alarme novamente para o próximo spawn
alarm[0] = room_speed * 5; // Reseta o alarme para mais 5 segundos
