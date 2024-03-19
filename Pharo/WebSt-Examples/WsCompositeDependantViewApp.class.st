Class {
	#name : #WsCompositeDependantViewApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsCompositeDependantViewApp class >> rootComponentClass [

	<pharoJsSkip>
	^WsCompositeDependantViewComponent 
]
