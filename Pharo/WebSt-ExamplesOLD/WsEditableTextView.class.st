Class {
	#name : #WsEditableTextView,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #rendering }
WsEditableTextView >> renderContentOn: html [

	html div style: 'min-height: 1em;'; with: [ html span ].
	html render: WsTextInputComponent
]
