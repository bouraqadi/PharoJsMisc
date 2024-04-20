Class {
	#name : #WsEditableTextViewOLD,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #rendering }
WsEditableTextViewOLD >> renderContentOn: html [

	html div style: 'min-height: 1em;'; with: [ html span ].
	html render: WsTextInputComponent
]
