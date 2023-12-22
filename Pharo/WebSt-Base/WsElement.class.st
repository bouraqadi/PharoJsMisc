Class {
	#name : #WsElement,
	#superclass : #Object,
	#category : #'WebSt-Base-Kernel'
}

{ #category : #rendering }
WsElement class >> html [

	^ self new html
]

{ #category : #rendering }
WsElement >> html [
^self renderClass render: self
]

{ #category : #rendering }
WsElement >> renderClass [

	^ WsRenderer
]

{ #category : #rendering }
WsElement >> renderOn: html [

	html renderElement: self
]

{ #category : #rendering }
WsElement >> renderOuterHtmlOn: html [

	self subclassResponsibility
]
