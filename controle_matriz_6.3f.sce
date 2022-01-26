tab = [[1 0 1 0 1 0 1 0]; //fila 8
       [0 1 0 1 0 1 0 1]; //fila 7
       [1 0 1 0 1 0 1 0]; //fila 6
       [0 1 0 1 0 1 0 1]; //fila 5
       [1 0 1 0 1 0 1 0]; //fila 4
       [0 1 0 1 0 1 0 1]; //fila3
       [1 0 1 0 1 0 1 0]; //fila2
       [0 1 0 1 0 1 0 1]] //fila 1
//     a b c d e f g h

numpb=12
numpp=12
//Fazer um laço de repetição para substituir cada 0 ou 1 por uma peça ou casa vazia
for casa = 1:64
    tab = string(tab)
    if tab(casa) == '0' && casa<=24 then
        tab(casa) = ' ○ '
    elseif (tab(casa) == '1' || tab(casa) =='0') && casa>24 && casa<=40 then
        tab(casa) = ' . '
     elseif tab(casa) == '0' && casa>40 then
            tab(casa) = ' ● '
    else tab(casa) = ' . '         
       end
end
mprintf("Seja bem vindo ao incrível jogo de dama do grupo 9 !\n")
mprintf("Para facilitar a sua experiência durante o jogo se atente a esses detalhes:\n")
mprintf("As pedras brancas iniciam o jogo e são representadas por  ○\n")
mprintf("As pedras pretas jogam depois das peças brancas e são representadas por  ●\n")
mprintf("As casas vazias são representadas por .\n")
mprintf("Pronto para jogar?\n")
disp(tab') //pegando a transposta
printf('Digite 1 se deseja ver as regras, 2 se deseja realizar sua jogada ou 3 se deseja sair do jogo:')
while %t
            while %t
   opção = input('Digite 1 se deseja ver as regras, 2 se deseja realizar sua jogada ou 3 se deseja sair do jogo:')
if opção == 1 
    while opção==1
        mprintf("As regras são:\n")
mprintf("1)Movimentação: cada pedra (como chamamos as peças) só pode se movimentar na DIAGONAL,\n sempre para frente. É permitido se movimentar para trás apenas para comer;\n")
mprintf("2)Ordem: SEMPRE quem dará início ao jogo é o participante com as pedras mais CLARAS;\n")
mprintf("3)Dama: Após andar todo o tabuleiro e chegar na fileira inicial do jogador adversário, \n a pedra se torna dama (Identificada no tabuleiro ☆ e ★ ).\n Com essa coroação, a peça ganha alguns poderes que são regras do jogo, são eles:\n")
mprintf("3.a - A dama pode se movimentar quantas quiser, podendo ir para frente ou para trás;\n")
mprintf("3.b - Apesar, a dama NÃO pode saltar uma pedra da mesma cor.\n")
mprintf("4)Não é permitido capturar duas ou mais peças juntas, uma atrás da outra;\n")
mprintf("5)Uma peça não se transforma em dama se apenas passar pela fileira inicial do oponente;\n")
mprintf("6) O jogo termina quando um dos jogadores tem todas as peças capturadas.No caso,esse jogador será o perdedor")
 opção = input('Digite 1 se deseja ver as regras, 2 se deseja realizar sua jogada ou 3 se deseja sair do jogo:')
 if opção == 2
     disp(tab') //pegando a transposta
     elseif opção == 3
         disp("Finalizando...")
         sleep(3,"s")
         disp("Jogo finalizado,até a próxima")
     abort
    end
end
elseif opção == 2
     disp(tab') //pegando a transposta
     elseif opção == 3
         disp("Finalizando...")
         sleep(3,"s")
         disp("Jogo finalizado,até a próxima")
     abort
     end
    for i=1:2
    if i == 1 then
       printf('É sua vez jogador um,jogue com as peças brancas\n')
       elseif i == 2 then
       printf("É sua vez jogador dois,jogue com as peças pretas\n")
    end
//Escolhendo a peça que deseja mover
        printf("Jogador %g faça sua jogada!\n", i)
        mprintf("Em que linha,de cima para baixo,está a peça que deseja mover?")
        linha = input('Linha:')//escolhendo a linha
        mprintf('Em que coluna,da esquerda para a direita,está a peça que deseja mover? ')
        coluna = input('Coluna:')//Escolhendo a coluna
//Se escolher a peça errada
if (i == 1 && tab(8*linha - (8-coluna)) ==  ' ● ') ||( i == 1 && tab(8*linha - (8-coluna)) ==  '[DP]')
       while (i == 1 && tab(8*linha - (8-coluna)) ==  ' ● ') || ( i == 1 && tab(8*linha - (8-coluna)) ==  '[DP]')
        disp("Não é possível escolher essa peça.Escolha uma peça correspondente com a sua vez de jogar")
        mprintf("Em que linha,de cima para baixo,está a peça que deseja mover?")
        linha = input('Linha:')//escolhendo a linha
        mprintf('Em que coluna,da esquerda para a direita,está a peça que deseja mover? ')
        coluna = input('Coluna:')//Escolhendo a coluna
        end 
elseif (i == 2 && tab(8*linha -(8 - coluna)) ==  ' ○ ')||( i == 2 && tab(8*linha -(8 - coluna)) ==  '[DB]')
        while (i == 2 && tab(8*linha -(8 - coluna)) ==  ' ○ ')||(i== 2 && tab(8*linha -(8 - coluna)) ==  '[DB]')
        disp("Não é possível escolher essa peça.Escolha uma peça correspondente com a sua vez de jogar")
        mprintf("Em que linha,de cima para baixo,está a peça que deseja mover?")
        linha = input('Linha:')//escolhendo a linha
        mprintf('Em que coluna,da esquerda para a direita,está a peça que deseja mover? ')
        coluna = input('Coluna:')//Escolhendo a coluna
        end
end
     
//imprimir  todos oc componentes de cada linha
        printf('A casa selecionada está na %gª linha e %gª coluna ',linha,coluna)
//Identificando para o usuário a disposição das peças
    if tab((linha*8)-(8-coluna)) == ' ● '
    disp('Nessa casa há uma peça preta')
    elseif tab((linha*8)-(8-coluna)) == ' ○ '
    disp('Nessa casa há uma peça branca')
    else//Colocando um laço para repetir até escolher uma casa ocupada 
        while  tab((linha*8)-(8-coluna)) == ' . '
        disp('Esta casa está vazia.Escolha outra')
        mprintf("Em que linha,de cima para baixo,está a peça que deseja mover?")
        linha = input('linha:')//escolhendo a linha
        mprintf('Em que coluna,da esquerda para a direita,está a peça que deseja mover? ')
        coluna = input('coluna:')//Escolhendo a coluna
        end
    end
disp(' ')
//Escolhendo a casa para a qual a peça será movimentada
printf('Peça selecionada.Agora selecione a casa para a qual deseja movê-la\n')
printf("Digite a linha para a qual deseja mover a peça")
nlinha = input("Linha:")//Escolhendo a linha para a qual deseja-se mover a peça
printf("Digite a coluna para a qual deseja mover a peça\n")
ncoluna = input("coluna:")
if abs(nlinha-linha) ~= 1 && abs(ncoluna - coluna) ~= 1 && tab(((nlinha+linha)/2)*8-(8-(coluna+ncoluna)/2)) == ' . ' 
    while  abs(nlinha-linha) ~= 1 && abs(ncoluna - coluna) ~= 1 && tab (((nlinha+linha)/2)*8-(8-(coluna+ncoluna)/2)) == ' . ' 
                mprintf("Jogada inválida.Tente novamente\n")
                disp(tab')
                mprintf("Em que linha,de cima para baixo,está a peça que deseja mover?")
                linha = input('Linha:')//escolhendo a linha
                mprintf('Em que coluna,da esquerda para a direita,está a peça que deseja mover? ')
                coluna = input('Coluna:')//Escolhendo a coluna
                printf("Digite a linha para a qual deseja mover a peça")
                nlinha = input("Linha:")//Escolhendo a linha para a qual deseja-se mover a peça
                printf("Digite a coluna para a qual deseja mover a peça\n")
                ncoluna = input("coluna:")
                disp(tab')
                end
end
if (abs(nlinha-linha) == 1 && abs(ncoluna - coluna) == 1 && tab(8*linha-(8-coluna))== " ○ " && nlinha < linha) ||  (tab(8*linha-(8-coluna))== ' ● ' && nlinha > linha)
    while (abs(nlinha-linha) == 1 && abs(ncoluna - coluna) == 1 && tab(8*linha-(8-coluna))== " ○ " && nlinha < linha) ||  (tab(8*linha-(8-coluna))== ' ● ' && nlinha > linha)
     mprintf("Jogada inválida.Tente novamente\n")
               disp(tab')
                mprintf("Em que linha,de cima para baixo,está a peça que deseja mover?")
                linha = input('Linha:')//escolhendo a linha
                mprintf('Em que coluna,da esquerda para a direita,está a peça que deseja mover? ')
                coluna = input('Coluna:')//Escolhendo a coluna
                printf("Digite a linha para a qual deseja mover a peça")
                nlinha = input("Linha:")//Escolhendo a linha para a qual deseja-se mover a peça
                printf("Digite a coluna para a qual deseja mover a peça\n")
                ncoluna = input("coluna:")
                disp(tab')
                end
end
//================================================================================Ao comer a peça================================================================================
if (abs(nlinha-linha) == 2 && tab(8*linha-(8-coluna))== " ○ " && tab(((nlinha+linha)/2)*8-(8-((coluna+ncoluna)/2)))==" ○ ") || tab(8*linha-(8-coluna))== " ● " && tab(((nlinha+linha)/2)*8-(8-((coluna+ncoluna)/2))) == ' ● ' && tab(((linha+nlinha)/2)*8-(8-(coluna+ncoluna)/2)) == ' ● ' 
                while abs(nlinha-linha) == 2 && (tab(8*linha-(8-coluna)) == " ○ " && tab(((nlinha+linha)/2)*8-(8-((coluna+ncoluna)/2)))==" ○ ") || tab(8*linha-(8-coluna)) == " ● " && tab(((nlinha+linha)/2)*8-(8-((coluna+ncoluna)/2))) == ' ● ' && tab(((linha+nlinha)/2)*8-(8-(coluna+ncoluna)/2)) == ' ● '
                mprintf("Nao é possivel comer esta peça.Tente novamente\n")
                disp(tab')
                mprintf("Em que linha,de cima para baixo,está a peça que deseja mover?")
                linha = input('Linha:')//escolhendo a linha
                mprintf('Em que coluna,da esquerda para a direita,está a peça que deseja mover? ')
                coluna = input('Coluna:')//Escolhendo a coluna
                printf("Digite a linha para a qual deseja mover a peça")
                nlinha = input("Linha:")//Escolhendo a linha para a qual deseja-se mover a peça
                printf("Digite a coluna para a qual deseja mover a peça\n")
                ncoluna = input("coluna:")
                disp(tab')
                 end 
            end
printf("A peça será  movida para a %gª coluna e a %gª linha\n",ncoluna,nlinha) 
//Verificando se a casa de destino está na diagonal
//======================================================================Movendo a peça uma casa==================================================================================
if tab(8*linha-(8-coluna)) ~= " ☆ " && tab(8*linha-(8-coluna)) ~= " ★ " 
if ((nlinha*8)-(8-ncoluna) == (linha+1)*(8)-(8-(coluna-1))||(nlinha*8)-(8-ncoluna) == (linha+1)*(8)-(8 - (coluna+1))||(nlinha*8)-(8-ncoluna) == (linha-1)*(8)-(8 - (coluna+1))||(nlinha*8)-(8-ncoluna) == (linha-1)*(8)-(8 - (coluna-1))) && tab((nlinha*8)-(8 -ncoluna)) == ' . '
tab((nlinha*8)-(8-ncoluna)) =   tab((linha*8)-(8-coluna))//movendo uma diagonal
tab((linha*8)-(8-coluna)) =   ' . '
disp(tab')
disp('A peça foi movida uma casa na diagonal')

elseif ((nlinha*8)-(8-ncoluna) == (linha+2)*(8)-(8-(coluna-2))||(nlinha*8)-(8-ncoluna) == (linha+2)*(8)-(8 - (coluna+2))||(nlinha*8)-(8-ncoluna) == (linha-2)*(8)-(8 - (coluna+2))||(nlinha*8)-(8-ncoluna) == (linha-2)*(8)-(8 - (coluna-2))) && tab((nlinha*8)-(8 -ncoluna)) == ' . '
//Condição para se a casa de destino for duas diagonais de distância
tab((nlinha*8)-(8-ncoluna)) = tab((linha*8)-(8-coluna))//Move a peça
    if nlinha>linha
        if ncoluna>coluna 
            if tab((linha+1)*(8)-(8 - (coluna+1))) == ' ○ '
            numpb=numpb-1
        elseif tab((linha+1)*(8)-(8 - (coluna+1))) == ' ● '
            numpp=numpp-1
            end
            tab((linha+1)*(8)-(8 - (coluna+1))) = " . "
        elseif ncoluna < coluna
             if tab((linha+1)*(8)-(8 - (coluna-1))) == ' ○ '
            numpb=numpb-1
        elseif tab((linha+1)*(8)-(8 - (coluna-1))) == ' ● '
            numpp=numpp-1
            end
                tab((linha+1)*(8)-(8 - (coluna-1))) = " . "
            end
    end
    
    if nlinha<linha
        if ncoluna>coluna
              if tab((linha-1)*(8)-(8 - (coluna+1))) ==' ○ '
            numpb=numpb-1
        elseif tab((linha-1)*(8)-(8 - (coluna+1))) == ' ● '
            numpp=numpp-1
            end
            tab((linha-1)*(8)-(8 - (coluna+1))) = " . "
         elseif ncoluna < coluna
               if tab((linha-1)*(8)-(8 - (coluna-1))) == ' ○ '
            numpb=numpb-1
        elseif tab((linha-1)*(8)-(8 - (coluna-1))) == ' ● '
            numpp=numpp-1
            end
            tab((linha-1)*(8)-(8 - (coluna-1))) = " . "
        end
    end  
tab((linha*8)-(8-coluna)) =   ' . '
disp(tab')
//Ao comer a peça. para trás
    if nlinha<linha
        if ncoluna<coluna 
              if tab((linha-1)*(8)-(8 - (coluna-1))) == ' ○ '
            numpb=numpb-1
        elseif tab((linha-1)*(8)-(8 - (coluna-1))) == ' ● '
            numpp=numpp-1
            end
        tab((linha-1)*(8)-(8 - (coluna-1))) = " . "
    elseif ncoluna > coluna
          if tab((linha-1)*(8)-(8 - (coluna+1))) == ' ○ '
            numpb=numpb-1
        elseif tab((linha-1)*(8)-(8 - (coluna+1))) == ' ● '
            numpp=numpp-1
            end
        tab((linha-1)*(8)-(8 - (coluna+1))) = " . "
            end
    end
    
    if nlinha>linha
        if ncoluna<coluna
              if tab((linha+1)*(8)-(8 - (coluna-1))) ==' ○ '
            numpb=numpb-1
        elseif tab((linha+1)*(8)-(8 - (coluna-1))) == ' ● '
            numpp=numpp-1
            end
            tab((linha+1)*(8)-(8 - (coluna-1))) = " . "
        elseif ncoluna>coluna
              if tab((linha+1)*(8)-(8 - (coluna+1))) == ' ○ '
            numpb=numpb-1
        elseif tab((linha+1)*(8)-(8 - (coluna+1))) ==' ● '
            numpp=numpp-1
            end
            tab((linha+1)*(8)-(8 - (coluna+1))) = " . "
        end
    end
  
tab((linha*8)-(8-coluna)) =   ' . '
disp(tab')
  
else 
        while ((nlinha*8)-(8-ncoluna) ~= (linha+1)*(8)-(8-(coluna-1))&&(nlinha*8)-(8-ncoluna) ~= (linha+1)*(8)-(8 - (coluna+1)) && (nlinha*8)-(8-ncoluna) ~= (linha-1)*(8)-(8 - (coluna+1)) && (nlinha*8)-(8-ncoluna) ~= (linha-1)*(8)-(8 - (coluna-1))) || tab((nlinha*8)-(8 -ncoluna)) ~= ' . '
        disp("Jogada inválida.Tente novamente")
        printf("Digite a linha para a qual deseja mover a peça")
        nlinha = input("Linha: ")//Escolhendo a linha para a qual deseja-se mover a peça
        printf("Digite a coluna para a qual deseja mover a peça\n")
        ncoluna = input("coluna:")
         end
    printf("A peça será  movida para a %gª coluna e a %gª linha\n",ncoluna,nlinha)
    tab((nlinha*8)-(8-ncoluna)) =   tab((linha*8)-(8-coluna))//movendo uma diagonal
    tab((linha*8)-(8-coluna)) =   ' . '
//disp(tab')
end//Fim do if
end
//==============================================================================Fazendo a dama===================================================================================
        if nlinha == 8 && tab(8*nlinha - (8-ncoluna)) == ' ○ '
        tab((8*nlinha) - (8-ncoluna)) = " ☆ "
        elseif nlinha == 1 && tab((8*nlinha) -(8-ncoluna)) == ' ● '
        tab((8*nlinha) - (8-ncoluna)) = " ★ "
    end//fim do if da linha 162
       if nlinha-linha == 0 || ncoluna-coluna == 0 
          while nlinha-linha == 0 || ncoluna-coluna == 0
          disp("Jogada inválida.Tente novamente" )
          printf("Digite a linha para a qual deseja mover a peça")
          nlinha = input("Linha:")//Escolhendo a linha para a qual deseja-se mover a peça
          printf("Digite a coluna para a qual deseja mover a peça\n")
          ncoluna = input("coluna:") 
          end
      end
       if tab((8*linha)-(8-coluna)) == ' ☆ '  
            tab((8*nlinha)-(8-ncoluna)) = ' ☆ '
            tab(linha*8-(8-coluna))= " . "
            disp("Você selecionou a Dama branca")
        elseif tab((8*linha)-(8-coluna)) == ' ★ '
            tab((8*nlinha)-(8-ncoluna)) = ' ★ '
            tab(linha*8-(8-coluna))= " . "
            disp("Você selecionou a Dama Preta")
        end
        if abs(nlinha-linha) == 2 && tab(((linha+nlinha)/2)*8 -(8-((coluna+ncoluna)/2))) ~= " . "
        tab(((linha+nlinha)/2)*8 -(8-((coluna+ncoluna)/2))) = " . "
    end
    if numpb==0
        disp("Parabéns jogador de pretas voce é o vencedor")
    elseif numpp==0
        disp("Parabéns jogador de brancas voce é o vencedor")
        end
        end
        disp(tab')
    end
end


