// Variável para contar o tempo até o próximo spawn
alarm[0] = room_speed * 8; // Configura o alarme para disparar a cada 5 segundos

// Evento de alarme para mostrar o alerta e iniciar o spawn de inimigos
alarm[1] = room_speed * 8; // Configura o alarme para disparar novamente após 5 segundos

// Define a posição do alerta na tela
x = room_width / 2;
y = room_height / 2;

// Evento de desenho para desenhar o alerta
draw_self(); // Ou desenhe o alerta de acordo com sua preferência
	

