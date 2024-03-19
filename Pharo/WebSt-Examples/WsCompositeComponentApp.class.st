Class {
	#name : #WsCompositeComponentApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-CompositeComponents'
}

{ #category : #rendering }
WsCompositeComponentApp class >> rootComponentClass [

	<pharoJsSkip>
	^ WsCompositeComponent
]
