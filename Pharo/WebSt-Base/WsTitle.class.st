Class {
	#name : #WsTitle,
	#superclass : #WAHtmlElement,
	#instVars : [
		'text'
	],
	#category : #'WebSt-Base-Kernel'
}

{ #category : #testing }
WsTitle >> isClosed [

	^ self text isEmptyOrNil
]

{ #category : #rendering }
WsTitle >> renderOuterHtmlOn: html [

	html text: self text
]

{ #category : #accessing }
WsTitle >> tag [

	^#title
]

{ #category : #accessing }
WsTitle >> text [

	^ text
]

{ #category : #accessing }
WsTitle >> text: anObject [

	text := anObject
]
