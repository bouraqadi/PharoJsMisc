Class {
	#name : #WsMinimalComponentTest,
	#superclass : #WsComponentTest,
	#classTraits : 'PjTAppRunsInJS classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsMinimalComponentTest class >> appClass [ 
	^WsMinimalApp 
]

{ #category : #tests }
WsMinimalComponentTest >> assertComponent [

	self assert: component innerHTML isEmpty.
	self assert: shadowRoot notNil.
	self assert: shadowRoot innerHTML isEmpty.
	self assert: component view identicalTo: shadowRoot
]
