iniciar :-
    hipotese(Personagem), % inicia a dedução
    write('Eu acho que o personagem é: '), % escreve a dedução
    write(Personagem), % escreve o personagem
    nl, % pula linha
    undo. % desfaz a última resposta

% Iniciar a dedução
% hipoteses de personagens a serem testadas
hipotese(asuma_sarutobi) :- asuma_sarutobi, !. % Asuma Sarutobi
hipotese(choji_akimichi) :- choji_akimichi, !. % Choji Akimichi
hipotese(gaara) :- gaara, !. % Gaara
hipotese(haku) :- haku, !. % Haku
hipotese(hinata_hyuuga) :- hinata_hyuuga, !. % Hinata Hyuga
hipotese(ino_yamanaka) :- ino_yamanaka, !. % Ino Yamanaka
hipotese(iruka_umino) :- iruka_umino, !. % Iruka Umino
hipotese(itachi_uchiha) :- itachi_uchiha, !. % Itachi Uchiha
hipotese(jiraiya) :- jiraiya, !. % Jiraiya
hipotese(kabuto_yakushi) :- kabuto_yakushi, !. % Kabuto Yakushi
hipotese(kakashi_hatake) :- kakashi_hatake, !. % Kakashi Hatake
hipotese(kiba_inuzuka) :- kiba_inuzuka, !. % Kiba Inuzuka
hipotese(kimimaro) :- kimimaro, !. % Kimimaro
hipotese(kurenai_yuhi) :- kurenai_yuhi, !. % Kurenai Yuhi
hipotese(might_guy) :- might_guy, !. % Might Guy
hipotese(minato_namikaze) :- minato_namikaze, !. % Minato Namikaze
hipotese(naruto_uzumaki) :- naruto_uzumaki, !. % Naruto Uzumaki
hipotese(neji_hyuuga) :- neji_hyuuga, !. % Neji Hyuga
hipotese(orochimaru) :- orochimaru, !. % Orochimaru
hipotese(rock_lee) :- rock_lee, !. % Rock Lee
hipotese(sakura_haruno) :- sakura_haruno, !. % Sakura Haruno
hipotese(sarutobi_hiruzen) :- sarutobi_hiruzen, !. % Sarutobi Hiruzen
hipotese(sasuke_uchiha) :- sasuke_uchiha, !. % Sasuke Uchiha
hipotese(shikamaru_nara) :- shikamaru_nara, !. % Shikamaru Nara
hipotese(shino_aburame) :- shino_aburame, !. % Shino Aburame
hipotese(desconhecido). % sem diagnóstico

% Regras de classificação
%sexo
% sexo_masculino, sexo_feminino
sexo_masculino :- verificar(eh_do_sexo_masculino), assert(no(eh_do_sexo_feminino)). % verifica se é do sexo masculino
sexo_feminino :- verificar(eh_do_sexo_feminino), assert(no(eh_do_sexo_masculino)). % verifica se é do sexo feminino

%cabelo
% cabelo_castanho, cabelo_ruivo, cabelo_azul, cabelo_loiro, cabelo_preto, cabelo_branco, cabelo_marrom, cabelo_rosa, cabelo_vermelho
cabelo_castanho :- verificar(tem_cabelo_castanho), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_rosa)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo castanho e desconsidera os outros tipos de cabelo

cabelo_ruivo :- verificar(tem_cabelo_ruivo), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_rosa)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo ruivo e desconsidera os outros tipos de cabelo

cabelo_azul :- verificar(tem_cabelo_azul), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_rosa)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo azul e desconsidera os outros tipos de cabelo

cabelo_loiro :- verificar(tem_cabelo_loiro), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_rosa)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo loiro e desconsidera os outros tipos de cabelo

cabelo_preto :- verificar(tem_cabelo_preto), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_rosa)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo preto e desconsidera os outros tipos de cabelo

cabelo_branco :- verificar(tem_cabelo_branco), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_rosa)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo branco e desconsidera os outros tipos de cabelo

cabelo_marrom :- verificar(tem_cabelo_marrom), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_rosa)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo marrom e desconsidera os outros tipos de cabelo

cabelo_rosa :- verificar(tem_cabelo_rosa), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_vermelho)). % verifica se tem cabelo rosa e desconsidera os outros tipos de cabelo

cabelo_vermelho :- verificar(tem_cabelo_vermelho), assert(no(tem_cabelo_castanho)), assert(no(tem_cabelo_ruivo)), assert(no(tem_cabelo_prateado)), assert(no(tem_cabelo_azul)), assert(no(tem_cabelo_loiro)), assert(no(tem_cabelo_preto)), assert(no(tem_cabelo_branco)), assert(no(tem_cabelo_marrom)), assert(no(tem_cabelo_rosa)). % verifica se tem cabelo vermelho e desconsidera os outros tipos de cabelo

% Olhos
% olhos_preto, olhos_azul, olhos_branco, olhos_vermelho, olhos_amarelo, olhos_verde
olhos_preto :- verificar(tem_olhos_preto), assert(no(tem_olhos_azul)), assert(no(tem_olhos_branco)), assert(no(tem_olhos_vermelho)), assert(no(tem_olhos_amarelo)), assert(no(tem_olhos_verde)). % verifica se tem olhos preto e desconsidera os outros tipos de olhos

olhos_azul :- verificar(tem_olhos_azul), assert(no(tem_olhos_preto)), assert(no(tem_olhos_branco)), assert(no(tem_olhos_vermelho)), assert(no(tem_olhos_amarelo)), assert(no(tem_olhos_verde)). % verifica se tem olhos azul e desconsidera os outros tipos de olhos

olhos_branco :- verificar(tem_olhos_branco), assert(no(tem_olhos_preto)), assert(no(tem_olhos_azul)), assert(no(tem_olhos_vermelho)), assert(no(tem_olhos_amarelo)), assert(no(tem_olhos_verde)). % verifica se tem olhos branco e desconsidera os outros tipos de olhos

olhos_vermelho :- verificar(tem_olhos_vermelho), assert(no(tem_olhos_preto)), assert(no(tem_olhos_azul)), assert(no(tem_olhos_branco)), assert(no(tem_olhos_amarelo)), assert(no(tem_olhos_verde)). % verifica se tem olhos vermelho e desconsidera os outros tipos de olhos

olhos_amarelo :- verificar(tem_olhos_amarelo), assert(no(tem_olhos_preto)), assert(no(tem_olhos_azul)), assert(no(tem_olhos_branco)), assert(no(tem_olhos_vermelho)), assert(no(tem_olhos_verde)). % verifica se tem olhos amarelo e desconsidera os outros tipos de olhos

olhos_verde :- verificar(tem_olhos_verde), assert(no(tem_olhos_preto)), assert(no(tem_olhos_azul)), assert(no(tem_olhos_branco)), assert(no(tem_olhos_vermelho)), assert(no(tem_olhos_amarelo)). % verifica se tem olhos verde e desconsidera os outros tipos de olhos

% Clã
cla_sarutobi :- verificar(eh_do_cla_sarutobi). % verifica se é do clã sarutobi
cla_akimichi :- verificar(eh_do_cla_akimichi). % verifica se é do clã akimichi
cla_sabaku :- verificar(eh_do_cla_sabaku). % verifica se é do clã sabaku
cla_yuki :- verificar(eh_do_cla_yuki). % verifica se é do clã yuki
cla_hyuuga :- verificar(eh_do_cla_hyuuga). % verifica se é do clã hyuuga
cla_yamanaka :- verificar(eh_do_cla_yamanaka). % verifica se é do clã yamanaka
cla_umino :- verificar(eh_do_cla_umino). % verifica se é do clã umino
cla_uchiha :- verificar(eh_do_cla_uchiha). % verifica se é do clã uchiha
cla_hatake :- verificar(eh_do_cla_hatake). % verifica se é do clã hatake
cla_inuzuka :- verificar(eh_do_cla_inuzuka). % verifica se é do clã inuzuka
cla_kaguya :- verificar(eh_do_cla_kaguya). % verifica se é do clã kaguya
cla_yuhi :- verificar(eh_do_cla_yuhi). % verifica se é do clã yuhi
cla_namikaze :- verificar(eh_do_cla_namikaze). % verifica se é do clã namikaze
cla_uzumaki :- verificar(eh_do_cla_uzumaki). % verifica se é do clã uzumaki
cla_nara :- verificar(eh_do_cla_nara). % verifica se é do clã nara
cla_aburame :- verificar(eh_do_cla_aburame). % verifica se é do clã aburame
cla_lee :- verificar(eh_do_cla_lee). % verifica se é do clã lee
cla_haruno :- verificar(eh_do_cla_haruno). % verifica se é do clã haruno
cla_yakushi :- verificar(eh_do_cla_yakushi). % verifica se é do clã yakushi

% Equipe
equipe_time_10 :- verificar(eh_do_time_10). % verifica se é do time 10
equipe_sand :- verificar(eh_do_time_sand). % verifica se é do time sand
equipe_time_zabuza :- verificar(eh_do_time_zabuza). % verifica se é do time zabuza
equipe_time_7 :- verificar(eh_do_time_7). % verifica se é do time 7
equipe_time_jiraiya :- verificar(eh_do_time_jiraiya). % verifica se é do time jiraiya
equipe_time_orochimaru :- verificar(eh_do_time_orochimaru). % verifica se é do time orochimaru
equipe_time_8 :- verificar(eh_do_time_8). % verifica se é do time 8
equipe_time_guy :- verificar(eh_do_time_guy). % verifica se é do time guy
equipe_time_4_hokages :- verificar(eh_do_time_4_hokages). % verifica se é do time 4 hokages
equipe_time_akatsuki :- verificar(eh_do_time_akatsuki). % verifica se é do time akatsuki
equipe_time_minato :- verificar(eh_do_time_minato). % verifica se é do time minato

% Sensei
sensei_sarutobi :- verificar(eh_do_sensei_sarutobi). % verifica se é do sensei sarutobi
sensei_baki :- verificar(eh_do_sensei_baki). % verifica se é do sensei baki
sensei_zabuza :- verificar(eh_do_sensei_zabuza). % verifica se é do sensei zabuza 
sensei_kurenai :- verificar(eh_do_sensei_kurenai). % verifica se é do sensei kurenai
sensei_kakashi :- verificar(eh_do_sensei_kakashi). % verifica se é do sensei kakashi
sensei_kakuzu :- verificar(eh_do_sensei_kakuzu). % verifica se é do sensei kakuzu
sensei_hiruzen :- verificar(eh_do_sensei_hiruzen). % verifica se é do sensei hiruzen
sensei_orochimaru :- verificar(eh_do_sensei_orochimaru). % verifica se é do sensei orochimaru
sensei_guy :- verificar(eh_do_sensei_guy). % verifica se é do sensei guy
sensei_minato :- verificar(eh_do_sensei_minato). % verifica se é do sensei minato
sensei_arashi :- verificar(eh_do_sensei_arashi). % verifica se é do sensei arashi
sensei_tobirama :- verificar(eh_do_sensei_tobirama). % verifica se é do sensei tobirama
sensei_jiraiya :- verificar(eh_do_sensei_jiraiya). % verifica se é do sensei jiraiya

% Aluno
aluno_naruto :- verificar(eh_do_aluno_naruto). % verifica se é do aluno naruto
aluno_sasuke :- verificar(eh_do_aluno_sasuke). % verifica se é do aluno sasuke
aluno_sakura :- verificar(eh_do_aluno_sakura). % verifica se é do aluno sakura
aluno_choji :- verificar(eh_do_aluno_choji). % verifica se é do aluno choji
aluno_shikamaru :- verificar(eh_do_aluno_shikamaru). % verifica se é do aluno shikamaru
aluno_ino :- verificar(eh_do_aluno_ino). % verifica se é do aluno ino
aluno_kiba :- verificar(eh_do_aluno_kiba). % verifica se é do aluno kiba
aluno_hinata :- verificar(eh_do_aluno_hinata). % verifica se é do aluno hinata
aluno_shino :- verificar(eh_do_aluno_shino). % verifica se é do aluno shino
aluno_rock_lee :- verificar(eh_do_aluno_rock_lee). % verifica se é do aluno rock lee
aluno_neji :- verificar(eh_do_aluno_neji). % verifica se é do aluno neji
aluno_tenten :- verificar(eh_do_aluno_tenten). % verifica se é do aluno tenten
aluno_gaara :- verificar(eh_do_aluno_gaara). % verifica se é do aluno gaara
aluno_kankuro :- verificar(eh_do_aluno_kankuro). % verifica se é do aluno kankuro
aluno_temari :- verificar(eh_do_aluno_temari). % verifica se é do aluno temari

% Jutsus
jutsu_katon :- verificar(usa_jutsu_katon). % verifica se usa jutsu katon
jutsu_taijutsu :- verificar(usa_jutsu_taijutsu). % verifica se usa jutsu taijutsu
jutsus_medicos :- verificar(usa_jutsus_medicos). % verifica se usa jutsus medicos
jutsu_suiton :- verificar(usa_jutsu_suiton). % verifica se usa jutsu suiton
jutsu_doton :- verificar(usa_jutsu_doton). % verifica se usa jutsu doton
jutsu_hyoton :- verificar(usa_jutsu_hyoton). % verifica se usa jutsu hyoton
jutsu_byakugan :- verificar(usa_jutsu_byakugan). % verifica se usa jutsu byakugan
jutsu_genjutsu :- verificar(usa_jutsu_genjutsu). % verifica se usa jutsu genjutsu
jutsu_sharingan :- verificar(usa_jutsu_sharingan). % verifica se usa jutsu sharingan
jutsu_medico :- verificar(usa_jutsu_medico). % verifica se usa jutsu medico
jutsu_raikiri :- verificar(usa_jutsu_raikiri). % verifica se usa jutsu raikiri
jutsu_kuchiyose :- verificar(usa_jutsu_kuchiyose). % verifica se usa jutsu kuchiyose
jutsu_kekkei_genkai :- verificar(usa_jutsu_kekkei_genkai). % verifica se usa jutsu kekkei genkai
jutsu_hiraishin :- verificar(usa_jutsu_hiraishin). % verifica se usa jutsu hiraishin
jutsu_kage_bunshin :- verificar(usa_jutsu_kage_bunshin). % verifica se usa jutsu kage bunshin
jutsu_kage_mane :- verificar(usa_jutsu_kage_mane). % verifica se usa jutsu kage mane

% % Personagens
% usando a ordem do sexo, cabelo, olhos, clã, equipe, sensei, aluno, jutsu
asuma_sarutobi :- sexo_masculino, cabelo_castanho, olhos_preto, cla_sarutobi, equipe_time_10, jutsu_katon, jutsu_taijutsu, jutsus_medicos. % Asuma Sarutobi
choji_akimichi :- sexo_masculino, cabelo_castanho, olhos_preto, cla_akimichi, equipe_time_10, sensei_sarutobi, jutsu_taijutsu, jutsus_medicos. % Choji Akimichi
gaara :- sexo_masculino, cabelo_ruivo, olhos_azul, cla_sabaku, equipe_sand, sensei_baki, jutsu_suiton, jutsu_doton. % Gaara
haku :- sexo_masculino, cabelo_branco, olhos_azul, cla_yuki, equipe_time_zabuza, sensei_zabuza, jutsu_suiton, jutsu_hyoton. % Haku
hinata_hyuuga :- sexo_feminino, cabelo_azul, olhos_branco, cla_hyuuga, equipe_time_8, sensei_kurenai, jutsu_byakugan, jutsu_taijutsu. % Hinata Hyuga
ino_yamanaka :- sexo_feminino, cabelo_loiro, olhos_azul, cla_yamanaka, equipe_time_10, sensei_sarutobi, jutsu_genjutsu. % Ino Yaman
iruka_umino :- sexo_masculino, cabelo_preto, olhos_preto, cla_umino, equipe_time_8, sensei_kakashi, jutsu_taijutsu. % Iruka Umino
itachi_uchiha :- sexo_masculino, cabelo_preto, olhos_preto, cla_uchiha, equipe_time_akatsuki, sensei_kakuzu, jutsu_genjutsu, jutsu_sharingan. % Itachi Uchiha
jiraiya :- sexo_masculino, cabelo_branco, olhos_preto, cla_sarutobi, equipe_time_jiraiya, sensei_hiruzen, jutsu_suiton, jutsu_taijutsu. % Jiraiya
kabuto_yakushi :- sexo_masculino, cabelo_preto, olhos_preto, cla_yakushi, equipe_time_orochimaru, sensei_orochimaru, jutsu_medico, jutsu_genjutsu. % Kabuto Yakushi
kakashi_hatake :- sexo_masculino, cabelo_branco, olhos_preto, cla_hatake, equipe_time_7, sensei_minato, jutsu_katon, jutsu_raikiri. % Kakashi Hatake
kiba_inuzuka :- sexo_masculino, cabelo_marrom, olhos_preto, cla_inuzuka, equipe_time_8, sensei_kurenai, jutsu_kuchiyose, jutsu_taijutsu. % Kiba Inuzuka
kimimaro :- sexo_masculino, cabelo_branco, olhos_preto, cla_kaguya, equipe_time_orochimaru, sensei_orochimaru, jutsu_kekkei_genkai, jutsu_taijutsu. % Kimimaro
kurenai_yuhi :- sexo_feminino, cabelo_vermelho, olhos_vermelho, cla_yuhi, equipe_time_8, sensei_arashi, jutsu_genjutsu. % Kurenai Yuhi
might_guy :- sexo_masculino, cabelo_preto, olhos_preto, cla_hatake, equipe_time_guy, sensei_kakashi, jutsu_taijutsu. % Might Guy
minato_namikaze :- sexo_masculino, cabelo_loiro, olhos_azul, cla_namikaze, equipe_time_minato, sensei_jiraiya, jutsu_hiraishin, jutsu_katon. % Minato Namikaze
naruto_uzumaki :- sexo_masculino, cabelo_loiro, olhos_azul, cla_uzumaki, equipe_time_7, sensei_kakashi, jutsu_kage_bunshin, jutsu_katon. % Naruto Uzumaki
neji_hyuuga :- sexo_masculino, cabelo_marrom, olhos_branco, cla_hyuuga, equipe_time_8, sensei_kakashi, jutsu_byakugan, jutsu_taijutsu. % Neji Hyuga
orochimaru :- sexo_masculino, cabelo_preto, olhos_amarelo, equipe_time_orochimaru, sensei_hiruzen, jutsu_kuchiyose. % Orochimaru
rock_lee :- sexo_masculino, cabelo_preto, olhos_preto, cla_lee, equipe_time_guy, sensei_guy, jutsu_taijutsu. % Rock Lee
sakura_haruno :- sexo_feminino, cabelo_rosa, olhos_verde, cla_haruno, equipe_time_7, sensei_kakashi, jutsu_kuchiyose, jutsu_taijutsu. % Sakura Haruno
sarutobi_hiruzen :- sexo_masculino, cabelo_branco, olhos_preto, cla_sarutobi, equipe_time_4_hokages, sensei_tobirama, jutsu_katon, jutsu_taijutsu. % Sarutobi Hiruzen
sasuke_uchiha :- sexo_masculino, cabelo_preto, olhos_preto, cla_uchiha, equipe_time_7, sensei_kakashi, jutsu_katon, jutsu_sharingan. % Sasuke Uchiha
shikamaru_nara :- sexo_masculino, cabelo_preto, olhos_preto, cla_nara, equipe_time_10, sensei_sarutobi, jutsu_kage_mane, jutsu_taijutsu. % Shikamaru Nara
shino_aburame :- sexo_masculino, cabelo_preto, olhos_preto, cla_aburame, equipe_time_8, sensei_kurenai, jutsu_kuchiyose, jutsu_taijutsu. % Shino Aburame

% Perguntas ao usuário
perguntar(Questao) :-
    write('O personagem: '),
    write(Questao), % escreve a pergunta
    write(' (s|n) ? '),
    read(Resposta), % lê a resposta
    nl, % pula linha
    ( (Resposta == sim ; Resposta == s) % se a resposta for sim
    -> assert(yes(Questao)) ; % assert para sim
        assert(no(Questao)), fail). % assert para não

:- dynamic yes/1,no/1. % declaração dinâmica de fatos

% Verificar se uma resposta é sim ou não
verificar(S) :- (yes(S) -> true ; % verifica se a resposta é sim
                    (no(S)  -> fail ; % verifica se a resposta é não
                    perguntar(S)) % se não for sim ou não, pergunta
                ).

% Desfazer as respostas
undo :- retract(yes(_)),fail. % retract para sim
undo :- retract(no(_)),fail. % retract para não
undo. % se não for sim ou não, falha