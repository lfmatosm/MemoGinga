<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="testelua">
    <head>    	
        <regionBase>
            <region id="rgLua" top="45%" left="38%" width="50%" height="50%" zIndex="1" />
        </regionBase>
        
        <descriptorBase>
            <descriptor id="dLua" region="rgLua" />
        </descriptorBase>
    </head>
 
    <body id="ctx_a">
        <port id="pL" component="lua" />
        <media id="lua"   src="../lua/game_script.lua" descriptor="dLua">
            <property name="nivel" value="1" />
            <property name="figSorteada1" value="1" />
            <property name="figSorteada2" value="1" />
            <property name="figSorteada3" value="1" />
            <property name="figSorteada4" value="1" />
            <property name="opcao" />
            <property name="counter" value="0" />
        </media>
    </body>
</ncl>