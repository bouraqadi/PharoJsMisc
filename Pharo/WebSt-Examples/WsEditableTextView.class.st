Class {
	#name : #WsEditableTextView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsEditableTextView >> renderOuterHtmlOn: html [

	html
		render: WsTextComponent;
		render: WsTextInputComponent 
]
