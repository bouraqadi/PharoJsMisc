Class {
	#name : #WsTextView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsTextView >> renderContentOn: html [

	html
		span
		class: 'textDisplay'
]
