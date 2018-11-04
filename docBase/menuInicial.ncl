<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="menuInicial">
    <head>
        <ruleBase>
            <rule id="langPt" var="service.gameLanguage" comparator="eq" value="pt" />
            <rule id="langEn" var="service.gameLanguage" comparator="eq" value="en" />
            <rule id="langEs" var="service.gameLanguage" comparator="eq" value="es" />
        </ruleBase>
        <regionBase>
            <region id="rgVideo" left="0%" top="0%" width="100%" height="100%" zIndex="0" />
            <region id="rgMenu" top="55%" left="37.5%" width="25%" height="45%" zIndex="1">
                <region id="rgBotao1" height="20%" />
                <region id="rgBotao2" top="20%" height="20%" />
                <region id="rgBotao3" top="40%" height="20%" />
                <region id="rgBotao4" top="60%" height="20%" />    
            </region>
            <region id="rgAudio" top="0%" left="0%" width="0%" height="0%" zIndex="1" />
        </regionBase>
        
        <descriptorBase>
            <descriptor id="dVideo" region="rgVideo" />
            <descriptor id="dBotao1" region="rgBotao1" focusIndex="1" moveUp="4" moveDown="2" />
            <descriptor id="dBotao2" region="rgBotao2" focusIndex="2" moveUp="1" moveDown="3" />
            <descriptor id="dBotao3" region="rgBotao3" focusIndex="3" moveUp="2" moveDown="4" />
            <descriptor id="dBotao4" region="rgBotao4" focusIndex="4" moveUp="3" moveDown="1" />
            <descriptor id="dAudio" region="rgAudio">
                <descriptorParam name="soundLevel" value="0.5" />
            </descriptor>
        </descriptorBase>        
        
        <connectorBase>
            <importBase alias="conectores" documentURI="../connectors/connectors.ncl" />
        </connectorBase>
    </head>
 
    <body id="ctx_principalMenuInicial">
        <port id="pCtx" component="ctx_menuInicial" />

        <media id="settings" type="application/x-ginga-settings" />

        <context id="ctx_menuInicial">
            <port id="pFundoM" component="fundoMenu" />
            <port id="pBtnInicM" component="btnIniciarJogo" />
            <port id="pBtnSelecM" component="btnSelecNivel" />
            <port id="pBtnSelecL" component="btnSelecLing" />
            <port id="pBtnSairM" component="btnSairJogo" />

            <switch id="fundoMenu">
                <bindRule rule="langPt" constituent="f1Mn" />
                <bindRule rule="langEn" constituent="f2Mn" />
                <bindRule rule="langEs" constituent="f3Mn" />
                <media id="f1Mn" descriptor="dVideo" src="../imgs/back/pt/start.png" />
                <media id="f2Mn" descriptor="dVideo" src="../imgs/back/en/start.png" />
                <media id="f3Mn" descriptor="dVideo" src="../imgs/back/es/start.png" />
            </switch>
            <switch id="btnIniciarJogo">
                <bindRule rule="langPt" constituent="b1_1Mn" />
                <bindRule rule="langEn" constituent="b1_2Mn" />
                <bindRule rule="langEs" constituent="b1_3Mn" />
                <media id="b1_1Mn" descriptor="dBotao1" src="../imgs/btns/pt/bStart.png" />
                <media id="b1_2Mn" descriptor="dBotao1" src="../imgs/btns/en/bStart.png" />
                <media id="b1_3Mn" descriptor="dBotao1" src="../imgs/btns/es/bStart.png" />
            </switch>
            <switch id="btnSelecNivel">
                <bindRule rule="langPt" constituent="b2_1Mn" />
                <bindRule rule="langEn" constituent="b2_2Mn" />
                <bindRule rule="langEs" constituent="b2_3Mn" />
                <media id="b2_1Mn" descriptor="dBotao2" src="../imgs/btns/pt/bLv.png" />
                <media id="b2_2Mn" descriptor="dBotao2" src="../imgs/btns/en/bLv.png" />
                <media id="b2_3Mn" descriptor="dBotao2" src="../imgs/btns/es/bLv.png" />
            </switch>
            <switch id="btnSelecLing">
                <bindRule rule="langPt" constituent="b3_1Mn" />
                <bindRule rule="langEn" constituent="b3_2Mn" />
                <bindRule rule="langEs" constituent="b3_3Mn" />
                <media id="b3_1Mn" descriptor="dBotao3" src="../imgs/btns/pt/bLng.png" />
                <media id="b3_2Mn" descriptor="dBotao3" src="../imgs/btns/en/bLng.png" />
                <media id="b3_3Mn" descriptor="dBotao3" src="../imgs/btns/es/bLng.png" />
            </switch>
            <switch id="btnSairJogo">
                <bindRule rule="langPt" constituent="b4_1Mn" />
                <bindRule rule="langEn" constituent="b4_2Mn" />
                <bindRule rule="langEs" constituent="b4_3Mn" />
                <media id="b4_1Mn" descriptor="dBotao4" src="../imgs/btns/pt/bExitGame.png" />
                <media id="b4_2Mn" descriptor="dBotao4" src="../imgs/btns/en/bExitGame.png" />
                <media id="b4_3Mn" descriptor="dBotao4" src="../imgs/btns/es/bExitGame.png" />
            </switch>

            <link xconnector="conectores#onSelectionStopNItems">
                <bind component="btnIniciarJogo" role="onSelection" />
                <bind component="ctx_menuInicial" role="stop" />
            </link>

            <link xconnector="conectores#onSelectionStopNItems">
                <bind component="btnSelecNivel" role="onSelection" />
                <bind component="ctx_menuInicial" role="stop" />
            </link>

            <link xconnector="conectores#onSelectionStopNItems">
                <bind component="btnSelecLing" role="onSelection" />
                <bind component="ctx_menuInicial" role="stop" />
            </link>

            <link xconnector="conectores#onSelectionStopNItems">
                <bind component="btnSairJogo" role="onSelection" />
                <bind component="ctx_menuInicial" role="stop" />
            </link>

            <link xconnector="conectores#onKeySelectionStopNItems">
                <bind component="btnIniciarJogo" role="onSelection">
                    <bindParam name="key" value="GREEN" />
                </bind>
                <bind component="ctx_menuInicial" role="stop" />
            </link>

            <link xconnector="conectores#onKeySelectionStopNItems">
                <bind component="btnSelecNivel" role="onSelection">
                    <bindParam name="key" value="YELLOW" />
                </bind>
                <bind component="ctx_menuInicial" role="stop" />
            </link>

            <link xconnector="conectores#onKeySelectionStopNItems">
                <bind component="btnSelecLing" role="onSelection">
                    <bindParam name="key" value="BLUE" />
                </bind>
                <bind component="ctx_menuInicial" role="stop" />
            </link>

            <link xconnector="conectores#onKeySelectionStopNItems">
                <bind component="btnSairJogo" role="onSelection">
                    <bindParam name="key" value="RED" />
                </bind>
                <bind component="ctx_menuInicial" role="stop" />
            </link>
        </context>
    </body>
</ncl>