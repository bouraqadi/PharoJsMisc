Class {
	#name : #WsCompositeComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-CompositeComponents'
}

{ #category : #'class initialization' }
WsCompositeComponent class >> tagName [

	^'ws-composite'
]

{ #category : #'accessing view' }
WsCompositeComponent class >> viewClass [

	<pharoJsSkip>
	^WsCompositeComponentView 
]
