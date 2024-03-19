Class {
	#name : #WsDependantCompositeComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #'class initialization' }
WsDependantCompositeComponent class >> tagName [

	^'ws-dependant-composite'
]

{ #category : #'accessing view' }
WsDependantCompositeComponent class >> viewClass [

	<pharoJsSkip>
	^WsDependantCompositeComponentView 
]
