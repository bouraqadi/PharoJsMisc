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

	self assert: component view identicalTo: shadowRoot.
	self assert: component innerHTML isEmpty.
	self assert: shadowRoot notNil.
	self assert: shadowRoot innerHTML isEmpty
]
