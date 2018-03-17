<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="selecaoDeNivel">
    <head>    	
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
            <descriptor id="dBotao1" region="rgBotao1" focusIndex="1" moveUp="3" moveDown="2" />
            <descriptor id="dBotao2" region="rgBotao2" focusIndex="2" moveUp="1" moveDown="3" />
            <descriptor id="dBotao3" region="rgBotao3" focusIndex="3" moveUp="2" moveDown="1" />
            <descriptor id="dAudio" region="rgAudio" />
        </descriptorBase>        
        
        <connectorBase>
            <importBase alias="conectores" documentURI="connectors/connectors.ncl" />
        </connectorBase>
    </head>
 
    <body id="ctx_principalSelecaoNivel">
        <!--<port id="p1" component="ctx_selecaoNivel" interface="pBtnExterna" />-->
        <port id="p1" component="ctx_selecaoNivel" />

        <media id="settings" type="application/x-ginga-settings">
            <property name="service.currentFocus" value="1" />
        </media>

        <context id="ctx_selecaoNivel">
            <port id="pFundoSelecNv" component="fundo" />
            <port id="pBNv1" component="btnNv1" />
            <port id="pBNv2" component="btnNv2" />
            <port id="pBNv3" component="btnNv3" />
            <!--<port id="pBtnExterna" component="ctx_internoDaSelecao" interface="pBtn" />-->
            <media id="sett" refer="settings" instance="instSame" />

            <media id="fundo" src="imgs/fundos/fundoSelecaoNivel.png" descriptor="dVideo" />
            <media id="btnNv1" src="imgs/btnNv1.png" descriptor="dBotao1" />
            <media id="btnNv2" src="imgs/btnNv2.png" descriptor="dBotao2" />
            <media id="btnNv3" src="imgs/btnNv3.png" descriptor="dBotao3" />
            <media type="text/plain" id="nivel1Txt"  src="txt/nivel1Info.txt" descriptor="dTexto" />
            <media type="text/plain" id="nivel2Txt"  src="txt/nivel2Info.txt" descriptor="dTexto" />
            <media type="text/plain" id="nivel3Txt"  src="txt/nivel3Info.txt" descriptor="dTexto" />

            <link xconnector="conectores#onBeginSet">
                <bind component="fundo" role="onBegin" />
                <bind component="sett" interface="service.currentFocus" role="set">
                    <bindParam name="var" value="1" />
                </bind>
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarStopNStartN">
                <linkParam name="var" value="1" />
                <bind component="sett" interface="service.currentFocus" role="onEndAttribution" />
                <bind component="sett" interface="service.currentFocus" role="equals" />
                <bind component="nivel2Txt" role="stop" />
                <bind component="nivel3Txt" role="stop" />
                <bind component="nivel1Txt" role="start" />
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarStopNStartN">
                <linkParam name="var" value="2" />
                <bind component="sett" interface="service.currentFocus" role="onEndAttribution" />
                <bind component="sett" interface="service.currentFocus" role="equals" />
                <bind component="nivel1Txt" role="stop" />
                <bind component="nivel3Txt" role="stop" />
                <bind component="nivel2Txt" role="start" />
            </link>

            <link xconnector="conectores#onEndAttributionIfEqualsToVarStopNStartN">
                <linkParam name="var" value="3" />
                <bind component="sett" interface="service.currentFocus" role="onEndAttribution" />
                <bind component="sett" interface="service.currentFocus" role="equals" />
                <bind component="nivel1Txt" role="stop" />
                <bind component="nivel2Txt" role="stop" />
                <bind component="nivel3Txt" role="start" />
            </link>

            <!--<context id="ctx_internoDaSelecao">
                <port id="pBtn" component="btnInter" />

                <media id="btnInter" src="imgs/inter.png" descriptor="dSuiteCentral" />
            </context>-->
        </context>
    </body>
</ncl>