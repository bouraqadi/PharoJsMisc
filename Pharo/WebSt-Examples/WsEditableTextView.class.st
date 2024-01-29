Class {
	#name : #WsEditableTextView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsEditableTextView >> renderContentOn: html [

	html div style: 'min-height: 1em;'; with: [ html span ].
	html render: WsTextInputComponent
]
