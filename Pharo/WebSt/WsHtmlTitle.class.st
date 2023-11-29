Class {
	#name : #WsHtmlTitle,
	#superclass : #WAHtmlElement,
	#instVars : [
		'title'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #testing }
WsHtmlTitle >> isClosed [

	^ self title isEmptyOrNil 
]

{ #category : #rendering }
WsHtmlTitle >> renderContentOn: html [
	html text: self title
]

{ #category : #accessing }
WsHtmlTitle >> tag [

	^#title
]

{ #category : #accessing }
WsHtmlTitle >> title [
	^title 
]

{ #category : #accessing }
WsHtmlTitle >> title: aString [
	title := aString
]
