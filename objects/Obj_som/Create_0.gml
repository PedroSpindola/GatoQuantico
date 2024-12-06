global.sfx=1;
global.musica=1;
global.vol_master=1;

Audio_controle = new audioControle("sfx","musica","Vol_master");

Som_tiroInimigo = new audioPlaySfx(Tiro_inimigo,auTipoSfx);

sfx_moedas = new audioPlaySfx(Sm_moeda, auTipoSfx);

sfx_pulo = new audioPlaySfx(pulo_player,auTipoSfx);

Sfx_ataquebasico = new audioPlaySfx(Sm_ataquebasico,auTipoSfx);

Sfx_selecaoBotao = new audioPlaySfx(Sm_selecionarBotao,auTipoSfx) 

musica_qg = new AudioPlayMusica(Sm_qg,auTipoMusica,0);