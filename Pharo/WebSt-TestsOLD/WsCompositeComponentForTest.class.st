Class {
	#name : #WsCompositeComponentForTest,
	#superclass : #WsComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #'class initialization' }
WsCompositeComponentForTest class >> tagName [

	^ #'ws-composite-test'
]

{ #category : #rendering }
WsCompositeComponentForTest class >> viewClass [

	<pharoJsSkip>
	^WsCompositeViewForTest 
]
