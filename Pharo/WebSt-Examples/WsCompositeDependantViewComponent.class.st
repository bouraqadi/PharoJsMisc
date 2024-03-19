Class {
	#name : #WsCompositeDependantViewComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #'class initialization' }
WsCompositeDependantViewComponent class >> tagName [

	^'ws-composite-dependant-view'
]

{ #category : #'accessing view' }
WsCompositeDependantViewComponent class >> viewClass [ 
	<pharoJsSkip>
	^WsCompositeDependantView 
]
