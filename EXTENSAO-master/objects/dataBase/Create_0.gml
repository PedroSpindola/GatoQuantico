var url = "https://catgame-database-default-rtdb.firebaseio.com/Ranking.json";
var data_map = ds_map_create();
ds_map_add(data_map, "id_jogador", "nome_jogador");
ds_map_add(data_map, "pontuacao", 500);
var json_data = json_encode(data_map);
requisicaoPontuacao = http_post_string(url, json_data);