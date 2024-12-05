draw_set_font(Ft_menu);
draw_set_color(c_black);
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
var x1 = gui_w / 2;
var y1 = gui_h / 2.6;

if (global.pause) {
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);

    var mouse_x_gui = device_mouse_x_to_gui(0); // Posição X do mouse no GUI
    var mouse_y_gui = device_mouse_y_to_gui(0); // Posição Y do mouse no GUI

    for (var i = 0; i < op_max; i++) {
        // Calcula a posição do texto
        var text_y = y1 + (50 * i);
        var text_width = string_width(opcoes[i]) / 2; // Largura do texto para detecção precisa
        var text_height = 20; // Altura aproximada do texto

        if (index == i) {
            draw_set_color(c_red); // Cor de destaque
        } else {
            draw_set_color(c_white); // Cor padrão
        }

        // Verifica se o mouse está sobre o texto
        var mouse_over = (mouse_x_gui > x1 - text_width && mouse_x_gui < x1 + text_width &&
                          mouse_y_gui > text_y - text_height / 2 && mouse_y_gui < text_y + text_height / 2);

        if (mouse_over) {
            index = i; // Atualiza o índice para o mouse
            draw_set_color(c_red); // Cor ao passar o mouse
			if (mouse_check_button_pressed(mb_left)) {
                switch (i) {
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
        }

        draw_set_alpha(1);
        draw_text(x1, text_y, opcoes[i]);
    }
}
