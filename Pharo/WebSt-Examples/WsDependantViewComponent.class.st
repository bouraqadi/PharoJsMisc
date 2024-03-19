Class {
	#name : #WsDependantViewComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #'class initialization' }
WsDependantViewComponent class >> tagName [

	^ 'ws-dependant-view'
]

{ #category : #'accessing view' }
WsDependantViewComponent class >> viewClass [

	<pharoJsSkip>
	^WsDependantView 
]
