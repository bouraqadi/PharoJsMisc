Class {
	#name : #WsTextAppOLD,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #accessing }
WsTextAppOLD class >> rootComponentClass [ 
	^WsEditableTextComponent 
]

{ #category : #intializing }
WsTextAppOLD >> initRootComponent [

	rootComponent text: 'This text is in a text component'
]
