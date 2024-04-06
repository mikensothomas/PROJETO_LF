iniciar :- hipotese(Personagem),
      write('Eu acho que o personagem é: '),
      write(Personagem),
      nl,
      undo.

/* hipóteses a serem testadas */
hipotese(naruto)   :- naruto, !.
hipotese(sasuke)   :- sasuke, !.
hipotese(sakura)   :- sakura, !.
hipotese(kakashi)  :- kakashi, !.
hipotese(hinata)   :- hinata, !.
hipotese(shikamaru) :- shikamaru, !.
hipotese(gaara)    :- gaara, !.
hipotese(rock_lee) :- rock_lee, !.
hipotese(neji)     :- neji, !.
hipotese(ino)      :- ino, !.
hipotese(desconhecido).             /* sem diagnóstico */

/* Regras de identificação dos personagens */
naruto :- ninja,
          verificar(tem_chakra),
          verificar(usa_tecnica_clones_sombra),
          verificar(usa_tecnica_rasengan).
                 
sasuke :- ninja,
          verificar(tem_chakra),
          verificar(usa_tecnica_sharingan),
          verificar(usa_tecnica_chidori).
                 
sakura :- ninja,
          verificar(tem_chakra),
          verificar(habilidade_medica).
                   
kakashi :- ninja,
           verificar(tem_chakra),
           verificar(usa_tecnica_sharingan),
           verificar(usa_tecnica_raikiri).
                   
hinata :- ninja,
          verificar(tem_chakra),
          verificar(usa_tecnica_byakugan),
          verificar(usa_tecnica_juho_soshiken).
                   
shikamaru :- ninja,
             verificar(tem_chakra),
             verificar(inteligente),
             verificar(usa_tecnica_kagemane).
                   
gaara :- ninja,
         verificar(tem_chakra),
         verificar(controle_da_areia).
                   
rock_lee :- ninja,
            verificar(usa_tecnica_peso_abertura_dos_portoes),
            verificar(habilidade_fisica_superior).
                   
neji :- ninja,
        verificar(usa_tecnica_byakugan),
        verificar(usa_tecnica_hakke_rokujuuyon_sho).
                   
ino :- ninja,
       verificar(usa_tecnica_jutsu_mind_transfer),
       verificar(habilidade_de_mentalismo).

/* regras de classificação */
ninja  :- verificar(tem_habilidade_de_combate), !.

/* Como fazer perguntas */
perguntar(Questao) :-
    write('O personagem tem o seguinte atributo: '),
    write(Questao),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
      ->
       assert(yes(Questao)) ;
       assert(no(Questao)), fail).

:- dynamic yes/1,no/1.

/* Como verificar algo */
verificar(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     perguntar(S))).

/* Desfaz todas as afirmações sim / não */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.