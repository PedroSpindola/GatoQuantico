/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(global.pause)exit;
if (total_weapons > 0) {
    var spawn_x, spawn_y;

    repeat (10) { 
        spawn_x = irandom_range(left_limit, right_limit);
        spawn_y = irandom_range(100, room_height - 100);

        if (!place_meeting(spawn_x, spawn_y, obj_chao)) {
            
            instance_create_layer(spawn_x, spawn_y, "Instances", Obj_arma_pai);

            total_weapons--;
            
            break;
        }
    }
    alarm[0] = 60 * 3;
}
