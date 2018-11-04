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
            <region id="rgAudio" top="0%" left="0%" width="0%" height="0%" zIndex="1" />
            <!--Rg. botões do menu idioma-->
            <region id="rgMId" top="32.5%" left="37.5%" width="25%" height="35%" zIndex="1">
                <region id="rgB1" height="20%" />
                <region id="rgB2" top="20%" height="20%" />
                <region id="rgB3" top="40%" height="20%" />
                <region id="rgB4" top="60%" height="20%" />    
            </region>
        </regionBase>
        <descriptorBase>
            <descriptor id="dVideo" region="rgVideo" />
            <descriptor id="dAudio" region="rgAudio" />
            <descriptor id="dB1" region="rgB1" focusIndex="1" moveUp="3" moveDown="2" />
            <descriptor id="dB2" region="rgB2" focusIndex="2" moveUp="1" moveDown="3" />
            <descriptor id="dB3" region="rgB3" focusIndex="3" moveUp="2" moveDown="1" />
        </descriptorBase>        
        
        <connectorBase>
            <importBase alias="conectores" documentURI="../connectors/connectors.ncl" />
        </connectorBase>
    </head>
 
    <body id="ctx_principalSelecaoIdioma">
        <port id="pSIdioma" component="ctx_selecaoIdioma" />

        <media id="settings" type="application/x-ginga-settings" />

        <context id="ctx_selecaoIdioma">
            <port id="pFl" component="fundoLng" />
            <port id="pBPt" component="bPt" />
            <port id="pBEn" component="bEn" />
            <port id="pBEs" component="bEs" />
            
            <media id="sett" refer="settings" instance="instSame" />

            <media id="bPt" src="../imgs/btns/other/pt.png" descriptor="dB1" />
            <media id="bEn" src="../imgs/btns/other/en.png" descriptor="dB2" />
            <media id="bEs" src="../imgs/btns/other/es.png" descriptor="dB3" />
            <switch id="fundoLng">
                <bindRule rule="langPt" constituent="fLng1" />
                <bindRule rule="langEn" constituent="fLng2" />
                <bindRule rule="langEs" constituent="fLng3" />
                <media id="fLng1" src="../imgs/back/pt/lng.png" descriptor="dVideo" />
                <media id="fLng2" src="../imgs/back/en/lng.png" descriptor="dVideo" />
                <media id="fLng3" src="../imgs/back/es/lng.png" descriptor="dVideo" />
            </switch>

            <link xconnector="conectores#onSelectionStop">
                <bind component="bPt" role="onSelection" />
                <bind component="ctx_selecaoIdioma" role="stop" />
            </link>
            <link xconnector="conectores#onSelectionStop">
                <bind component="bEn" role="onSelection" />
                <bind component="ctx_selecaoIdioma" role="stop" />
            </link>
            <link xconnector="conectores#onSelectionStop">
                <bind component="bEs" role="onSelection" />
                <bind component="ctx_selecaoIdioma" role="stop" />
            </link>

            <link xconnector="conectores#onKeySelectionStopNItems">
                <bind component="bPt" role="onSelection">
                    <bindParam name="key" value="GREEN" />
                </bind>
                <bind component="ctx_selecaoIdioma" role="stop" />
            </link>
            <link xconnector="conectores#onKeySelectionStopNItems">
                <bind component="bEn" role="onSelection">
                    <bindParam name="key" value="BLUE" />
                </bind>
                <bind component="ctx_selecaoIdioma" role="stop" />
            </link>
            <link xconnector="conectores#onKeySelectionStopNItems">
                <bind component="bEs" role="onSelection">
                    <bindParam name="key" value="RED" />
                </bind>
                <bind component="ctx_selecaoIdioma" role="stop" />
            </link>
        </context>
    </body>
</ncl>