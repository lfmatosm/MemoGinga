<?xml version="1.0" encoding="ISO-8859-1"?>
<!--Base de Conectores:-->
<ncl id="connectors" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<connectorBase>
			<!--Conectores de 1 para 1:-->
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin" />
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onBeginSet">
				<simpleCondition role="onBegin" />
				<connectorParam name="var" />
				<simpleAction role="set" value="$var" />
			</causalConnector>

			<causalConnector id="onEndSet">
				<simpleCondition role="onEnd" />
				<connectorParam name="var" />
				<simpleAction role="set" value="$var" />
			</causalConnector>

			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" />	
			</causalConnector>

			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd" />
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onEndAbort">
				<simpleCondition role="onEnd" />
				<simpleAction role="abort" />
			</causalConnector>

			<causalConnector id="onAbortStart">
				<simpleCondition role="onAbort" />
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onBeginStartDelay">
				<connectorParam name="delay" />
				<simpleCondition role="onBegin" />
				<simpleAction role="start" delay="$delay" />
			</causalConnector>

			<causalConnector id="onEndStartDelay">
				<connectorParam name="delay" />
				<simpleCondition role="onEnd" />
				<simpleAction role="start" delay="$delay" />
			</causalConnector>

			<causalConnector id="onEndAttributionStart">
				<connectorParam name="delay" />
				<simpleCondition role="onEndAttribution" />
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onEndAttributionStop">
				<connectorParam name="delay" />
				<simpleCondition role="onEndAttribution" />
				<simpleAction role="stop" />
			</causalConnector>

			<causalConnector id="onEndAttributionStartDelay">
				<connectorParam name="delay" />
				<simpleCondition role="onEndAttribution" />
				<simpleAction role="start" delay="$delay" />
			</causalConnector>


			<causalConnector id="onKeySelectionStop">
				<connectorParam name="key" />
				<simpleCondition role="onSelection" key="$key" />
				<simpleAction role="stop" />
			</causalConnector>

			<causalConnector id="onKeySelectionStart">
				<connectorParam name="key" />
				<simpleCondition role="onSelection" key="$key" />
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onSelectionEnd">
				<simpleCondition role="onSelection" />
				<simpleAction role="stop" />
			</causalConnector>

			<causalConnector id="onSelectionSet">
				<simpleCondition role="onSelection" />
				<connectorParam name="var" />
				<simpleAction role="set" value="$var" />
			</causalConnector>

			<causalConnector id="onKeySelectionSet">
				<connectorParam name="key" />
				<simpleCondition role="onSelection" key="$key" />
				<connectorParam name="var" />
				<simpleAction role="set" value="$var" />
			</causalConnector>

			<causalConnector id="onSelectionStopSet">
				<simpleCondition role="onSelection"/>
				<connectorParam name="var"/>
				<compoundAction operator="seq">
					<simpleAction role="stop"/>
					<simpleAction role="set" value="$var"/>
				</compoundAction>
			</causalConnector>

			<causalConnector id="onSelectionSetStart">
				<simpleCondition role="onSelection" />
				<connectorParam name="var" />
				<compoundAction operator="seq">
					<simpleAction role="set" value="$var" />
					<simpleAction role="start" />
				</compoundAction>
			</causalConnector>

			<causalConnector id="onSelectionStart">
				<simpleCondition role="onSelection" />
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onSelectionAbort">
				<simpleCondition role="onSelection" />
				<simpleAction role="abort" />
			</causalConnector>

			<causalConnector id="onSelectionStop">
				<simpleCondition role="onSelection" />
				<simpleAction role="stop" />
			</causalConnector>

			<causalConnector id="onSelectionAbortStart">
				<simpleCondition role="onSelection" />
				<compoundAction operator="seq">
					<simpleAction role="abort" />
					<simpleAction role="start" />
				</compoundAction>
			</causalConnector>

			<causalConnector id="onBeginSetStart">
				<simpleCondition role="onBegin" />
				<connectorParam name="var" />
				<compoundAction operator="seq">
					<simpleAction role="set" value="$var" />
					<simpleAction role="start" />
				</compoundAction>
			</causalConnector>

			<causalConnector id="onBeginPropertyTestEqStop">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onBegin" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="stop" />
			</causalConnector>

			<causalConnector id="onEndAttributionIfGreaterThanVarStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="gt">
						<attributeAssessment role="greaterThan" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onEndAttributionIfLessThanVarStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="lt">
						<attributeAssessment role="lessThan" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onEndAttributionIfLessThanVarStopStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="lt">
						<attributeAssessment role="lessThan" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<compoundAction>
					<simpleAction role="stop" />
					<simpleAction role="start" />	
				</compoundAction>				
			</causalConnector>

			<causalConnector id="onEndAttributionIfLessThanVarStopNItemsStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="lt">
						<attributeAssessment role="lessThan" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<compoundAction>
					<simpleAction role="stop" max="unbounded" qualifier="par" />
					<simpleAction role="start" />	
				</compoundAction>				
			</causalConnector>

			<causalConnector id="onEndAttributionIfGreaterThanVarStopStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="gt">
						<attributeAssessment role="greaterThan" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<compoundAction>
					<simpleAction role="stop" />
					<simpleAction role="start" />	
				</compoundAction>				
			</causalConnector>

			<causalConnector id="onEndAttributionIfEqualsToVarStopStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<compoundAction>
					<simpleAction role="stop" />
					<simpleAction role="start" />	
				</compoundAction>				
			</causalConnector>

			<causalConnector id="onEndAttributionIfEqualsToVarStopNStartN">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<compoundAction>
					<simpleAction role="stop" max="unbounded" qualifier="par" />
					<simpleAction role="start" max="unbounded" qualifier="par" />	
				</compoundAction>				
			</causalConnector>

			<causalConnector id="onEndAttributionIfEqualsToVarAbortStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<compoundAction>
					<simpleAction role="abort" />
					<simpleAction role="start" />	
				</compoundAction>				
			</causalConnector>

			<causalConnector id="onEndAttributionIfEqualsToVarStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onEndAttributionIfEqualsToVarStopNItemsStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEndAttribution" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<compoundAction>
					<simpleAction role="stop" max="unbounded" qualifier="par" />
					<simpleAction role="start" />	
				</compoundAction>				
			</causalConnector>

			<causalConnector id="onEndIfGreaterThanVarStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEnd" />
					<assessmentStatement comparator="gt">
						<attributeAssessment role="greaterThan" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onEndIfEqualsToVarStart">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onEnd" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onBeginIfEqualsToVarStartNItems">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onBegin" />
					<assessmentStatement comparator="eq">
						<attributeAssessment role="equals" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onBeginIfLessThanVarStartNItems">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onBegin" />
					<assessmentStatement comparator="lt">
						<attributeAssessment role="lessThan" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onBeginPropertyTestGteStop">
				<connectorParam name="var" />
				<compoundCondition operator="and">
					<simpleCondition role="onBegin" />
					<assessmentStatement comparator="gte">
						<attributeAssessment role="isGreater" eventType="attribution" attributeType="nodeProperty" />
						<valueAssessment value="$var" />
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="stop" />
			</causalConnector>

			<causalConnector id="onSelectionChangePropertyStopStart">
				<connectorParam name="value" />
				<simpleCondition role="onSelection" />
				<compoundAction operator="seq">
					<simpleAction role="stop" />
					<simpleAction role="set" value="$value" />
					<!--<simpleAction role="start" />-->	
				</compoundAction>
			</causalConnector>

			<causalConnector id="onSelectionChangePropertyAbortStart">
				<connectorParam name="value" />
				<simpleCondition role="onSelection" />
				<compoundAction operator="seq">
					<simpleAction role="abort" />
					<simpleAction role="set" value="$value" />
					<simpleAction role="start" />	
				</compoundAction>
			</causalConnector>

			<causalConnector id="onCondGteBeginStart">
				<connectorParam name="var"/>
				<compoundCondition operator="and">
					<simpleCondition role="onBegin" />
					<assessmentStatement comparator="gte">
						<attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
						<valueAssessment value="$var"/>
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start"/>
			</causalConnector>

			<causalConnector id="onCondLtBeginStart">
				<connectorParam name="var"/>
				<compoundCondition operator="and">
					<simpleCondition role="onBegin" />
					<assessmentStatement comparator="lt">
						<attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
						<valueAssessment value="$var"/>
					</assessmentStatement>
				</compoundCondition>
				<simpleAction role="start"/>
			</causalConnector>
			
			<causalConnector id="onSelectionChangeProperty">
				<connectorParam name="var" />
				<simpleCondition role="onSelection" />
				<simpleAction role="set" value="$var" />
			</causalConnector>

			<causalConnector id="onBeginChangeProperty">
				<connectorParam name="var" />
				<simpleCondition role="onBegin" />
				<simpleAction role="set" value="$var" />
			</causalConnector>

			<causalConnector id="onEndAttributionSet">
				<connectorParam name="var" />
				<simpleCondition role="onEndAttribution" />
				<simpleAction role="set" value="$var" />
			</causalConnector>

			<causalConnector id="onEndAttributionSetStop">
				<connectorParam name="var" />
				<simpleCondition role="onEndAttribution" />
				<compoundAction operator="seq">
					<simpleAction role="set" value="$var" />
					<simpleAction role="stop" />	
				</compoundAction>
			</causalConnector>

			<causalConnector id="onEndAttributionStart">
				<connectorParam name="var" />
				<simpleCondition role="onEndAttribution" />
				<simpleAction role="start" />
			</causalConnector>

			<causalConnector id="onEndAttributionStopStart">
				<simpleCondition role="onEndAttribution" />
				<compoundAction operator="seq">
					<simpleAction role="stop" />
					<simpleAction role="start" />	
				</compoundAction>
			</causalConnector>

			<causalConnector id="onBeginAttributionStop">
				<simpleCondition role="onBeginAttribution" />
				<simpleAction role="stop" />
			</causalConnector>

			<causalConnector id="onEndAttributionStopStartDelay">
				<connectorParam name="delay" />
				<simpleCondition role="onEndAttribution" />
				<compoundAction operator="seq">
					<simpleAction role="stop" />
					<simpleAction role="start" delay="$delay" />	
				</compoundAction>
			</causalConnector>

			<causalConnector id="onEndAttributionAbortStart">
				<simpleCondition role="onEndAttribution" />
				<compoundAction operator="seq">
					<simpleAction role="abort" />
					<simpleAction role="start" />
				</compoundAction>
			</causalConnector>

			<!--Conectores de 1 para N:-->
			<causalConnector id="onBeginStartNItems">
				<simpleCondition role="onBegin" />
				<simpleAction role="start" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onBeginStopNItems">
				<simpleCondition role="onBegin" />
				<simpleAction role="stop" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onEndStartNItems">
				<simpleCondition role="onEnd" />
				<simpleAction role="start" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onEndStopNItems">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onEndStopDelayN">
				<connectorParam name="delay" />
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" delay="$delay" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onEndStopStartNItems">
				<simpleCondition role="onEnd" />
				<compoundAction operator="seq">
					<simpleAction role="stop" max="unbounded" qualifier="par" />
					<simpleAction role="start" max="unbounded" qualifier="par" />
				</compoundAction>
			</causalConnector>

			<causalConnector id="onEndAttributionStopNItems">
				<simpleCondition role="onEndAttribution" />
				<simpleAction role="stop" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onEndAttributionAbortNItems">
				<simpleCondition role="onEndAttribution" />
				<simpleAction role="abort" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onEndAbortStartNItems">
				<simpleCondition role="onEnd" />
				<compoundAction operator="seq">
					<simpleAction role="abort" max="unbounded" qualifier="par" />
					<simpleAction role="start" max="unbounded" qualifier="par" />
				</compoundAction>
			</causalConnector>

			<causalConnector id="onSelectionStopStart">
				<simpleCondition role="onSelection" />
				<compoundAction operator="seq">
					<simpleAction role="stop" max="unbounded" qualifier="par" />
					<simpleAction role="start" max="unbounded" qualifier="par" />
				</compoundAction>
			</causalConnector>

			<causalConnector id="onSelectionStartNItems">
				<simpleCondition role="onSelection" />
				<simpleAction role="start" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onSelectionAbortNItems">
				<simpleCondition role="onSelection" />
				<simpleAction role="abort" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onSelectionStopNItems">
				<simpleCondition role="onSelection" />
				<simpleAction role="stop" max="unbounded" qualifier="par" />
			</causalConnector>
			
			<causalConnector id="onKeySelectionStopNItems">
				<connectorParam name="key" />
				<simpleCondition role="onSelection" key="$key" />
				<simpleAction role="stop" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onKeySelectionAbortNItems">
				<connectorParam name="key" />
				<simpleCondition role="onSelection" key="$key" />
				<simpleAction role="abort" max="unbounded" qualifier="par" />
			</causalConnector>

			<causalConnector id="onKeySelectionAbortStartNItems">
				<connectorParam name="key" />
				<simpleCondition role="onSelection" key="$key" />
				<compoundAction>
					<simpleAction role="abort" max="unbounded" qualifier="par" />
					<simpleAction role="start"  max="unbounded" qualifier="par" />	
				</compoundAction>
			</causalConnector>

			<causalConnector id="onSelectionAbortNItems">
				<simpleCondition role="onSelection" />
				<simpleAction role="abort" max="unbounded" qualifier="par" />
			</causalConnector>

			<!--Conectores de N para N:-->
			<causalConnector id="onSelectionAbortNStartNItems">
				<simpleCondition role="onSelection" />
				<compoundAction operator="seq">
					<simpleAction  role="abort" max="unbounded" qualifier="par" />
					<simpleAction role="start" max="unbounded" qualifier="par" />
				</compoundAction>
			</causalConnector>
		</connectorBase>
	</head>
</ncl>