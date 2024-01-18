Class {
	#name : #WsTextApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-Examples-Text'
}

{ #category : #accessing }
WsTextApp class >> rootComponentClass [ 
	^WsTextSpanComponent 
]

{ #category : #intializing }
WsTextApp >> initRootComponent [

	rootComponent text: 'This text is in a text component'
]
