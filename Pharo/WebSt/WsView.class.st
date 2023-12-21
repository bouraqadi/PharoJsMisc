Class {
	#name : #WsView,
	#superclass : #Object,
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsView class >> html [

	^ self new html
]

{ #category : #rendering }
WsView >> html [
^self renderClass render: self
]

{ #category : #rendering }
WsView >> renderClass [

	^ WsRenderer
]

{ #category : #rendering }
WsView >> renderContentOn: html [

	self subclassResponsibility
]

{ #category : #rendering }
WsView >> renderOn: html [

	html renderView: self
]
