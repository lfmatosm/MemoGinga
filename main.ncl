<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="main">
    <head>
        <importedDocumentBase>
            <importNCL alias="docMenu" documentURI="docBase/menuInicial.ncl" />
            <importNCL alias="docSelecNivel" documentURI="docBase/selecaoDeNivel.ncl" />
            <importNCL alias="docSelecIdioma" documentURI="docBase/languageMenu.ncl" />
            <importNCL alias="docSensor" documentURI="sensor/sensor.ncl" />
        </importedDocumentBase>

    	<ruleBase>
            <!--Idiomas-->
            <rule id="langPt" var="service.gameLanguage" comparator="eq" value="pt" />
            <rule id="langEn" var="service.gameLanguage" comparator="eq" value="en" />
            <rule id="langEs" var="service.gameLanguage" comparator="eq" value="es" />

            <!--Níveis-->
            <rule id="rNivel1" var="nivel" comparator="eq" value="1" />
            <rule id="rNivel2" var="nivel" comparator="eq" value="2" />
            <rule id="rNivel3" var="nivel" comparator="eq" value="3" />
            <!--Imagens-->
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
            <rule id="suite3_img_1" var="figSorteada3" comparator="eq" value="1" />
            <rule id="suite3_img_2" var="figSorteada3" comparator="eq" value="2" />
            <rule id="suite3_img_3" var="figSorteada3" comparator="eq" value="3" />
            <rule id="suite3_img_4" var="figSorteada3" comparator="eq" value="4" />
            <rule id="suite3_img_5" var="figSorteada3" comparator="eq" value="5" />
            <rule id="suite3_img_6" var="figSorteada3" comparator="eq" value="6" />
            <rule id="suite3_img_7" var="figSorteada3" comparator="eq" value="7" />
            <rule id="suite3_img_8" var="figSorteada3" comparator="eq" value="8" />
            <rule id="suite3_img_9" var="figSorteada3" comparator="eq" value="9" />
            <rule id="suite3_img_10" var="figSorteada3" comparator="eq" value="10" />
            <rule id="suite3_img_11" var="figSorteada3" comparator="eq" value="11" />
            <rule id="suite3_img_12" var="figSorteada3" comparator="eq" value="12" />
            <rule id="suite4_img_1" var="figSorteada4" comparator="eq" value="1" />
            <rule id="suite4_img_2" var="figSorteada4" comparator="eq" value="2" />
            <rule id="suite4_img_3" var="figSorteada4" comparator="eq" value="3" />
            <rule id="suite4_img_4" var="figSorteada4" comparator="eq" value="4" />
            <rule id="suite4_img_5" var="figSorteada4" comparator="eq" value="5" />
            <rule id="suite4_img_6" var="figSorteada4" comparator="eq" value="6" />
            <rule id="suite4_img_7" var="figSorteada4" comparator="eq" value="7" />
            <rule id="suite4_img_8" var="figSorteada4" comparator="eq" value="8" />
            <rule id="suite4_img_9" var="figSorteada4" comparator="eq" value="9" />
            <rule id="suite4_img_10" var="figSorteada4" comparator="eq" value="10" />
            <rule id="suite4_img_11" var="figSorteada4" comparator="eq" value="11" />
            <rule id="suite4_img_12" var="figSorteada4" comparator="eq" value="12" />
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
                <region id="rgBotao3"  left="30%" top="60%" height="40%" />        
            </region>
            <region id="rgBotaoStart" top="70%" left="35%" width="30%" height="10%" zIndex="1" />
            <region id="rgBotaoSair" top="80%" left="35%" width="30%" height="10%" zIndex="1" />
            <region id="rgForma" top="30%" left="25%" width="50%" height="50%" zIndex="1" />
            <region id="rgForma2" top="30%" left="10%" width="25%" height="25%" zIndex="1" />
            <region id="rgForma3" top="30%" right="10%" width="25%" height="25%" zIndex="1" />
            <region id="rgLua" top="45%" left="38%" width="50%" height="50%" zIndex="1" />
            
            <region id="rgAudio" top="0%" left="0%" width="0%" height="0%" zIndex="1" />
            <region id="rgBotaoSairPartida" top="82%" left="75%" width="20%" height="10%" zIndex="1" />

            <region id="rgTestes" left="35%" width="30%" height="100%" zIndex="1" />

            <!--Suítes.-->
            <!--Lv. 1 e 2-->
            <region id="rgSuite1" top="30%" left="25%" width="50%" height="50%" zIndex="1" />
            <region id="rgSuite2" top="37%" left="20%" width="25%" height="25%" zIndex="1" />
            <region id="rgSuite3" top="37%" right="20%" width="25%" height="25%" zIndex="1" />
            <!--Lv. 3-->
            <region id="rgSuite4" top="20%" left="20%" width="25%" height="25%" zIndex="1" />
            <region id="rgSuite5" top="20%" right="20%" width="25%" height="25%" zIndex="1" />
            <region id="rgSuite6" top="55%" left="37%" width="25%" height="25%" zIndex="1" />
        </regionBase>
        
        <descriptorBase>
            <descriptor id="dVideo" region="rgVideo" />
            <descriptor id="dTelaFinal" region="rgVideo" explicitDur="5s" />
            <descriptor id="dTelaNormalJogo" region="rgVideo" explicitDur="2s" />
            <descriptor id="dLua" region="rgLua" />
            <descriptor id="dBotao1" region="rgBotao1" focusIndex="1" moveUp="3" moveDown="2" />
            <descriptor id="dBotao2" region="rgBotao2" focusIndex="2" moveUp="1" moveDown="3" />
            <descriptor id="dBotaoSairPartida" region="rgBotaoSairPartida" focusIndex="3" moveUp="2" moveDown="1" />
            <descriptor id="dAudio" region="rgAudio" />

            <descriptor id="dTestes" region="rgTestes" explicitDur="2s" />

            <!--Descs..-->
            <descriptor id="dS1" region="rgSuite1" />
            <descriptor id="dS2" region="rgSuite2" />
            <descriptor id="dS3" region="rgSuite3" />
            <descriptor id="dS4" region="rgSuite4" />
            <descriptor id="dS5" region="rgSuite5" />
            <descriptor id="dS6" region="rgSuite6" />
        </descriptorBase>        
        
        <connectorBase>
            <importBase alias="conectores" documentURI="connectors/connectors.ncl" />
        </connectorBase>
    </head>
 
    <body id="ctx_principal">
        <media id="settings" type="application/x-ginga-settings">
            <property name="service.currentFocus" value="1" />

            <property name="service.gameLanguage" value="en" />

            <property name="nivel" value="1" />
            <property name="figSorteada1" value="1" />
            <property name="figSorteada2" value="1" />
            <property name="figSorteada3" value="1" />
            <property name="figSorteada4" value="1" />
            <!--<property name="lang" value="en" />-->
        </media>

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

        <port id="pMenu" component="menu" />

        <context id="menu" refer="docMenu#ctx_menuInicial" instance="instSame" />
        <context id="selecaoNivel" refer="docSelecNivel#ctx_selecaoNivel" instance="instSame" />
        <context id="selecaoIdioma" refer="docSelecIdioma#ctx_selecaoIdioma" instance="instSame" />

        <context id="nivel1">
            <port id="pLuaNivel1" component="luaNivel1" />
            <port id="pFundoJ1" component="fundoJ1" />

            <media id="config"      refer="settings"             instance="instSame" />
            <switch id="fundoJ1">
                <bindRule rule="langPt" constituent="f11" />
                <bindRule rule="langEn" constituent="f12" />
                <bindRule rule="langEs" constituent="f13" />
                <media id="f11" src="imgs/back/pt/gb1Lv1.png" descriptor="dTelaNormalJogo" />
                <media id="f12" src="imgs/back/en/gb1Lv1.png" descriptor="dTelaNormalJogo" />
                <media id="f13" src="imgs/back/es/gb1Lv1.png" descriptor="dTelaNormalJogo" />
            </switch>
            <switch id="fundoJ2">
                <bindRule rule="langPt" constituent="f21" />
                <bindRule rule="langEn" constituent="f22" />
                <bindRule rule="langEs" constituent="f23" />
                <media id="f21" src="imgs/back/pt/gb2Lv1.png" descriptor="dVideo" />
                <media id="f22" src="imgs/back/en/gb2Lv1.png" descriptor="dVideo" />
                <media id="f23" src="imgs/back/es/gb2Lv1.png" descriptor="dVideo" />
            </switch>
            <switch id="fundoFin">
                <bindRule rule="langPt" constituent="fE1" />
                <bindRule rule="langEn" constituent="fE2" />
                <bindRule rule="langEs" constituent="fE3" />
                <media id="fE1" src="imgs/back/pt/end.png" descriptor="dTelaFinal" />
                <media id="fE2" src="imgs/back/en/end.png" descriptor="dTelaFinal" />
                <media id="fE3" src="imgs/back/es/end.png" descriptor="dTelaFinal" />
            </switch>
            <media id="botPos"      descriptor="dBotao2" src="imgs/btns/other/bYes.png"/>
            <media id="botNeg"      descriptor="dBotao1" src="imgs/btns/other/bNo.png" />
            <switch id="botSairP">
                <bindRule rule="langPt" constituent="bS1" />
                <bindRule rule="langEn" constituent="bS2" />
                <bindRule rule="langEs" constituent="bS3" />
                <media id="bS1" src="imgs/btns/pt/bExitMatch.png" descriptor="dBotaoSairPartida" />
                <media id="bS2" src="imgs/btns/en/bExitMatch.png" descriptor="dBotaoSairPartida" />
                <media id="bS3" src="imgs/btns/es/bExitMatch.png" descriptor="dBotaoSairPartida" />
            </switch>
            <media id="luaNivel1"   refer="game_script"          instance="new" />

            <!--<media id="luaSensor1"  refer="docSensor#sensorCtx"  instance="new" />-->

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

                <media id="s1_img1" src="imgs/shapes/1.png" descriptor="dS1" />
                <media id="s1_img2" src="imgs/shapes/2.png" descriptor="dS1" />
                <media id="s1_img3" src="imgs/shapes/3.png" descriptor="dS1" />
                <media id="s1_img4" src="imgs/shapes/4.png" descriptor="dS1" />
                <media id="s1_img5" src="imgs/shapes/5.png" descriptor="dS1" />
                <media id="s1_img6" src="imgs/shapes/6.png" descriptor="dS1" />
                <media id="s1_img7" src="imgs/shapes/7.png" descriptor="dS1" />
                <media id="s1_img8" src="imgs/shapes/8.png" descriptor="dS1" />
                <media id="s1_img9" src="imgs/shapes/9.png" descriptor="dS1" />
                <media id="s1_img10" src="imgs/shapes/10.png" descriptor="dS1" />
                <media id="s1_img11" src="imgs/shapes/11.png" descriptor="dS1" />
                <media id="s1_img12" src="imgs/shapes/12.png" descriptor="dS1" />
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

                <media id="s2_img1" src="imgs/shapes/1.png" descriptor="dS1" />
                <media id="s2_img2" src="imgs/shapes/2.png" descriptor="dS1" />
                <media id="s2_img3" src="imgs/shapes/3.png" descriptor="dS1" />
                <media id="s2_img4" src="imgs/shapes/4.png" descriptor="dS1" />
                <media id="s2_img5" src="imgs/shapes/5.png" descriptor="dS1" />
                <media id="s2_img6" src="imgs/shapes/6.png" descriptor="dS1" />
                <media id="s2_img7" src="imgs/shapes/7.png" descriptor="dS1" />
                <media id="s2_img8" src="imgs/shapes/8.png" descriptor="dS1" />
                <media id="s2_img9" src="imgs/shapes/9.png" descriptor="dS1" />
                <media id="s2_img10" src="imgs/shapes/10.png" descriptor="dS1" />
                <media id="s2_img11" src="imgs/shapes/11.png" descriptor="dS1" />
                <media id="s2_img12" src="imgs/shapes/12.png" descriptor="dS1" />
            </switch>

            <link xconnector="conectores#onBeginSet">
                <bind component="luaNivel1" role="onBegin" />
                <bind component="luaNivel1" interface="nivel" role="set">
                    <bindParam name="var" value="1" />
                </bind>
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
                
                <!--<bind component="luaSensor1" role="start" />-->
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
                <bind component="nivel1" role="abort" />
            </link>

            <link xconnector="conectores#onKeySelectionAbortNItems">
                <bind component="fundoJ2" role="onSelection">
                    <bindParam name="key" value="YELLOW" />
                </bind>
                <bind component="nivel1" role="abort" />
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

                <!--<bind component="luaSensor1" role="abort" />-->
            </link>

            <link xconnector="conectores#onEndAbort">
                <bind component="fundoFin" role="onEnd" />
                <bind component="nivel1" role="abort" />
            </link>
        </context>
        <context id="nivel2">
            <port id="pLuaNivel2-" component="luaNivel2-" />
            <port id="pFundoJ1-" component="fundoJ1-" />

            <media id="config-"      refer="settings"       instance="instSame" />
            <switch id="fundoJ1-">
                <bindRule rule="langPt" constituent="f11-" />
                <bindRule rule="langEn" constituent="f12-" />
                <bindRule rule="langEs" constituent="f13-" />
                <media id="f11-" src="imgs/back/pt/gb1Lv2.png" descriptor="dTelaNormalJogo" />
                <media id="f12-" src="imgs/back/en/gb1Lv2.png" descriptor="dTelaNormalJogo" />
                <media id="f13-" src="imgs/back/es/gb1Lv2.png" descriptor="dTelaNormalJogo" />
            </switch>
            <switch id="fundoJ2-">
                <bindRule rule="langPt" constituent="f21-" />
                <bindRule rule="langEn" constituent="f22-" />
                <bindRule rule="langEs" constituent="f23-" />
                <media id="f21-" src="imgs/back/pt/gb2Lv2.png" descriptor="dVideo" />
                <media id="f22-" src="imgs/back/en/gb2Lv2.png" descriptor="dVideo" />
                <media id="f23-" src="imgs/back/es/gb2Lv2.png" descriptor="dVideo" />
            </switch>
            <switch id="fundoFin-">
                <bindRule rule="langPt" constituent="fE1-" />
                <bindRule rule="langEn" constituent="fE2-" />
                <bindRule rule="langEs" constituent="fE3-" />
                <media id="fE1-" src="imgs/back/pt/end.png" descriptor="dTelaFinal" />
                <media id="fE2-" src="imgs/back/en/end.png" descriptor="dTelaFinal" />
                <media id="fE3-" src="imgs/back/es/end.png" descriptor="dTelaFinal" />
            </switch>
            <switch id="suiteNv2Esq-">
                <bindRule rule="suite1_img_1" constituent="s1_img1-" />
                <bindRule rule="suite1_img_2" constituent="s1_img2-" />
                <bindRule rule="suite1_img_3" constituent="s1_img3-" />
                <bindRule rule="suite1_img_4" constituent="s1_img4-" />
                <bindRule rule="suite1_img_5" constituent="s1_img5-" />
                <bindRule rule="suite1_img_6" constituent="s1_img6-" />
                <bindRule rule="suite1_img_7" constituent="s1_img7-" />
                <bindRule rule="suite1_img_8" constituent="s1_img8-" />
                <bindRule rule="suite1_img_9" constituent="s1_img9-" />
                <bindRule rule="suite1_img_10" constituent="s1_img10-" />
                <bindRule rule="suite1_img_11" constituent="s1_img11-" />
                <bindRule rule="suite1_img_12" constituent="s1_img12-" />

                <media id="s1_img1-" src="imgs/shapes/1.png" descriptor="dS2" />
                <media id="s1_img2-" src="imgs/shapes/2.png" descriptor="dS2" />
                <media id="s1_img3-" src="imgs/shapes/3.png" descriptor="dS2" />
                <media id="s1_img4-" src="imgs/shapes/4.png" descriptor="dS2" />
                <media id="s1_img5-" src="imgs/shapes/5.png" descriptor="dS2" />
                <media id="s1_img6-" src="imgs/shapes/6.png" descriptor="dS2" />
                <media id="s1_img7-" src="imgs/shapes/7.png" descriptor="dS2" />
                <media id="s1_img8-" src="imgs/shapes/8.png" descriptor="dS2" />
                <media id="s1_img9-" src="imgs/shapes/9.png" descriptor="dS2" />
                <media id="s1_img10-" src="imgs/shapes/10.png" descriptor="dS2" />
                <media id="s1_img11-" src="imgs/shapes/11.png" descriptor="dS2" />
                <media id="s1_img12-" src="imgs/shapes/12.png" descriptor="dS2" />
            </switch>
            <switch id="suiteNv2Dir-">
                <bindRule rule="suite2_img_1" constituent="s2_img1-" />
                <bindRule rule="suite2_img_2" constituent="s2_img2-" />
                <bindRule rule="suite2_img_3" constituent="s2_img3-" />
                <bindRule rule="suite2_img_4" constituent="s2_img4-" />
                <bindRule rule="suite2_img_5" constituent="s2_img5-" />
                <bindRule rule="suite2_img_6" constituent="s2_img6-" />
                <bindRule rule="suite2_img_7" constituent="s2_img7-" />
                <bindRule rule="suite2_img_8" constituent="s2_img8-" />
                <bindRule rule="suite2_img_9" constituent="s2_img9-" />
                <bindRule rule="suite2_img_10" constituent="s2_img10-" />
                <bindRule rule="suite2_img_11" constituent="s2_img11-" />
                <bindRule rule="suite2_img_12" constituent="s2_img12-" />

                <media id="s2_img1-" src="imgs/shapes/1.png" descriptor="dS3" />
                <media id="s2_img2-" src="imgs/shapes/2.png" descriptor="dS3" />
                <media id="s2_img3-" src="imgs/shapes/3.png" descriptor="dS3" />
                <media id="s2_img4-" src="imgs/shapes/4.png" descriptor="dS3" />
                <media id="s2_img5-" src="imgs/shapes/5.png" descriptor="dS3" />
                <media id="s2_img6-" src="imgs/shapes/6.png" descriptor="dS3" />
                <media id="s2_img7-" src="imgs/shapes/7.png" descriptor="dS3" />
                <media id="s2_img8-" src="imgs/shapes/8.png" descriptor="dS3" />
                <media id="s2_img9-" src="imgs/shapes/9.png" descriptor="dS3" />
                <media id="s2_img10-" src="imgs/shapes/10.png" descriptor="dS3" />
                <media id="s2_img11-" src="imgs/shapes/11.png" descriptor="dS3" />
                <media id="s2_img12-" src="imgs/shapes/12.png" descriptor="dS3" />
            </switch>
            <switch id="suiteNv2Cen-">
                <bindRule rule="suite3_img_1" constituent="s3_img1-" />
                <bindRule rule="suite3_img_2" constituent="s3_img2-" />
                <bindRule rule="suite3_img_3" constituent="s3_img3-" />
                <bindRule rule="suite3_img_4" constituent="s3_img4-" />
                <bindRule rule="suite3_img_5" constituent="s3_img5-" />
                <bindRule rule="suite3_img_6" constituent="s3_img6-" />
                <bindRule rule="suite3_img_7" constituent="s3_img7-" />
                <bindRule rule="suite3_img_8" constituent="s3_img8-" />
                <bindRule rule="suite3_img_9" constituent="s3_img9-" />
                <bindRule rule="suite3_img_10" constituent="s3_img10-" />
                <bindRule rule="suite3_img_11" constituent="s3_img11-" />
                <bindRule rule="suite3_img_12" constituent="s3_img12-" />

                <media id="s3_img1-" src="imgs/shapes/1.png" descriptor="dS1" />
                <media id="s3_img2-" src="imgs/shapes/2.png" descriptor="dS1" />
                <media id="s3_img3-" src="imgs/shapes/3.png" descriptor="dS1" />
                <media id="s3_img4-" src="imgs/shapes/4.png" descriptor="dS1" />
                <media id="s3_img5-" src="imgs/shapes/5.png" descriptor="dS1" />
                <media id="s3_img6-" src="imgs/shapes/6.png" descriptor="dS1" />
                <media id="s3_img7-" src="imgs/shapes/7.png" descriptor="dS1" />
                <media id="s3_img8-" src="imgs/shapes/8.png" descriptor="dS1" />
                <media id="s3_img9-" src="imgs/shapes/9.png" descriptor="dS1" />
                <media id="s3_img10-" src="imgs/shapes/10.png" descriptor="dS1" />
                <media id="s3_img11-" src="imgs/shapes/11.png" descriptor="dS1" />
                <media id="s3_img12-" src="imgs/shapes/12.png" descriptor="dS1" />
            </switch>
            <media id="botPos-"      descriptor="dBotao2" src="imgs/btns/other/bYes.png"/>
            <media id="botNeg-"      descriptor="dBotao1" src="imgs/btns/other/bNo.png" />
            <switch id="botSairP-">
                <bindRule rule="langPt" constituent="bS1-" />
                <bindRule rule="langEn" constituent="bS2-" />
                <bindRule rule="langEs" constituent="bS3-" />
                <media id="bS1-" src="imgs/btns/pt/bExitMatch.png" descriptor="dBotaoSairPartida" />
                <media id="bS2-" src="imgs/btns/en/bExitMatch.png" descriptor="dBotaoSairPartida" />
                <media id="bS3-" src="imgs/btns/es/bExitMatch.png" descriptor="dBotaoSairPartida" />
            </switch>
            <media id="luaNivel2-"   refer="game_script"          instance="new" />

            <link xconnector="conectores#onBeginSet">
                <bind component="luaNivel2-" role="onBegin" />
                <bind component="luaNivel2-" interface="nivel" role="set">
                    <bindParam name="var" value="2" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel2-" interface="nivel" role="onEndAttribution" />
                <bind component="luaNivel2-" interface="opcao" role="set">
                    <bindParam name="var" value="-1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarAbortStart">
                <linkParam name="var" value="13" />
                <bind role="onEndAttribution" component="luaNivel2-" interface="counter" />
                <bind role="equals" component="luaNivel2-" interface="counter" />
                <bind role="abort" component="fundoJ2-" />
                <bind role="start" component="fundoFin-"/>
            </link>

            <link xconnector="conectores#onBeginStartNItems">
                <bind component="fundoJ1-" role="onBegin" />
                <bind component="suiteNv2Esq-" role="start" />
                <bind component="suiteNv2Dir-" role="start" />
            </link>

            <link xconnector="conectores#onEndStopNItems" >
                <bind component="fundoJ1-" role="onEnd"/>
                <bind component="suiteNv2Esq-" role="stop"/>
                <bind component="suiteNv2Dir-" role="stop" />
            </link>

            <link xconnector="conectores#onEndStartNItems">
                <bind component="suiteNv2Dir-" role="onEnd" />
                <bind component="fundoJ2-" role="start" />
                <bind component="suiteNv2Cen-" role="start" />
                <bind component="botPos-" role="start" />
                <bind component="botNeg-" role="start" />
                <bind component="botSairP-" role="start" />
            </link>

            <link xconnector="conectores#onSelectionSet">
                <bind component="botPos-" role="onSelection" />
                <bind component="luaNivel2-" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onSelectionSet">
                <bind component="botNeg-" role="onSelection" />
                <bind component="luaNivel2-" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionStopNItems">
                <bind component="config-" interface="figSorteada3" role="onEndAttribution" />
                <bind component="suiteNv2Cen-" role="stop" />
                <bind component="botPos-" role="stop" />
                <bind component="botNeg-" role="stop" />
                <bind component="botSairP-" role="stop" />
                <bind component="fundoJ2-" role="stop" />
            </link>

            <link xconnector="conectores#onEndStart">
                <bind component="fundoJ2-" role="onEnd" />
                <bind component="fundoJ1-" role="start" />
            </link>

            <link xconnector="conectores#onSelectionAbortNItems">
                <bind component="botSairP-" role="onSelection" />
                <bind component="nivel2" role="abort" />
            </link>

            <link xconnector="conectores#onKeySelectionAbortNItems">
                <bind component="fundoJ2-" role="onSelection">
                    <bindParam name="key" value="YELLOW" />
                </bind>
                <bind component="nivel2" role="abort" />
            </link>

            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ2-" role="onSelection">
                    <bindParam name="key" value="GREEN" />
                </bind>
                <bind component="luaNivel2-" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ2-" role="onSelection">
                    <bindParam name="key" value="RED" />
                </bind>
                <bind component="luaNivel2-" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel2-" interface="figSorteada1" role="onEndAttribution" />
                <bind component="luaNivel2-" interface="figSorteada1" role="get" />
                <bind component="config-" interface="figSorteada1" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel2-" interface="figSorteada2" role="onEndAttribution" />
                <bind component="luaNivel2-" interface="figSorteada2" role="get" />
                <bind component="config-" interface="figSorteada2" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel2-" interface="figSorteada3" role="onEndAttribution" />
                <bind component="luaNivel2-" interface="figSorteada3" role="get" />
                <bind component="config-" interface="figSorteada3" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onBeginSet">
                <bind component="fundoFin-" role="onBegin" />
                <bind component="luaNivel2-" interface="fim_de_jogo" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionAbortNItems">
                <bind component="luaNivel2-" interface="fim_de_jogo" role="onEndAttribution" />
                <bind component="suiteNv2Esq-" role="abort" />
                <bind component="suiteNv2Dir-" role="abort" />
                <bind component="suiteNv2Cen-" role="abort" />
                <bind component="fundoJ1-" role="abort" />
                <bind component="fundoJ2-" role="abort" />
            </link>

            <link xconnector="conectores#onEndAbort">
                <bind component="fundoFin-" role="onEnd" />
                <bind component="nivel2" role="abort" />
            </link>
        </context>
        <context id="nivel3">
            <port id="pLuaNivel3--" component="luaNivel3--" />
            <port id="pFundoJ1--" component="fundoJ1--" />

            <media id="luaNivel3--"   refer="game_script"      instance="new" />
            <media id="config--"      refer="settings"       instance="instSame" />
            <switch id="fundoJ1--">
                <bindRule rule="langPt" constituent="f11--" />
                <bindRule rule="langEn" constituent="f12--" />
                <bindRule rule="langEs" constituent="f13--" />
                <media id="f11--" src="imgs/back/pt/gb1Lv2.png" descriptor="dTelaNormalJogo" />
                <media id="f12--" src="imgs/back/en/gb1Lv2.png" descriptor="dTelaNormalJogo" />
                <media id="f13--" src="imgs/back/es/gb1Lv2.png" descriptor="dTelaNormalJogo" />
            </switch>
            <switch id="fundoJ2--">
                <bindRule rule="langPt" constituent="f21--" />
                <bindRule rule="langEn" constituent="f22--" />
                <bindRule rule="langEs" constituent="f23--" />
                <media id="f21--" src="imgs/back/pt/gb2Lv2.png" descriptor="dVideo" />
                <media id="f22--" src="imgs/back/en/gb2Lv2.png" descriptor="dVideo" />
                <media id="f23--" src="imgs/back/es/gb2Lv2.png" descriptor="dVideo" />
            </switch>
            <switch id="fundoFin--">
                <bindRule rule="langPt" constituent="fE1--" />
                <bindRule rule="langEn" constituent="fE2--" />
                <bindRule rule="langEs" constituent="fE3--" />
                <media id="fE1--" src="imgs/back/pt/end.png" descriptor="dTelaFinal" />
                <media id="fE2--" src="imgs/back/en/end.png" descriptor="dTelaFinal" />
                <media id="fE3--" src="imgs/back/es/end.png" descriptor="dTelaFinal" />
            </switch>
            <switch id="suiteNv3Esq--">
                <bindRule rule="suite1_img_1" constituent="s1_img1--" />
                <bindRule rule="suite1_img_2" constituent="s1_img2--" />
                <bindRule rule="suite1_img_3" constituent="s1_img3--" />
                <bindRule rule="suite1_img_4" constituent="s1_img4--" />
                <bindRule rule="suite1_img_5" constituent="s1_img5--" />
                <bindRule rule="suite1_img_6" constituent="s1_img6--" />
                <bindRule rule="suite1_img_7" constituent="s1_img7--" />
                <bindRule rule="suite1_img_8" constituent="s1_img8--" />
                <bindRule rule="suite1_img_9" constituent="s1_img9--" />
                <bindRule rule="suite1_img_10" constituent="s1_img10--" />
                <bindRule rule="suite1_img_11" constituent="s1_img11--" />
                <bindRule rule="suite1_img_12" constituent="s1_img12--" />

                <media id="s1_img1--" src="imgs/shapes/1.png" descriptor="dS4" />
                <media id="s1_img2--" src="imgs/shapes/2.png" descriptor="dS4" />
                <media id="s1_img3--" src="imgs/shapes/3.png" descriptor="dS4" />
                <media id="s1_img4--" src="imgs/shapes/4.png" descriptor="dS4" />
                <media id="s1_img5--" src="imgs/shapes/5.png" descriptor="dS4" />
                <media id="s1_img6--" src="imgs/shapes/6.png" descriptor="dS4" />
                <media id="s1_img7--" src="imgs/shapes/7.png" descriptor="dS4" />
                <media id="s1_img8--" src="imgs/shapes/8.png" descriptor="dS4" />
                <media id="s1_img9--" src="imgs/shapes/9.png" descriptor="dS4" />
                <media id="s1_img10--" src="imgs/shapes/10.png" descriptor="dS4" />
                <media id="s1_img11--" src="imgs/shapes/11.png" descriptor="dS4" />
                <media id="s1_img12--" src="imgs/shapes/12.png" descriptor="dS4" />
            </switch>
            <switch id="suiteNv3Dir--">
                <bindRule rule="suite2_img_1" constituent="s2_img1--" />
                <bindRule rule="suite2_img_2" constituent="s2_img2--" />
                <bindRule rule="suite2_img_3" constituent="s2_img3--" />
                <bindRule rule="suite2_img_4" constituent="s2_img4--" />
                <bindRule rule="suite2_img_5" constituent="s2_img5--" />
                <bindRule rule="suite2_img_6" constituent="s2_img6--" />
                <bindRule rule="suite2_img_7" constituent="s2_img7--" />
                <bindRule rule="suite2_img_8" constituent="s2_img8--" />
                <bindRule rule="suite2_img_9" constituent="s2_img9--" />
                <bindRule rule="suite2_img_10" constituent="s2_img10--" />
                <bindRule rule="suite2_img_11" constituent="s2_img11--" />
                <bindRule rule="suite2_img_12" constituent="s2_img12--" />

                <media id="s2_img1--" src="imgs/shapes/1.png" descriptor="dS5" />
                <media id="s2_img2--" src="imgs/shapes/2.png" descriptor="dS5" />
                <media id="s2_img3--" src="imgs/shapes/3.png" descriptor="dS5" />
                <media id="s2_img4--" src="imgs/shapes/4.png" descriptor="dS5" />
                <media id="s2_img5--" src="imgs/shapes/5.png" descriptor="dS5" />
                <media id="s2_img6--" src="imgs/shapes/6.png" descriptor="dS5" />
                <media id="s2_img7--" src="imgs/shapes/7.png" descriptor="dS5" />
                <media id="s2_img8--" src="imgs/shapes/8.png" descriptor="dS5" />
                <media id="s2_img9--" src="imgs/shapes/9.png" descriptor="dS5" />
                <media id="s2_img10--" src="imgs/shapes/10.png" descriptor="dS5" />
                <media id="s2_img11--" src="imgs/shapes/11.png" descriptor="dS5" />
                <media id="s2_img12--" src="imgs/shapes/12.png" descriptor="dS5" />
            </switch>
            <switch id="suiteNv3Inf--">
                <bindRule rule="suite3_img_1" constituent="s3_img1--" />
                <bindRule rule="suite3_img_2" constituent="s3_img2--" />
                <bindRule rule="suite3_img_3" constituent="s3_img3--" />
                <bindRule rule="suite3_img_4" constituent="s3_img4--" />
                <bindRule rule="suite3_img_5" constituent="s3_img5--" />
                <bindRule rule="suite3_img_6" constituent="s3_img6--" />
                <bindRule rule="suite3_img_7" constituent="s3_img7--" />
                <bindRule rule="suite3_img_8" constituent="s3_img8--" />
                <bindRule rule="suite3_img_9" constituent="s3_img9--" />
                <bindRule rule="suite3_img_10" constituent="s3_img10--" />
                <bindRule rule="suite3_img_11" constituent="s3_img11--" />
                <bindRule rule="suite3_img_12" constituent="s3_img12--" />

                <media id="s3_img1--" src="imgs/shapes/1.png" descriptor="dS6" />
                <media id="s3_img2--" src="imgs/shapes/2.png" descriptor="dS6" />
                <media id="s3_img3--" src="imgs/shapes/3.png" descriptor="dS6" />
                <media id="s3_img4--" src="imgs/shapes/4.png" descriptor="dS6" />
                <media id="s3_img5--" src="imgs/shapes/5.png" descriptor="dS6" />
                <media id="s3_img6--" src="imgs/shapes/6.png" descriptor="dS6" />
                <media id="s3_img7--" src="imgs/shapes/7.png" descriptor="dS6" />
                <media id="s3_img8--" src="imgs/shapes/8.png" descriptor="dS6" />
                <media id="s3_img9--" src="imgs/shapes/9.png" descriptor="dS6" />
                <media id="s3_img10--" src="imgs/shapes/10.png" descriptor="dS6" />
                <media id="s3_img11--" src="imgs/shapes/11.png" descriptor="dS6" />
                <media id="s3_img12--" src="imgs/shapes/12.png" descriptor="dS6" />
            </switch>
            <switch id="suiteNv3Cen--">
                <bindRule rule="suite4_img_1" constituent="s4_img1--" />
                <bindRule rule="suite4_img_2" constituent="s4_img2--" />
                <bindRule rule="suite4_img_3" constituent="s4_img3--" />
                <bindRule rule="suite4_img_4" constituent="s4_img4--" />
                <bindRule rule="suite4_img_5" constituent="s4_img5--" />
                <bindRule rule="suite4_img_6" constituent="s4_img6--" />
                <bindRule rule="suite4_img_7" constituent="s4_img7--" />
                <bindRule rule="suite4_img_8" constituent="s4_img8--" />
                <bindRule rule="suite4_img_9" constituent="s4_img9--" />
                <bindRule rule="suite4_img_10" constituent="s4_img10--" />
                <bindRule rule="suite4_img_11" constituent="s4_img11--" />
                <bindRule rule="suite4_img_12" constituent="s4_img12--" />

                <media id="s4_img1--" src="imgs/shapes/1.png" descriptor="dS1" />
                <media id="s4_img2--" src="imgs/shapes/2.png" descriptor="dS1" />
                <media id="s4_img3--" src="imgs/shapes/3.png" descriptor="dS1" />
                <media id="s4_img4--" src="imgs/shapes/4.png" descriptor="dS1" />
                <media id="s4_img5--" src="imgs/shapes/5.png" descriptor="dS1" />
                <media id="s4_img6--" src="imgs/shapes/6.png" descriptor="dS1" />
                <media id="s4_img7--" src="imgs/shapes/7.png" descriptor="dS1" />
                <media id="s4_img8--" src="imgs/shapes/8.png" descriptor="dS1" />
                <media id="s4_img9--" src="imgs/shapes/9.png" descriptor="dS1" />
                <media id="s4_img10--" src="imgs/shapes/10.png" descriptor="dS1" />
                <media id="s4_img11--" src="imgs/shapes/11.png" descriptor="dS1" />
                <media id="s4_img12--" src="imgs/shapes/12.png" descriptor="dS1" />
            </switch>
            <media id="botPos--"      descriptor="dBotao2" src="imgs/btns/other/bYes.png"/>
            <media id="botNeg--"      descriptor="dBotao1" src="imgs/btns/other/bNo.png" />
            <switch id="botSairP--">
                <bindRule rule="langPt" constituent="bS1--" />
                <bindRule rule="langEn" constituent="bS2--" />
                <bindRule rule="langEs" constituent="bS3--" />
                <media id="bS1--" src="imgs/btns/pt/bExitMatch.png" descriptor="dBotaoSairPartida" />
                <media id="bS2--" src="imgs/btns/en/bExitMatch.png" descriptor="dBotaoSairPartida" />
                <media id="bS3--" src="imgs/btns/es/bExitMatch.png" descriptor="dBotaoSairPartida" />
            </switch>

            <link xconnector="conectores#onBeginSet">
                <bind component="luaNivel3--" role="onBegin" />
                <bind component="luaNivel3--" interface="nivel" role="set">
                    <bindParam name="var" value="3" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel3--" interface="nivel" role="onEndAttribution" />
                <bind component="luaNivel3--" interface="opcao" role="set">
                    <bindParam name="var" value="-1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarAbortStart">
                <linkParam name="var" value="13" />
                <bind role="onEndAttribution" component="luaNivel3--" interface="counter" />
                <bind role="equals" component="luaNivel3--" interface="counter" />
                <bind role="abort" component="fundoJ2--" />
                <bind role="start" component="fundoFin--"/>
            </link>

            <link xconnector="conectores#onBeginStartNItems">
                <bind component="fundoJ1--" role="onBegin" />
                <bind component="suiteNv3Esq--" role="start" />
                <bind component="suiteNv3Dir--" role="start" />
                <bind component="suiteNv3Inf--" role="start" />
            </link>

            <link xconnector="conectores#onEndStopNItems" >
                <bind component="fundoJ1--" role="onEnd"/>
                <bind component="suiteNv3Esq--" role="stop"/>
                <bind component="suiteNv3Dir--" role="stop" />
                <bind component="suiteNv3Inf--" role="stop" />
            </link>

            <link xconnector="conectores#onEndStartNItems">
                <bind component="suiteNv3Inf--" role="onEnd" />
                <bind component="fundoJ2--" role="start" />
                <bind component="suiteNv3Cen--" role="start" />
                <bind component="botPos--" role="start" />
                <bind component="botNeg--" role="start" />
                <bind component="botSairP--" role="start" />
            </link>

            <link xconnector="conectores#onSelectionSet">
                <bind component="botPos--" role="onSelection" />
                <bind component="luaNivel3--" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onSelectionSet">
                <bind component="botNeg--" role="onSelection" />
                <bind component="luaNivel3--" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionStopNItems">
                <bind component="config--" interface="figSorteada4" role="onEndAttribution" />
                <bind component="suiteNv3Cen--" role="stop" />
                <bind component="botPos--" role="stop" />
                <bind component="botNeg--" role="stop" />
                <bind component="botSairP--" role="stop" />
                <bind component="fundoJ2--" role="stop" />
            </link>

            <link xconnector="conectores#onEndStart">
                <bind component="fundoJ2--" role="onEnd" />
                <bind component="fundoJ1--" role="start" />
            </link>

            <link xconnector="conectores#onSelectionAbortNItems">
                <bind component="botSairP--" role="onSelection" />
                <bind component="nivel3" role="abort" />
            </link>

            <link xconnector="conectores#onKeySelectionAbortNItems">
                <bind component="fundoJ2--" role="onSelection">
                    <bindParam name="key" value="YELLOW" />
                </bind>
                <bind component="nivel3" role="abort" />
            </link>

            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ2--" role="onSelection">
                    <bindParam name="key" value="GREEN" />
                </bind>
                <bind component="luaNivel3--" interface="opcao" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onKeySelectionSet">
                <bind component="fundoJ2--" role="onSelection">
                    <bindParam name="key" value="RED" />
                </bind>
                <bind component="luaNivel3--" interface="opcao" role="set">
                    <bindParam name="var" value="0" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel3--" interface="figSorteada1" role="onEndAttribution" />
                <bind component="luaNivel3--" interface="figSorteada1" role="get" />
                <bind component="config--" interface="figSorteada1" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel3--" interface="figSorteada2" role="onEndAttribution" />
                <bind component="luaNivel3--" interface="figSorteada2" role="get" />
                <bind component="config--" interface="figSorteada2" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel3--" interface="figSorteada3" role="onEndAttribution" />
                <bind component="luaNivel3--" interface="figSorteada3" role="get" />
                <bind component="config--" interface="figSorteada3" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionSet">
                <bind component="luaNivel3--" interface="figSorteada4" role="onEndAttribution" />
                <bind component="luaNivel3--" interface="figSorteada4" role="get" />
                <bind component="config--" interface="figSorteada4" role="set">
                    <bindParam name="var" value="$get" />
                </bind>
            </link>

            <link xconnector="conectores#onBeginSet">
                <bind component="fundoFin--" role="onBegin" />
                <bind component="luaNivel3--" interface="fim_de_jogo" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionAbortNItems">
                <bind component="luaNivel3--" interface="fim_de_jogo" role="onEndAttribution" />
                <bind component="suiteNv3Esq--" role="abort" />
                <bind component="suiteNv3Dir--" role="abort" />
                <bind component="suiteNv3Inf--" role="abort" />
                <bind component="suiteNv3Cen--" role="abort" />
                <bind component="fundoJ1--" role="abort" />
                <bind component="fundoJ2--" role="abort" />
            </link>

            <link xconnector="conectores#onEndAbort">
                <bind component="fundoFin--" role="onEnd" />
                <bind component="nivel3" role="abort" />
            </link>
        </context>

        <link xconnector="conectores#onSelectionIfEqualsToVarStopStart">
            <linkParam name="var" value="1" />
            <bind component="menu" interface="pBtnInicM" role="onSelection" />
            <bind component="settings" interface="nivel" role="equals" />
            <bind component="menu" role="stop" />
            <bind component="nivel1" role="start" />
        </link>

        <link xconnector="conectores#onSelectionIfEqualsToVarStopStart">
            <linkParam name="var" value="2" />
            <bind component="menu" interface="pBtnInicM" role="onSelection" />
            <bind component="settings" interface="nivel" role="equals" />
            <bind component="menu" role="stop" />
            <bind component="nivel2" role="start" />
        </link>

        <link xconnector="conectores#onSelectionIfEqualsToVarStopStart">
            <linkParam name="var" value="3" />
            <bind component="menu" interface="pBtnInicM" role="onSelection" />
            <bind component="settings" interface="nivel" role="equals" />
            <bind component="menu" role="stop" />
            <bind component="nivel3" role="start" />
        </link>

        <link xconnector="conectores#onSelectionStopStart">
            <bind component="menu" interface="pBtnSelecM" role="onSelection" />
            <bind component="menu" role="stop" />
            <bind component="selecaoNivel" role="start" />
        </link>

        <link xconnector="conectores#onKeySelectionStopStart">
            <bind component="menu" interface="pBtnSelecM" role="onSelection">
                <bindParam name="key" value="YELLOW" />
            </bind>
            <bind component="menu" role="stop" />
            <bind component="selecaoNivel" role="start" />
        </link>

        <link xconnector="conectores#onSelectionStopStart">
            <bind component="menu" interface="pBtnSelecL" role="onSelection" />
            <bind component="menu" role="stop" />
            <bind component="selecaoIdioma" role="start" />
        </link>

        <link xconnector="conectores#onKeySelectionStopStart">
            <bind component="menu" interface="pBtnSelecL" role="onSelection">
                <bindParam name="key" value="BLUE" />
            </bind>
            <bind component="menu" role="stop" />
            <bind component="selecaoIdioma" role="start" />
        </link>

        <link xconnector="conectores#onSelectionStop">
            <bind component="menu" interface="pBtnSairM" role="onSelection" />
            <bind component="ctx_principal" role="stop" />
        </link>

        <link xconnector="conectores#onKeySelectionStop">
            <bind component="menu" interface="pBtnSairM" role="onSelection">
                <bindParam name="key" value="RED" />
            </bind>
            <bind component="ctx_principal" role="stop" />
        </link>

        <link xconnector="conectores#onSelectionSet">
            <bind component="selecaoNivel" interface="pBNv1" role="onSelection" />
            <bind component="settings" interface="nivel" role="set">
                <bindParam name="var" value="1" />
            </bind>
        </link>

        <link xconnector="conectores#onKeySelectionSet">
            <bind component="selecaoNivel" interface="pBNv1" role="onSelection">
                <bindParam name="key" value="RED" />
            </bind>
            <bind component="settings" interface="nivel" role="set">
                <bindParam name="var" value="1" />
            </bind>
        </link>

        <link xconnector="conectores#onSelectionSet">
            <bind component="selecaoNivel" interface="pBNv2" role="onSelection" />
            <bind component="settings" interface="nivel" role="set">
                <bindParam name="var" value="2" />
            </bind>
        </link>

        <link xconnector="conectores#onKeySelectionSet">
            <bind component="selecaoNivel" interface="pBNv2" role="onSelection">
                <bindParam name="key" value="GREEN" />
            </bind>
            <bind component="settings" interface="nivel" role="set">
                <bindParam name="var" value="2" />
            </bind>
        </link>

        <link xconnector="conectores#onSelectionSet">
            <bind component="selecaoNivel" interface="pBNv3" role="onSelection" />
            <bind component="settings" interface="nivel" role="set">
                <bindParam name="var" value="3" />
            </bind>
        </link>

        <link xconnector="conectores#onKeySelectionSet">
            <bind component="selecaoNivel" interface="pBNv3" role="onSelection">
                <bindParam name="key" value="YELLOW" />
            </bind>
            <bind component="settings" interface="nivel" role="set">
                <bindParam name="var" value="3" />
            </bind>
        </link>

        <link xconnector="conectores#onEndAttributionStopStart">
            <bind component="settings" interface="nivel" role="onEndAttribution" />
            <bind component="selecaoNivel" role="stop" />
            <bind component="menu" role="start" />
        </link>

        <link xconnector="conectores#onSelectionSet">
            <bind component="selecaoIdioma" interface="pBPt" role="onSelection" />
            <bind component="settings" interface="service.gameLanguage" role="set">
                <bindParam name="var" value="pt" />
            </bind>
        </link>

        <link xconnector="conectores#onSelectionSet">
            <bind component="selecaoIdioma" interface="pBEn" role="onSelection" />
            <bind component="settings" interface="service.gameLanguage" role="set">
                <bindParam name="var" value="en" />
            </bind>
        </link>

        <link xconnector="conectores#onSelectionSet">
            <bind component="selecaoIdioma" interface="pBEs" role="onSelection" />
            <bind component="settings" interface="service.gameLanguage" role="set">
                <bindParam name="var" value="es" />
            </bind>
        </link>

        <link xconnector="conectores#onEndAttributionStopStart">
            <bind component="settings" interface="service.gameLanguage" role="onEndAttribution" />
            <bind component="selecaoIdioma" role="stop" />
            <bind component="menu" role="start" />
        </link>

        <link xconnector="conectores#onBeginAbort">
            <bind component="menu" role="onBegin" />
            <bind component="selecaoNivel" role="abort" />
            <!--<bind component="selecaoIdioma" role="abort" />-->
        </link>

        <!--<link xconnector="conectores#onEndStart">
            <bind component="nivel1" role="onEnd" />
            <bind component="menu" role="start" />
        </link>-->

        <link xconnector="conectores#onAbortStart">
            <bind component="nivel1" role="onAbort" />
            <bind component="menu" role="start" />
        </link>

        <link xconnector="conectores#onEndStart">
            <bind component="nivel2" role="onEnd" />
            <bind component="menu" role="start" />
        </link>

        <link xconnector="conectores#onEndStart">
            <bind component="nivel3" role="onEnd" />
            <bind component="menu" role="start" />
        </link>
    </body>
</ncl>