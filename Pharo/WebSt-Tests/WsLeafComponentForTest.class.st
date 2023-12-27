Class {
	#name : #WsLeafComponentForTest,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #'class initialization' }
WsLeafComponentForTest class >> tagName [

	^#'ws-leaf'
]

{ #category : #rendering }
WsLeafComponentForTest class >> viewClass [

	<pharoJsSkip>
	^ WsLeafViewForTest
]

{ #category : #initialization }
WsLeafComponentForTest >> initModel [

^#()
]