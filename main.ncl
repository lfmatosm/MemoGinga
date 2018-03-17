<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="main">
    <head>
    	<ruleBase>
            <rule id="r_nv1" var="nivelNo" comparator="eq" value="1" />
            <rule id="r_nv2" var="nivelNo" comparator="eq" value="2" />

    		<rule id="img_1" var="img_num" comparator="eq" value="1" />
            <rule id="img_2" var="img_num" comparator="eq" value="2" />
            <rule id="img_3" var="img_num" comparator="eq" value="3" />
            <rule id="img_4" var="img_num" comparator="eq" value="4" />
            <rule id="img_5" var="img_num" comparator="eq" value="5" />
            <rule id="img_6" var="img_num" comparator="eq" value="6" />
            <rule id="img_7" var="img_num" comparator="eq" value="7" />
            <rule id="img_8" var="img_num" comparator="eq" value="8" />
            <rule id="img_9" var="img_num" comparator="eq" value="9" />
            <rule id="img_10" var="img_num" comparator="eq" value="10" />
            <rule id="img_11" var="img_num" comparator="eq" value="11" />
            <rule id="img_12" var="img_num" comparator="eq" value="12" />
        </ruleBase>

        <transitionBase>
            <transition dur="0.3s" id="fadeTransition" type="fade" />
            <transition dur="0.2s" id="fadeTransFast" type="fade" />
            <transition dur="0.1s" id="fadeVeryFast" type="fade" />
        </transitionBase>
    	
        <regionBase>
            <region id="rgVideo" left="0%" top="0%" width="100%" height="100%" zIndex="0" />
            <region id="rgMenu" top="55%" width="20%" height="40%" zIndex="1">
                <region id="rgBotao1"  left="30%" height="40%" />
                <region id="rgBotao2"  left="30%" top="50%" height="40%" />        
            </region>
            <region id="rgBotaoStart" top="70%" left="35%" width="30%" height="10%" zIndex="1" />
            <region id="rgBotaoSair" top="80%" left="35%" width="30%" height="10%" zIndex="1" />
            <region id="rgForma" top="30%" left="25%" width="50%" height="50%" zIndex="1" />
            <region id="rgForma2" top="30%" left="10%" width="25%" height="25%" zIndex="1" />
            <region id="rgForma3" top="30%" right="10%" width="25%" height="25%" zIndex="1" />
            <region id="rgLua" top="45%" left="38%" width="50%" height="50%" zIndex="1" />
            <region id="rgAudio" top="0%" left="0%" width="0%" height="0%" zIndex="1" />
            <region id="rgBotaoSairPartida" top="90%" left="70%" width="30%" height="10%" zIndex="1" />
        </regionBase>
        
        <descriptorBase>
            <descriptor id="dVideo" region="rgVideo" />
            <descriptor id="dForma" region="rgForma" />
            <descriptor id="dTelaFinal" region="rgVideo" explicitDur="5s" />
            <descriptor id="dLua" region="rgLua" />
            <descriptor id="dBotaoIniciaJogo" region="rgBotaoStart" focusIndex="1" moveUp="2" moveDown="2" />
            <descriptor id="dBotaoSairJogo" region="rgBotaoSair" focusIndex="2" moveUp="1" moveDown="1" />
            <descriptor id="dBotao1" region="rgBotao1" focusIndex="1" moveUp="3" moveDown="2" />
            <descriptor id="dBotao2" region="rgBotao2" focusIndex="2" moveUp="1" moveDown="3" />
            <descriptor id="dBotaoSairPartida" region="rgBotaoSairPartida" focusIndex="3" moveUp="2" moveDown="1" />
            <descriptor id="dAudio" region="rgAudio" />
            <descriptor id="dForma2" region="rgForma2" />
            <descriptor id="dForma3" region="rgForma3" />
        </descriptorBase>        
        
        <connectorBase>
            <importBase alias="conectores" documentURI="connectors/connectors.ncl" />
        </connectorBase>
    </head>
 
    <body id="ctx_principal">
        <media id="noDeConfig" type="application/x-ginga-settings">
            <property name="nivelNo" value="1" />
            <property name="figSorteada1" value="1" />
            <property name="figSorteada2" value="1" />
            <property name="figSorteada3" value="1" />
            <property name="figSorteada4" value="1" />
            <property name="img_num" value="1" />
        </media>

        <port id="pFundo" component="fundoInicial" />
        
        <media id="fundoInicial" descriptor="dVideo" src="imgs/fundo_inicial.png" />
        <media id="fundoJogo" descriptor="dVideo" src="imgs/fundo_jogo.png" />
        <media id="fundoJogoInicial" descriptor="dTelaFinal" src="imgs/fundo_img1.png" />
        <media id="fundoFinal" descriptor="dTelaFinal" src="imgs/fundo_final.png" />
        <media id="botaoIniciaJogo" descriptor="dBotaoIniciaJogo" src="imgs/botaoIniciar.png" />
        <media id="botaoSairJogo" descriptor="dBotaoSairJogo" src="imgs/botaoSair.png" />
        <media id="botaoErrado" descriptor="dBotao1" src="imgs/botaoCancelar.png" />
        <media id="botaoCerto" descriptor="dBotao2" src="imgs/botaoOk.png"/>
        <media id="audioMenuInicial" descriptor="dAudio" src="audio/audJMenuInicial.mp3"/>
        <media id="audioJogoTelaInicial" descriptor="dAudio" src="audio/audJTelaInicialJogo.mp3"/>
        <media id="audioJogoTelaRegular" descriptor="dAudio" src="audio/audJTelaRegularJogo_2.mp3"/>
        <media id="botaoSairPartida" descriptor="dBotaoSairPartida" src="imgs/botaoSair.png" />

        <media id="game_script" src="lua/game_script.lua" descriptor="dLua">
            <property name="nivel" value="1" />
            <property name="figSorteada1" value="1" />
            <property name="figSorteada2" value="1" />
            <property name="figSorteada3" value="1" />
            <property name="figSorteada4" value="1" />
            <property name="valor_sorteado" />
            <property name="opcao" />
            <property name="counter" value="0" />
            <property name="fim_de_jogo" value="0" />
        </media>

        <switch id="escolhe_imagens">
            <bindRule rule="img_1" constituent="img1" />
            <bindRule rule="img_2" constituent="img2" />
            <bindRule rule="img_3" constituent="img3" />
            <bindRule rule="img_4" constituent="img4" />
            <bindRule rule="img_5" constituent="img5" />
            <bindRule rule="img_6" constituent="img6" />
            <bindRule rule="img_7" constituent="img7" />
            <bindRule rule="img_8" constituent="img8" />
            <bindRule rule="img_9" constituent="img9" />
            <bindRule rule="img_10" constituent="img10" />
            <bindRule rule="img_11" constituent="img11" />
            <bindRule rule="img_12" constituent="img12" />

            <media id="img1" src="imgs/formas/C_Amarelo.png" descriptor="dForma" />
            <media id="img2" src="imgs/formas/C_Azul.png" descriptor="dForma" />
            <media id="img3" src="imgs/formas/C_Vermelho.png" descriptor="dForma" />
            <media id="img4" src="imgs/formas/E_Amarelo.png" descriptor="dForma" />
            <media id="img5" src="imgs/formas/E_Azul.png" descriptor="dForma" />
            <media id="img6" src="imgs/formas/E_Vermelho.png" descriptor="dForma" />
            <media id="img7" src="imgs/formas/Q_Amarelo.png" descriptor="dForma" />
            <media id="img8" src="imgs/formas/Q_Azul.png" descriptor="dForma" />
            <media id="img9" src="imgs/formas/Q_Vermelho.png" descriptor="dForma" />
            <media id="img10" src="imgs/formas/T_Amarelo.png" descriptor="dForma" />
            <media id="img11" src="imgs/formas/T_Azul.png" descriptor="dForma" />
            <media id="img12" src="imgs/formas/T_Vermelho.png" descriptor="dForma" />
        </switch>

        <link xconnector="conectores#onBeginStartNItems">
            <bind component="fundoInicial" role="onBegin" />
            <bind component="botaoIniciaJogo" role="start" />
            <bind component="botaoSairJogo" role="start" />
            <bind component="game_script" role="start" />
            <bind component="audioMenuInicial" role="start" />
        </link>

        <link xconnector="conectores#onSelectionStart">
            <bind component="botaoIniciaJogo" role="onSelection" />
            <bind component="ctx_nivel1" role="start" />
        </link>

        <link xconnector="conectores#onSelectionStopNItems">
            <bind component="botaoIniciaJogo" role="onSelection" />
            <bind component="audioMenuInicial" role="stop" />
            <bind component="botaoIniciaJogo" role="stop" />
            <bind component="botaoSairJogo" role="stop" />
            <bind component="fundoInicial" role="stop" />
        </link>

        <link xconnector="conectores#onKeySelectionStopNItems">
            <bind component="fundoInicial" role="onSelection">
                <bindParam name="key" value="GREEN" />
            </bind>
            <bind component="botaoIniciaJogo" role="stop" />
            <bind component="audioMenuInicial" role="stop" />
            <bind component="botaoSairJogo" role="stop" />
            <bind component="fundoInicial" role="stop" />
        </link>

        <link xconnector="conectores#onSelectionAbort">
            <bind component="botaoSairJogo" role="onSelection" />
            <bind component="ctx_principal" role="abort" />
        </link>

        <link xconnector="conectores#onKeySelectionAbortNItems">
            <bind component="fundoInicial" role="onSelection">
                <bindParam name="key" value="RED" />
            </bind>
            <bind component="ctx_principal" role="abort" />
        </link>

        <link xconnector="conectores#onEndStartNItems">
            <bind component="fundoInicial" role="onEnd" />
            <bind component="ctx_nivel1" role="start" />
        </link>

        <context id="ctx_nivel1">
            <port id="pFundoJ" component="fundoJIni" />

            <media id="config"      refer="noDeConfig"       instance="instSame" />
            <media id="fundoJ"      refer="fundoJogo"        instance="instSame" />
            <media id="fundoJIni"   refer="fundoJogoInicial" instance="instSame" />
            <media id="fundoFin"    refer="fundoFinal"       instance="instSame" />
            <media id="luaNivel1"   refer="game_script"      instance="new" />
            <media id="suiteNivel1" refer="escolhe_imagens"  instance="new" />
            <media id="botSairP"    refer="botaoSairPartida" instance="instSame" />
            <media id="botPos"      refer="botaoCerto"       instance="instSame" />
            <media id="botNeg"      refer="botaoErrado"      instance="instSame" />

            <media id="audioIni"    refer="audioJogoTelaInicial" instance="instSame" />
            <media id="audioReg"    refer="audioJogoTelaRegular" instance="instSame" />

            <link xconnector="conectores#onBeginStartNItems">
                <bind component="fundoJIni" role="onBegin" />
                <bind component="audioIni" role="start" />
                <bind component="luaNivel1" role="start" />
            </link>

            <!--Ao iniciar 'fundoJogoInicial' sorteia novo valor de imagem a ser exibida pelo suite, e armazena-o no no Lua:-->
            <link xconnector="conectores#onBeginSet">
                <bind component="luaNivel1" role="onBegin" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="-1" />
                </bind>
            </link>
        
            <!--Analogo ao elo acima: quando inicia-se a tela 'fundoJogo' sorteia nova imagem e armazena seu valor no no Lua.-->
            <link xconnector="conectores#onBeginSet">
                <bind component="fundoJ" role="onBegin" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="-1" />
                </bind>
            </link>

            <!--Ao fim do 'fundojogoInicial' inicia o 'fundoJogo' e os botoes disponiveis ao jogador:-->
            <link xconnector="conectores#onEndStartNItems" >
                <bind component="fundoJIni" role="onEnd"/>
                <bind component="fundoJ" role="start"/>
                <bind component="botNeg" role="start" />
                <bind component="botPos" role="start" />
                <bind component="botSairP" role="start" />
                <bind component="audioReg" role="start" />
            </link>

            <!--Funcoes das teclas de selecao na tela durante o jogo:-->
            <link xconnector="conectores#onSelectionSet">
                <bind component="botPos" role="onSelection" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <!--Analogo ao elo acima.-->
            <link xconnector="conectores#onSelectionSet">
                <bind component="botNeg" role="onSelection" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onSelectionStop">
                <bind component="botSairP" role="onSelection" />
                <bind component="ctx_nivel1" role="stop" />
            </link>

            <link xconnector="conectores#onKeySelectionStop">
                <bind component="fundoJ" role="onSelection">
                    <bindParam name="key" value="YELLOW" />
                </bind>
                <bind component="ctx_nivel1" role="stop" />
            </link>

            <!--Funcoes das teclas no controle remoto durante o jogo:-->
            <link xconnector="conectores#onKeySelectionSet">
                <!--Enquanto fundoJogo esta sendo apresentado, se o usuario apertar o botao verde no controle remoto...-->
                <bind component="fundoJ" role="onSelection">
                    <bindParam name="key" value="GREEN" />
                </bind>
                <!--...modifica-se a propriedade do no Lua, desencadeando alteração na propriedade do no settings tambem (funcao dos conectores seguintes).-->
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <!--Analogo ao elo acima.-->
            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ" role="onSelection">
                    <bindParam name="key" value="RED" />
                </bind>
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionStop">
                <bind component="luaNivel1" interface="opcao" role="onEndAttribution" />
                <bind component="suiteNivel1" role="stop" />
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel1" interface="valor_sorteado" role="onEndAttribution" />
                <bind component="luaNivel1" interface="valor_sorteado" role="get" />
                <bind component="config" interface="img_num" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionStartDelay">
                <bind component="config" interface="img_num" role="onEndAttribution" />
                <bind component="suiteNivel1" role="start" >
                    <bindParam name="delay" value="0.1s" />
                </bind>
            </link>

            <!--Cada vez que o suite 'escolhe_imagens' eh iniciado, testa se o numero de valores sorteados/imagens exibidas eh igual a 12.
            Nesse caso ocorre o fim do jogo.-->
            <link xconnector="conectores#onBeginPropertyTestEqStop">
                <!--Este valor sera comparado com o valor da propriedade/variavel 'counter' do no Lua 'game_script'.-->
                <linkParam name="var" value="12" />
                <bind role="onBegin" component="suiteNivel1" />
                <bind role="equals" component="luaNivel1" interface="counter" />
                <bind role="stop" component="fundoJ"/>
            </link>

            <!--Ao fim do jogo, encerra a execucao do suite e dos botoes.-->
            <link xconnector="conectores#onEndStopNItems">
                <bind component="fundoJ" role="onEnd" />
                <bind component="suiteNivel1" role="stop" />
                <bind component="botSairP" role="stop" />
                <bind component="botNeg" role="stop" />
                <bind component="botPos" role="stop" />
            </link>

            <!--Ao fim do fundo de jogo (ou seja, fim do jogo) inicia a tela de fundo final:-->
            <link xconnector="conectores#onEndStartNItems">
                <bind component="botPos" role="onEnd" />
                <bind component="fundoFin" role="start" />
            </link>

            <!--Ao inicio da tela final, posta um evento NCLua que dispara a exibicao do num. de acertos do jogador:-->
            <link xconnector="conectores#onBeginSet">
                <bind component="fundoFin" role="onBegin" />
                <bind component="luaNivel1" interface="fim_de_jogo" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <!--Ao fim da exibicao da tela final, reinicia o jogo:-->
            <link xconnector="conectores#onEndStop">
                <bind component="fundoFin" role="onEnd" />
                <bind component="luaNivel1" role="stop" />
            </link>

            <link xconnector="conectores#onEndStop">
                <bind component="luaNivel1" role="onEnd" />
                <bind component="ctx_nivel1" role="stop" />
            </link>
        </context>

        <context id="ctx_nivel2">
            <port id="pFundoJ" component="fundoJIni" />
        
            <media id="config"      refer="noDeConfig"       instance="instSame" />
            <media id="fundoJ"      refer="fundoJogo"        instance="instSame" />
            <media id="fundoJIni"   refer="fundoJogoInicial" instance="instSame" />
            <media id="fundoFin"    refer="fundoFinal"       instance="instSame" />
            <media id="luaNivel2"   refer="game_script"      instance="new" />
            <media id="suite1"    refer="escolhe_imagens"  instance="new" />
            <media id="suite2"    refer="escolhe_imagens"  instance="new" />
            <media id="suite3"    refer="escolhe_imagens"  instance="new" />
            <media id="botSairP"    refer="botaoSairPartida" instance="instSame" />
            <media id="botPos"      refer="botaoCerto"       instance="instSame" />
            <media id="botNeg"      refer="botaoErrado"      instance="instSame" />

            <media id="audioIni"    refer="audioJogoTelaInicial" instance="instSame" />
            <media id="audioReg"    refer="audioJogoTelaRegular" instance="instSame" />

            <switch id="escolhe_imagens">
                <bindRule rule="img_1" constituent="img1" />
                <bindRule rule="img_2" constituent="img2" />
                <bindRule rule="img_3" constituent="img3" />
                <bindRule rule="img_4" constituent="img4" />
                <bindRule rule="img_5" constituent="img5" />
                <bindRule rule="img_6" constituent="img6" />
                <bindRule rule="img_7" constituent="img7" />
                <bindRule rule="img_8" constituent="img8" />
                <bindRule rule="img_9" constituent="img9" />
                <bindRule rule="img_10" constituent="img10" />
                <bindRule rule="img_11" constituent="img11" />
                <bindRule rule="img_12" constituent="img12" />
                <!--Midias de imagem a serem sorteadas para exibicao durante o jogo:-->
                <media id="img1" src="imgs/formas/C_Amarelo.png" descriptor="dForma2" />
                <media id="img2" src="imgs/formas/C_Azul.png" descriptor="dForma2" />
                <media id="img3" src="imgs/formas/C_Vermelho.png" descriptor="dForma2" />
                <media id="img4" src="imgs/formas/E_Amarelo.png" descriptor="dForma2" />
                <media id="img5" src="imgs/formas/E_Azul.png" descriptor="dForma2" />
                <media id="img6" src="imgs/formas/E_Vermelho.png" descriptor="dForma2" />
                <media id="img7" src="imgs/formas/Q_Amarelo.png" descriptor="dForma2" />
                <media id="img8" src="imgs/formas/Q_Azul.png" descriptor="dForma2" />
                <media id="img9" src="imgs/formas/Q_Vermelho.png" descriptor="dForma2" />
                <media id="img10" src="imgs/formas/T_Amarelo.png" descriptor="dForma2" />
                <media id="img11" src="imgs/formas/T_Azul.png" descriptor="dForma2" />
                <media id="img12" src="imgs/formas/T_Vermelho.png" descriptor="dForma2" />
            </switch>

            <link xconnector="conectores#onBeginStartNItems">
                <bind component="fundoJIni" role="onBegin" />
                <bind component="audioIni" role="start" />
                <bind component="luaNivel2" role="start" />
            </link>

            <!--Ao iniciar 'fundoJogoInicial' sorteia novo valor de imagem a ser exibida pelo suite, e armazena-o no no Lua:-->
            <link xconnector="conectores#onBeginSet">
                <bind component="luaNivel2" role="onBegin" />
                <bind component="luaNivel2" interface="nivel" role="set">
                    <bindParam name="var" value="2" />
                </bind>
            </link>
        
            <!--Analogo ao elo acima: quando inicia-se a tela 'fundoJogo' sorteia nova imagem e armazena seu valor no no Lua.-->
            <link xconnector="conectores#onBeginSet">
                <bind component="fundoJ" role="onBegin" />
                <bind component="luaNivel2" interface="opcao" role="set">
                    <bindParam name="var" value="-1" />
                </bind>
            </link>

            <!--Ao fim do 'fundojogoInicial' inicia o 'fundoJogo' e os botoes disponiveis ao jogador:-->
            <link xconnector="conectores#onEndStartNItems" >
                <bind component="fundoJIni" role="onEnd"/>
                <bind component="fundoJ" role="start"/>
                <bind component="botNeg" role="start" />
                <bind component="botPos" role="start" />
                <bind component="botSairP" role="start" />
                <bind component="audioReg" role="start" />
            </link>

            <!--Funcoes das teclas de selecao na tela durante o jogo:-->
            <link xconnector="conectores#onSelectionSet">
                <bind component="botPos" role="onSelection" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <!--Analogo ao elo acima.-->
            <link xconnector="conectores#onSelectionSet">
                <bind component="botNeg" role="onSelection" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onSelectionStop">
                <bind component="botSairP" role="onSelection" />
                <bind component="ctx_nivel1" role="stop" />
            </link>

            <link xconnector="conectores#onKeySelectionStop">
                <bind component="fundoJ" role="onSelection">
                    <bindParam name="key" value="YELLOW" />
                </bind>
                <bind component="ctx_nivel1" role="stop" />
            </link>

            <!--Funcoes das teclas no controle remoto durante o jogo:-->
            <link xconnector="conectores#onKeySelectionSet">
                <!--Enquanto fundoJogo esta sendo apresentado, se o usuario apertar o botao verde no controle remoto...-->
                <bind component="fundoJ" role="onSelection">
                    <bindParam name="key" value="GREEN" />
                </bind>
                <!--...modifica-se a propriedade do no Lua, desencadeando alteração na propriedade do no settings tambem (funcao dos conectores seguintes).-->
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <!--Analogo ao elo acima.-->
            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ" role="onSelection">
                    <bindParam name="key" value="RED" />
                </bind>
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionStop">
                <bind component="luaNivel1" interface="opcao" role="onEndAttribution" />
                <bind component="suiteNivel1" role="stop" />
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel1" interface="valor_sorteado" role="onEndAttribution" />
                <bind component="luaNivel1" interface="valor_sorteado" role="get" />
                <bind component="config" interface="img_num" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionStartDelay">
                <bind component="config" interface="img_num" role="onEndAttribution" />
                <bind component="suiteNivel1" role="start" >
                    <bindParam name="delay" value="0.1s" />
                </bind>
            </link>

            <!--Cada vez que o suite 'escolhe_imagens' eh iniciado, testa se o numero de valores sorteados/imagens exibidas eh igual a 12.
            Nesse caso ocorre o fim do jogo.-->
            <link xconnector="conectores#onBeginPropertyTestEqStop">
                <!--Este valor sera comparado com o valor da propriedade/variavel 'counter' do no Lua 'game_script'.-->
                <linkParam name="var" value="12" />
                <bind role="onBegin" component="suiteNivel1" />
                <bind role="equals" component="luaNivel1" interface="counter" />
                <bind role="stop" component="fundoJ"/>
            </link>

            <!--Ao fim do jogo, encerra a execucao do suite e dos botoes.-->
            <link xconnector="conectores#onEndStopNItems">
                <bind component="fundoJ" role="onEnd" />
                <bind component="suiteNivel1" role="stop" />
                <bind component="botSairP" role="stop" />
                <bind component="botNeg" role="stop" />
                <bind component="botPos" role="stop" />
            </link>

            <!--Ao fim do fundo de jogo (ou seja, fim do jogo) inicia a tela de fundo final:-->
            <link xconnector="conectores#onEndStartNItems">
                <bind component="botPos" role="onEnd" />
                <bind component="fundoFin" role="start" />
            </link>

            <!--Ao inicio da tela final, posta um evento NCLua que dispara a exibicao do num. de acertos do jogador:-->
            <link xconnector="conectores#onBeginSet">
                <bind component="fundoFin" role="onBegin" />
                <bind component="luaNivel1" interface="fim_de_jogo" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <!--Ao fim da exibicao da tela final, reinicia o jogo:-->
            <link xconnector="conectores#onEndStop">
                <bind component="fundoFin" role="onEnd" />
                <bind component="luaNivel1" role="stop" />
            </link>

            <link xconnector="conectores#onEndStop">
                <bind component="luaNivel1" role="onEnd" />
                <bind component="ctx_nivel1" role="stop" />
            </link>

        </context>

        <switch id="decideNivel">
            <bindRule rule="r_nv1" constituent="ctx_nivel1" />
            <bindRule rule="r_nv2" constituent="ctx_nivel2" />

            <switchPort id="nv1">
                <mapping component="ctx_nivel1" interface="pFundoJ" />
            </switchPort>
            <switchPort id="nv2">
                <mapping component="ctx_nivel2" interface="pFundoJ" />
            </switchPort>
        </switch>

        <link xconnector="conectores#onEndStart">
            <bind component="ctx_nivel1" role="onEnd" />
            <bind component="fundoInicial" role="start" />
        </link>

        <link xconnector="conectores#onEndStart">
            <bind component="ctx_nivel2" role="onEnd" />
            <bind component="fundoInicial" role="start" />
        </link>
    </body>
</ncl>