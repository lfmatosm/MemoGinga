======================================
|                                    |
|                                    |
|  MemoGinga pre-alpha v. 0.14       |
|                                    |
|                                    |
|	Laboratório MídiaCom         |
|   Universidade Federal Fluminense  |
|                                    |
|    mayarahelena@midiacom.uff.br    |
|     lfmatosmelo@midiacom.uff.br    |
|                                    |
|                                    |
======================================

--v. 0.14 (atual):

*Bugs conhecidos: nenhum.
*Implementações feitas sobre a versão anterior (v. 0.13), bugs resolvidos:
-Níveis 2 e 3 adicionados.
-Pontuação e tempo da partida corrigidos.

________________________________________________________________________________________________________________________________________________
--v. 0.13:

*Bugs conhecidos:
-Cálculo de pontuação e tempo de jogo ao fim de uma partida.

*Implementações feitas sobre a versão anterior (v. 0.12):
-Organização do jogo em contextos internos ao documento 'main.ncl'.

________________________________________________________________________________________________________________________________________________
--v. 0.12 (atual):

*A fazer:
-Formas geométricas/botões menos feias(os).
-Organizar o posicionamento das formas na tela/botões.
-Organizar elos e mídias dentro de contextos específicos.
-Níveis de jogo (com alterações de dificuldade - mudanças de forma, cor, etc.).
-Âncora de áudio descrevendo como o jogo funciona a seu início.

*Bugs resolvidos da versão anterior (v. 0.11):
-Botão "Sair" no meio do jogo (encerra a partida e retorna ao Menu Inicial) corrigido.

________________________________________________________________________________________________________________________________________________
--v. 0.11:

*Bugs conhecidos:
-Eventualmente uma imagem/forma não é exibida: este erro foi observado em apenas uma única ocasião e não se sabe sua origem.

*Bugs resolvidos da versão anterior (v. 0.1):
-Problema de coloração das imagens resolvido.
-Exibição em momentos indesejados do suíte de imagens resolvida.
-Botão "Sair" corrigido; funciona corretamente agora.

________________________________________________________________________________________________________________________________________________
--v. 0.1:

*Bugs conhecidos:
-Transição às vezes não ocorre - não ocorre alteração da imagem, mesmo ocorrendo computação de novo elemento mostrado (contagem de imagens exibidas).
-Imagens com cores muito escuras - coloração não natural.
-Suíte de imagens é exibido no menu inicial após o reinício da aplicação em algumas vezes.
-Botão "Sair" não funciona; não termina a execução da aplicação.

*Bugs resolvidos da versão anterior (v. 0.05):
-Transições que ocorriam para uma imagem "invisível" e depois iam para imagens "visíveis".
-Estouro do limite definido de imagens exibidas (o script ignorava o limite de 12 imagens).
-Erro de postagem do 'valor_sorteado' no nó Lua. Este erro provavelmente estava associado ao uso simultâneo da variável/propriedade 'valor_sorteado'
 para indicar a tecla digitada pelo usuário durante o jogo e definir a imagem a ser exibida pelo suíte de imagens.

________________________________________________________________________________________________________________________________________________
