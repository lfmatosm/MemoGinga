<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="sensor">
    <head>
    	<regionBase>
    		<region id="rgSensor" top="80%" width="50%" right="70%" zIndex="2">
    			<region id="rgHeart" width="15%" height="40%" />
    		</region>
    	</regionBase>
    	<descriptorBase>
    		<descriptor id="dLua" region="rgSensor" />
    		<descriptor id="dHeart" region="rgHeart" />
    	</descriptorBase>
    	<connectorBase>
    		<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin" />
				<simpleAction role="start" />
			</causalConnector>
			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" />	
			</causalConnector>
			<causalConnector id="onBeginSet">
				<simpleCondition role="onBegin" />
				<connectorParam name="var" />
				<simpleAction role="set" value="$var" />
			</causalConnector>
			<causalConnector id="onSelectionStop">
				<simpleCondition role="onSelection" />
				<simpleAction role="stop" />
			</causalConnector>
			<causalConnector id="onKeySelectionStop">
				<connectorParam name="key" />
				<simpleCondition role="onSelection" key="$key" />
				<simpleAction role="stop" />
			</causalConnector>
    	</connectorBase>
    </head>
    <body>
    	<port id="p1" component="sensorCtx" />
    	<context id="sensorCtx">
    		<port id="pHeart" component="heart" />
    		<media id="luaSensor" src="sensorScript.lua" descriptor="dLua" />
    		<media id="heart" src="../imgs/heartbeat.gif" descriptor="dHeart" />

    		<link xconnector="onBeginStart">
    			<bind component="heart" role="onBegin" />
    			<bind component="luaSensor" role="start" />
    		</link>
    		
            <link xconnector="onEndStop">
    			<bind component="heart" role="onEnd" />
    			<bind component="luaSensor" role="stop" />
    		</link>
    		
            <link xconnector="onKeySelectionStop">
    			<bind component="heart" role="onSelection">
    				<bindParam name="key" value="RED" />
    			</bind>
    			<bind component="heart" role="stop" />
    		</link>
    	</context>
    </body>
</ncl>
