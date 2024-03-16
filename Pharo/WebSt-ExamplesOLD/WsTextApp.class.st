Class {
	#name : #WsTextApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #accessing }
WsTextApp class >> rootComponentClass [ 
	^WsEditableTextComponent 
]

{ #category : #intializing }
WsTextApp >> initRootComponent [

	rootComponent text: 'This text is in a text component'
]
