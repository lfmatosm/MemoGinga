======================================
|                                    |
|                                    |
|  MemoGinga pre-alpha v. 0.14       |
|                                    |
|                                    |
|	Laborat�rio M�diaCom         |
|   Universidade Federal Fluminense  |
|                                    |
|    mayarahelena@midiacom.uff.br    |
|     lfmatosmelo@midiacom.uff.br    |
|                                    |
|                                    |
======================================

--v. 0.14 (atual):

*Bugs conhecidos: nenhum.
*Implementa��es feitas sobre a vers�o anterior (v. 0.13), bugs resolvidos:
-N�veis 2 e 3 adicionados.
-Pontua��o e tempo da partida corrigidos.

________________________________________________________________________________________________________________________________________________
--v. 0.13:

*Bugs conhecidos:
-C�lculo de pontua��o e tempo de jogo ao fim de uma partida.

*Implementa��es feitas sobre a vers�o anterior (v. 0.12):
-Organiza��o do jogo em contextos internos ao documento 'main.ncl'.

________________________________________________________________________________________________________________________________________________
--v. 0.12 (atual):

*A fazer:
-Formas geom�tricas/bot�es menos feias(os).
-Organizar o posicionamento das formas na tela/bot�es.
-Organizar elos e m�dias dentro de contextos espec�ficos.
-N�veis de jogo (com altera��es de dificuldade - mudan�as de forma, cor, etc.).
-�ncora de �udio descrevendo como o jogo funciona a seu in�cio.

*Bugs resolvidos da vers�o anterior (v. 0.11):
-Bot�o "Sair" no meio do jogo (encerra a partida e retorna ao Menu Inicial) corrigido.

________________________________________________________________________________________________________________________________________________
--v. 0.11:

*Bugs conhecidos:
-Eventualmente uma imagem/forma n�o � exibida: este erro foi observado em apenas uma �nica ocasi�o e n�o se sabe sua origem.

*Bugs resolvidos da vers�o anterior (v. 0.1):
-Problema de colora��o das imagens resolvido.
-Exibi��o em momentos indesejados do su�te de imagens resolvida.
-Bot�o "Sair" corrigido; funciona corretamente agora.

________________________________________________________________________________________________________________________________________________
--v. 0.1:

*Bugs conhecidos:
-Transi��o �s vezes n�o ocorre - n�o ocorre altera��o da imagem, mesmo ocorrendo computa��o de novo elemento mostrado (contagem de imagens exibidas).
-Imagens com cores muito escuras - colora��o n�o natural.
-Su�te de imagens � exibido no menu inicial ap�s o rein�cio da aplica��o em algumas vezes.
-Bot�o "Sair" n�o funciona; n�o termina a execu��o da aplica��o.

*Bugs resolvidos da vers�o anterior (v. 0.05):
-Transi��es que ocorriam para uma imagem "invis�vel" e depois iam para imagens "vis�veis".
-Estouro do limite definido de imagens exibidas (o script ignorava o limite de 12 imagens).
-Erro de postagem do 'valor_sorteado' no n� Lua. Este erro provavelmente estava associado ao uso simult�neo da vari�vel/propriedade 'valor_sorteado'
 para indicar a tecla digitada pelo usu�rio durante o jogo e definir a imagem a ser exibida pelo su�te de imagens.

________________________________________________________________________________________________________________________________________________