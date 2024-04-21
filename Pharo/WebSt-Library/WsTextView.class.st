Class {
	#name : #WsTextView,
	#superclass : #WsBootstrap5View,
	#category : #'WebSt-Library-Text'
}

{ #category : #rendering }
WsTextView >> renderOuterHtmlOn: html [

	html span class: 'display'
]
