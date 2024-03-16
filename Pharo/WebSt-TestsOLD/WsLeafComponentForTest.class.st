Class {
	#name : #WsLeafComponentForTest,
	#superclass : #WsComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #'class initialization' }
WsLeafComponentForTest class >> tagName [

	^ #'ws-leaf-test'
]

{ #category : #rendering }
WsLeafComponentForTest class >> viewClass [

	<pharoJsSkip>
	^ WsLeafViewForTest
]
