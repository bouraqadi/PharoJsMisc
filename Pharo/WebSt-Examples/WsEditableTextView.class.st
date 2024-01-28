Class {
	#name : #WsEditableTextView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsEditableTextView >> renderContentOn: html [

	(html
		render: WsTextComponent) style: 'width:100%' .
	html
		render: WsTextInputComponent
]
