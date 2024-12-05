// Evento Alarm[0] de obj_spawn_inimigo
if(global.pause)exit;
var center_x = room_width / 2;
var spawn_x = center_x;

var spawn_y = 10;  // Ajuste conforme necessário para definir a altura do topo

tipo_inimigo = choose(obj_inimigo_tatu, Obj_inimigo_voador, Obj_inimigo1, Obj_inimigo2);

// Tentativas para encontrar uma posição válida
var attempts = 0;
while (place_meeting(spawn_x, spawn_y, all) && attempts < 100) {
    spawn_y += 1; // Incrementa a posição Y se já estiver ocupada
    attempts += 1;
}
teste(tipo_inimigo);
if (attempts < 100) {
    // Verificar se o tipo_inimigo é realmente Obj_inimigo_voador
    if (tipo_inimigo == Obj_inimigo_voador) {
        var inimigo_inst = instance_create_layer(spawn_x, spawn_y, "Instances", tipo_inimigo);
        show_debug_message("Inimigo voador criado em: " + string(spawn_x) + ", " + string(spawn_y));
        inimigo_inst.y +=150; // Ajuste conforme necessário
    } else {
        var inimigo_inst = instance_create_layer(spawn_x, spawn_y, "Instances", tipo_inimigo);
        show_debug_message("Inimigo criado em: " + string(spawn_x) + ", " + string(spawn_y));
    }
} else {
    show_debug_message("Falha ao encontrar posição válida para o inimigo.");
}

alarm[0] = room_speed * 2;
