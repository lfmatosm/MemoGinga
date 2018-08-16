<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="selecaoDeIdioma">
    <head>
        <ruleBase>
            <rule id="langPt" var="service.gameLanguage" comparator="eq" value="pt" />
            <rule id="langEn" var="service.gameLanguage" comparator="eq" value="en" />
            <rule id="langEs" var="service.gameLanguage" comparator="eq" value="es" />
        </ruleBase>   	
        <regionBase>
            <region id="rgVideo" left="0%" top="0%" width="100%" height="100%" zIndex="0" />
            <region id="rgTexto" left="30%" top="20%" zIndex="1" />
            <region id="rgMenu" top="20%" left="5%" width="20%" height="100%" zIndex="1">
                <region id="rgBotao1" height="10%" />
                <region id="rgBotao2" top="30%" height="10%" />
                <region id="rgBotao3" top="60%" height="10%" />    
            </region>
            <region id="rgAudio" top="0%" left="0%" width="0%" height="0%" zIndex="1" />
        </regionBase>
        
        <descriptorBase>
            <descriptor id="dVideo" region="rgVideo" />
            <descriptor id="dTexto" region="rgTexto">
                <descriptorParam name="fontFamily" value="vera" />
                <descriptorParam name="fontSize" value="24" />
                <descriptorParam name="fontColor" value="blue" />
            </descriptor>
            <descriptor id="dBotao1" region="rgBotao1" focusIndex="-10" moveUp="-8" moveDown="-9" />
            <descriptor id="dBotao2" region="rgBotao2" focusIndex="-9" moveUp="-10" moveDown="-8" />
            <descriptor id="dBotao3" region="rgBotao3" focusIndex="-8" moveUp="-9" moveDown="-10" />
            <descriptor id="dAudio" region="rgAudio" />
        </descriptorBase>        
        
        <connectorBase>
            <importBase alias="conectores" documentURI="../connectors/connectors.ncl" />
        </connectorBase>
    </head>
 
    <body id="ctx_principalSelecaoIdioma">
        <port id="pSId" component="ctx_selecaoNivel" />

        <media id="settings" type="application/x-ginga-settings" />

        <context id="ctx_selecaoIdioma">
            <port id="pFundoSelecId" component="fundo" />
            <port id="pBPt" component="btnNv1" />
            <port id="pBEn" component="btnNv2" />
            <port id="pBEs" component="btnNv3" />

            <media id="sett" refer="settings" instance="instSame" />

            <switch id="fundo">
                <bindRule rule="langPt" constituent="f1SLv" />
                <bindRule rule="langEn" constituent="f2SLv" />
                <bindRule rule="langEs" constituent="f3SLv" />
                <media id="f1SLv" src="../imgs/back/pt/lng.png" descriptor="dVideo" />
                <media id="f2SLv" src="../imgs/back/en/lng.png" descriptor="dVideo" />
                <media id="f3SLv" src="../imgs/back/es/lng.png" descriptor="dVideo" />
            </switch>
            <media id="btnNv1" src="../imgs/btns/other/pt.png" descriptor="dBotao1" />
            <media id="btnNv2" src="../imgs/btns/other/en.png" descriptor="dBotao2" />
            <media id="btnNv3" src="../imgs/btns/other/es.png" descriptor="dBotao3" />

            
            <!--<switch id="nivel1Txt">
                <bindRule rule="langPt" constituent="t1_1SLv" />
                <bindRule rule="langEn" constituent="t1_2SLv" />
                <bindRule rule="langEs" constituent="t1_3SLv" />
                <media type="text/plain" id="t1_1SLv"  src="../txt/pt/lv1Info.txt" descriptor="dTexto" />
                <media type="text/plain" id="t1_2SLv"  src="../txt/en/lv1Info.txt" descriptor="dTexto" />
                <media type="text/plain" id="t1_3SLv"  src="../txt/es/lv1Info.txt" descriptor="dTexto" />
            </switch>
            <switch id="nivel2Txt">
                <bindRule rule="langPt" constituent="t2_1SLv" />
                <bindRule rule="langEn" constituent="t2_2SLv" />
                <bindRule rule="langEs" constituent="t2_3SLv" />
                <media type="text/plain" id="t2_1SLv"  src="../txt/pt/lv2Info.txt" descriptor="dTexto" />
                <media type="text/plain" id="t2_2SLv"  src="../txt/en/lv2Info.txt" descriptor="dTexto" />
                <media type="text/plain" id="t2_3SLv"  src="../txt/es/lv2Info.txt" descriptor="dTexto" />
            </switch>
            <switch id="nivel3Txt">
                <bindRule rule="langPt" constituent="t3_1SLv" />
                <bindRule rule="langEn" constituent="t3_2SLv" />
                <bindRule rule="langEs" constituent="t3_3SLv" />
                <media type="text/plain" id="t3_1SLv"  src="../txt/pt/lv3Info.txt" descriptor="dTexto" />
                <media type="text/plain" id="t3_2SLv"  src="../txt/en/lv3Info.txt" descriptor="dTexto" />
                <media type="text/plain" id="t3_3SLv"  src="../txt/es/lv3Info.txt" descriptor="dTexto" />
            </switch>

            <link xconnector="conectores#onBeginSet">
                <bind component="fundo" role="onBegin" />
                <bind component="sett" interface="service.currentFocus" role="set">
                    <bindParam name="var" value="-3" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarStopNStartN">
                <linkParam name="var" value="-3" />
                <bind component="sett" interface="service.currentFocus" role="onEndAttribution" />
                <bind component="sett" interface="service.currentFocus" role="equals" />
                <bind component="nivel2Txt" role="stop" />
                <bind component="nivel3Txt" role="stop" />
                <bind component="nivel1Txt" role="start" />
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarStopNStartN">
                <linkParam name="var" value="-2" />
                <bind component="sett" interface="service.currentFocus" role="onEndAttribution" />
                <bind component="sett" interface="service.currentFocus" role="equals" />
                <bind component="nivel1Txt" role="stop" />
                <bind component="nivel3Txt" role="stop" />
                <bind component="nivel2Txt" role="start" />
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarStopNStartN">
                <linkParam name="var" value="-1" />
                <bind component="sett" interface="service.currentFocus" role="onEndAttribution" />
                <bind component="sett" interface="service.currentFocus" role="equals" />
                <bind component="nivel1Txt" role="stop" />
                <bind component="nivel2Txt" role="stop" />
                <bind component="nivel3Txt" role="start" />
            </link>-->
        </context>
    </body>
</ncl>