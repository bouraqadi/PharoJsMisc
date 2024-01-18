Class {
	#name : #WsEditableTextView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsEditableTextView >> renderContentOn: html [

	html span;
		render: WsTextInputComponent
]
