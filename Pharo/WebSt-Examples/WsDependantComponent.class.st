Class {
	#name : #WsDependantComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #'class initialization' }
WsDependantComponent class >> tagName [

	^ 'ws-dependant'
]

{ #category : #'accessing view' }
WsDependantComponent class >> viewClass [

	<pharoJsSkip>
	^WsDependantView 
]
