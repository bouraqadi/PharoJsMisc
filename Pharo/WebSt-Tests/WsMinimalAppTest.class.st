Class {
	#name : #WsMinimalAppTest,
	#superclass : #WsComponentTest,
	#classTraits : 'PjTAppRunsInJS classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsMinimalAppTest class >> appClass [ 
	^WsMinimalApp 
]

{ #category : #tests }
WsMinimalAppTest >> assertComponent [

	| remoteComponentClass |
	remoteComponentClass := self bridge jsGlobalAt: self rootComponentClass name.
	self assert: component class identicalTo: remoteComponentClass.
	self assert: component innerHTML isEmpty.
	self assert: shadowRoot notNil.
	self assert: shadowRoot innerHTML isEmpty.
	self assert: component view identicalTo: shadowRoot.

]
