// Cria o objeto inimigo
instance_create_layer(x, y, "Instances", Obj_inimigo1);

// Cria um novo inimigo
instance_create_layer(x, y, "Instances", Obj_inimigo1);

// Reinicia o alarme para o próximo spawn
alarm[0] = room_speed * 5; // Configura o alarme para disparar novamente após 5 segundos
