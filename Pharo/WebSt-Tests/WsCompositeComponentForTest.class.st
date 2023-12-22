Class {
	#name : #WsCompositeComponentForTest,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #'class initialization' }
WsCompositeComponentForTest class >> tagName [

	^#'ws-composite'
]

{ #category : #rendering }
WsCompositeComponentForTest class >> viewClass [

	<pharoJsSkip>
	^WsCompositeViewForTest 
]

{ #category : #initialization }
WsCompositeComponentForTest >> initModel [

	^self
]
