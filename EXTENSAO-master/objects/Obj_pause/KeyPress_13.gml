/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.pause) {
    switch (index) {
        case 0: // Despausar o jogo
            global.pause = false;
            break;

        case 1: // Ir para uma sala específica (Room 1)
            global.pause = false;
            room_goto(RoomQG);
            break;

        case 2: // Ir para uma sala específica (Room 2)
            global.pause = false;
            room_goto(Rm_menu);
            break;

        case 3: // Fechar o jogo
            game_end();
            break;
    }
}
