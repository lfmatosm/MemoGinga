<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="nivel1">
    <head>
    	<ruleBase>
    		<rule id="suite1_img_1" var="figSorteada1" comparator="eq" value="1" />
            <rule id="suite1_img_2" var="figSorteada1" comparator="eq" value="2" />
            <rule id="suite1_img_3" var="figSorteada1" comparator="eq" value="3" />
            <rule id="suite1_img_4" var="figSorteada1" comparator="eq" value="4" />
            <rule id="suite1_img_5" var="figSorteada1" comparator="eq" value="5" />
            <rule id="suite1_img_6" var="figSorteada1" comparator="eq" value="6" />
            <rule id="suite1_img_7" var="figSorteada1" comparator="eq" value="7" />
            <rule id="suite1_img_8" var="figSorteada1" comparator="eq" value="8" />
            <rule id="suite1_img_9" var="figSorteada1" comparator="eq" value="9" />
            <rule id="suite1_img_10" var="figSorteada1" comparator="eq" value="10" />
            <rule id="suite1_img_11" var="figSorteada1" comparator="eq" value="11" />
            <rule id="suite1_img_12" var="figSorteada1" comparator="eq" value="12" />

            <rule id="suite2_img_1" var="figSorteada2" comparator="eq" value="1" />
            <rule id="suite2_img_2" var="figSorteada2" comparator="eq" value="2" />
            <rule id="suite2_img_3" var="figSorteada2" comparator="eq" value="3" />
            <rule id="suite2_img_4" var="figSorteada2" comparator="eq" value="4" />
            <rule id="suite2_img_5" var="figSorteada2" comparator="eq" value="5" />
            <rule id="suite2_img_6" var="figSorteada2" comparator="eq" value="6" />
            <rule id="suite2_img_7" var="figSorteada2" comparator="eq" value="7" />
            <rule id="suite2_img_8" var="figSorteada2" comparator="eq" value="8" />
            <rule id="suite2_img_9" var="figSorteada2" comparator="eq" value="9" />
            <rule id="suite2_img_10" var="figSorteada2" comparator="eq" value="10" />
            <rule id="suite2_img_11" var="figSorteada2" comparator="eq" value="11" />
            <rule id="suite2_img_12" var="figSorteada2" comparator="eq" value="12" />
        </ruleBase>
    	
        <regionBase>
            <region id="rgVideo" left="0%" top="0%" width="100%" height="100%" zIndex="0" />
            <region id="rgMenu" top="55%" width="20%" height="40%" zIndex="1">
                <region id="rgBotao1"  left="30%" height="40%" />
                <region id="rgBotao2"  left="30%" top="50%" height="40%" />
                <region id="rgBotao3"  left="30%" top="60%" height="40%" />    
            </region>
            <region id="rgBotaoStart" top="70%" left="35%" width="30%" height="10%" zIndex="1" />
            <region id="rgBotaoSair" top="80%" left="35%" width="30%" height="10%" zIndex="1" />
            <region id="rgSuite1" top="37%" left="20%" width="25%" height="25%" zIndex="1" />
            <region id="rgSuite2" top="37%" right="25%" width="25%" height="25%" zIndex="1" />
            <region id="rgSuite3" top="30%" left="25%" width="50%" height="50%" zIndex="1" />
            <region id="rgLua" top="45%" left="38%" width="50%" height="50%" zIndex="1" />
            <region id="rgAudio" top="0%" left="0%" width="0%" height="0%" zIndex="1" />
            <region id="rgBotaoSairPartida" top="90%" left="70%" width="30%" height="10%" zIndex="1" />
        </regionBase>
        
        <descriptorBase>
            <descriptor id="dVideo" region="rgVideo" />
            <descriptor id="dSuiteEsq" region="rgSuite1" />
            <descriptor id="dSuiteDir" region="rgSuite2" />
            <descriptor id="dSuiteCentral" region="rgSuite3" />
            <descriptor id="dTelaFinal" region="rgVideo" explicitDur="5s" />
            <descriptor id="dTelaNormalJogo" region="rgVideo" explicitDur="2s" />
            <descriptor id="dLua" region="rgLua" />
            <descriptor id="dBotaoIniciaJogo" region="rgBotaoStart" focusIndex="1" moveUp="2" moveDown="2" />
            <descriptor id="dBotaoSairJogo" region="rgBotaoSair" focusIndex="2" moveUp="1" moveDown="1" />
            <descriptor id="dBotao1" region="rgBotao1" focusIndex="1" moveUp="3" moveDown="2" />
            <descriptor id="dBotao2" region="rgBotao2" focusIndex="2" moveUp="1" moveDown="3" />
            <descriptor id="dBotaoSairPartida" region="rgBotaoSairPartida" focusIndex="3" moveUp="2" moveDown="1" />
            <descriptor id="dAudio" region="rgAudio" />
        </descriptorBase>        
        
        <connectorBase>
            <importBase alias="conectores" documentURI="../connectors/connectors.ncl" />
        </connectorBase>
    </head>
 
    <body id="ctx_principalNivel1">
        <media id="settings" type="application/x-ginga-settings">
            <property name="service.currentFocus" value="1" />
            <property name="nivel" value="1" />
            <property name="figSorteada1" value="1" />
            <property name="figSorteada2" value="1" />
            <property name="figSorteada3" value="1" />
            <property name="figSorteada4" value="1" />
        </media>

        <media id="lua" src="../lua/game_script.lua" descriptor="dLua">
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

        <port id="pNv1" component="ctx_nivel1" />
        
        <!--<media id="audioJogoTelaInicial" descriptor="dAudio" src="../audio/audJTelaInicialJogo.mp3"/>
        <media id="audioJogoTelaRegular" descriptor="dAudio" src="../audio/audJTelaRegularJogo_2.mp3"/>-->

        <context id="ctx_nivel1">
            <port id="pLNv1" component="luaNivel1" />
            <!--<port id="pFig1" component="luaNivel1" interface="figSorteada1" />
            <port id="pFig2" component="luaNivel1" interface="figSorteada2" />-->
            <port id="pFundoJ1" component="fundoJ1" />
            <port id="pFundoJ2" component="fundoJ2" />
            <port id="pSui1" component="suite1" />
            <port id="pSui2" component="suite2" />
            <port id="pBPos" component="botPos" />
            <port id="pBNeg" component="botNeg" />
            <port id="pBSairP" component="botSairP" />

            <media id="config"      refer="settings"           instance="instSame" />
            <media id="fundoJ1"     descriptor="dTelaNormalJogo" src="../imgs/fundos/fundoJ1Nv1.png" />
            <media id="fundoJ2"     descriptor="dVideo" src="../imgs/fundos/fundoJ2Nv1.png" />
            <media id="fundoFin"   descriptor="dTelaFinal" src="../imgs/fundos/fundo_final.png" />
            <media id="botPos"      descriptor="dBotao2" src="../imgs/botaoOk.png"/>
            <media id="botNeg"      descriptor="dBotao1" src="../imgs/botaoCancelar.png" />
            <media id="botSairP"   descriptor="dBotaoSairPartida" src="../imgs/botaoSairPartida.png" />
            <media id="luaNivel1"   src="../lua/game_script.lua" descriptor="dLua">
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
            <!--<media id="luaNivel1" refer="docTeste#lua" instance="instSame" />-->
            <media id="luaNivel1" refer="lua" instance="instSame" />

            <switch id="suite1">
                <bindRule rule="suite1_img_1" constituent="s1_img1" />
                <bindRule rule="suite1_img_2" constituent="s1_img2" />
                <bindRule rule="suite1_img_3" constituent="s1_img3" />
                <bindRule rule="suite1_img_4" constituent="s1_img4" />
                <bindRule rule="suite1_img_5" constituent="s1_img5" />
                <bindRule rule="suite1_img_6" constituent="s1_img6" />
                <bindRule rule="suite1_img_7" constituent="s1_img7" />
                <bindRule rule="suite1_img_8" constituent="s1_img8" />
                <bindRule rule="suite1_img_9" constituent="s1_img9" />
                <bindRule rule="suite1_img_10" constituent="s1_img10" />
                <bindRule rule="suite1_img_11" constituent="s1_img11" />
                <bindRule rule="suite1_img_12" constituent="s1_img12" />

                <media id="s1_img1" src="../imgs/formas/C_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s1_img2" src="../imgs/formas/C_Azul.png" descriptor="dSuiteCentral" />
                <media id="s1_img3" src="../imgs/formas/C_Vermelho.png" descriptor="dSuiteCentral" />
                <media id="s1_img4" src="../imgs/formas/E_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s1_img5" src="../imgs/formas/E_Azul.png" descriptor="dSuiteCentral" />
                <media id="s1_img6" src="../imgs/formas/E_Vermelho.png" descriptor="dSuiteCentral" />
                <media id="s1_img7" src="../imgs/formas/Q_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s1_img8" src="../imgs/formas/Q_Azul.png" descriptor="dSuiteCentral" />
                <media id="s1_img9" src="../imgs/formas/Q_Vermelho.png" descriptor="dSuiteCentral" />
                <media id="s1_img10" src="../imgs/formas/T_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s1_img11" src="../imgs/formas/T_Azul.png" descriptor="dSuiteCentral" />
                <media id="s1_img12" src="imgs/formas/T_Vermelho.png" descriptor="dSuiteCentral" />
            </switch>

            <switch id="suite2">
                <bindRule rule="suite2_img_1" constituent="s2_img1" />
                <bindRule rule="suite2_img_2" constituent="s2_img2" />
                <bindRule rule="suite2_img_3" constituent="s2_img3" />
                <bindRule rule="suite2_img_4" constituent="s2_img4" />
                <bindRule rule="suite2_img_5" constituent="s2_img5" />
                <bindRule rule="suite2_img_6" constituent="s2_img6" />
                <bindRule rule="suite2_img_7" constituent="s2_img7" />
                <bindRule rule="suite2_img_8" constituent="s2_img8" />
                <bindRule rule="suite2_img_9" constituent="s2_img9" />
                <bindRule rule="suite2_img_10" constituent="s2_img10" />
                <bindRule rule="suite2_img_11" constituent="s2_img11" />
                <bindRule rule="suite2_img_12" constituent="s2_img12" />

                <media id="s2_img1" src="../imgs/formas/C_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s2_img2" src="../imgs/formas/C_Azul.png" descriptor="dSuiteCentral" />
                <media id="s2_img3" src="../imgs/formas/C_Vermelho.png" descriptor="dSuiteCentral" />
                <media id="s2_img4" src="../imgs/formas/E_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s2_img5" src="../imgs/formas/E_Azul.png" descriptor="dSuiteCentral" />
                <media id="s2_img6" src="../imgs/formas/E_Vermelho.png" descriptor="dSuiteCentral" />
                <media id="s2_img7" src="../imgs/formas/Q_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s2_img8" src="../imgs/formas/Q_Azul.png" descriptor="dSuiteCentral" />
                <media id="s2_img9" src="../imgs/formas/Q_Vermelho.png" descriptor="dSuiteCentral" />
                <media id="s2_img10" src="../imgs/formas/T_Amarelo.png" descriptor="dSuiteCentral" />
                <media id="s2_img11" src="../imgs/formas/T_Azul.png" descriptor="dSuiteCentral" />
                <media id="s2_img12" src="../imgs/formas/T_Vermelho.png" descriptor="dSuiteCentral" />
            </switch>

            <!--<link xconnector="conectores#onBeginStart">
                <bind component="fundoJ1" role="onBegin" />
                <bind component="luaNivel1" role="start" />
            </link>-->

            <link xconnector="conectores#onBeginSet">
                <bind component="luaNivel1" role="onBegin" />
                <bind component="luaNivel1" interface="nivel" role="set">
                    <bindParam name="var" value="-1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarStart">
                <linkParam name="var" value="-1" />
                <bind component="luaNivel1" interface="opcao" role="onEndAttribution" />
                <bind component="luaNivel1" interface="opcao" role="equals" />
                <bind component="fundoJ1" role="start" /> 
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel1" interface="nivel" role="onEndAttribution" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="-1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarAbortStart">
                <linkParam name="var" value="13" />
                <bind role="onEndAttribution" component="luaNivel1" interface="counter" />
                <bind role="equals" component="luaNivel1" interface="counter" />
                <bind role="abort" component="fundoJ2" />
                <bind role="start" component="fundoFin"/>
            </link>

            <link xconnector="conectores#onBeginStartNItems">
                <bind component="fundoJ1" role="onBegin" />
                <bind component="suite1" role="start" />
            </link>

            <link xconnector="conectores#onEndStopNItems" >
                <bind component="fundoJ1" role="onEnd"/>
                <bind component="suite1" role="stop"/>
            </link>

            <link xconnector="conectores#onEndStartNItems">
                <bind component="suite1" role="onEnd" />
                <bind component="fundoJ2" role="start" />
                <bind component="suite2" role="start" />
                <bind component="botPos" role="start" />
                <bind component="botNeg" role="start" />
                <bind component="botSairP" role="start" />
            </link>

            <link xconnector="conectores#onSelectionSet">
                <bind component="botPos" role="onSelection" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onSelectionSet">
                <bind component="botNeg" role="onSelection" />
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionStopNItems">
                <bind component="config" interface="figSorteada2" role="onEndAttribution" />
                <bind component="suite2" role="stop" />
                <bind component="botPos" role="stop" />
                <bind component="botNeg" role="stop" />
                <bind component="botSairP" role="stop" />
                <bind component="fundoJ2" role="stop" />
            </link>

            <link xconnector="conectores#onEndStart">
                <bind component="fundoJ2" role="onEnd" />
                <bind component="fundoJ1" role="start" />
            </link>

            <link xconnector="conectores#onSelectionAbortNItems">
                <bind component="botSairP" role="onSelection" />
                <bind component="ctx_nivel1" role="abort" />
            </link>

            <link xconnector="conectores#onKeySelectionAbortNItems">
                <bind component="fundoJ2" role="onSelection">
                    <bindParam name="key" value="YELLOW" />
                </bind>
                <bind component="ctx_nivel1" role="abort" />
            </link>

            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ2" role="onSelection">
                    <bindParam name="key" value="GREEN" />
                </bind>
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ2" role="onSelection">
                    <bindParam name="key" value="RED" />
                </bind>
                <bind component="luaNivel1" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel1" interface="figSorteada1" role="onEndAttribution" />
                <bind component="luaNivel1" interface="figSorteada1" role="get" />
                <bind component="config" interface="figSorteada1" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel1" interface="figSorteada2" role="onEndAttribution" />
                <bind component="luaNivel1" interface="figSorteada2" role="get" />
                <bind component="config" interface="figSorteada2" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onBeginSet">
                <bind component="fundoFin" role="onBegin" />
                <bind component="luaNivel1" interface="fim_de_jogo" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionAbortNItems">
                <bind component="luaNivel1" interface="fim_de_jogo" role="onEndAttribution" />
                <bind component="suite1" role="abort" />
                <bind component="suite2" role="abort" />
                <bind component="fundoJ1" role="abort" />
                <bind component="fundoJ2" role="abort" />
            </link>

            <link xconnector="conectores#onEndAbort">
                <bind component="fundoFin" role="onEnd" />
                <bind component="ctx_nivel1" role="abort" />
            </link>
        </context>
    </body>
</ncl>