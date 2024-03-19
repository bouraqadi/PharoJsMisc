Class {
	#name : #WsDependantCompositeIntermediateComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #'class initialization' }
WsDependantCompositeIntermediateComponent class >> tagName [

	^'ws-dependante-composite-intermediate'
]

{ #category : #'accessing view' }
WsDependantCompositeIntermediateComponent class >> viewClass [

	<pharoJsSkip>
	^WsDependantCompositeIntermediateComponentView
]
