Class {
	#name : #WsEditableTextView,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #rendering }
WsEditableTextView >> renderContentOn: html [

	html div style: 'min-height: 1em;'; with: [ html span ].
	html render: WsTextInputComponent
]
