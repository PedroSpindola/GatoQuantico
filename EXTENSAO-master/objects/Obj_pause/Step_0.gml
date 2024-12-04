if (global.pause && mouse_check_button_pressed(mb_left)) {
    // Posições iniciais para desenhar as opções
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    var opc_x = gui_w / 2;
    
    // Defina a altura e largura da área clicável da sprite
    var opc_width = 400;  // Ajuste conforme o tamanho da sua sprite
    var opc_height = 90; // Ajuste conforme o tamanho da sua sprite
    
    // Itera sobre cada opção para detectar o clique
    for (var i = 0; i < op_max; i++) {
        // Calcula a posição y atual da opção
        var opc_y = gui_h / 2.5 + (130 * i);

        // Verifica se o mouse está sobre a opção
        if (mouse_x > opc_x - opc_width / 2 && mouse_x < opc_x + opc_width / 2 &&
            mouse_y > opc_y - opc_height / 2 && mouse_y < opc_y + opc_height / 2) {
            
            // Executa a ação específica com base na opção clicada
            switch (i) {
                case 0:
                    iniciarJogo(); // Função para iniciar o jogo
                    break;
                case 1:
                    //carregarJogo(); // Função para carregar o jogo
                    break;
                case 2:
                    //sairDoJogo(); // Função para sair do jogo
                    break;
            }
        }
    }
}

function iniciarJogo() {
    global.pause = false;
    // Código para iniciar o jogo
}

function carregarJogo() {
    global.pause = false;
    // Código para carregar o jogo
}

function sairDoJogo() {
    game_end(); // Finaliza o jogo
}