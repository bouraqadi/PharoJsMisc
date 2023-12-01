Class {
	#name : #WsHtmlBody,
	#superclass : #Object,
	#traits : 'WsTHtmlElement',
	#classTraits : 'WsTHtmlElement classTrait',
	#instVars : [
		'rootComponent'
	],
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsHtmlBody >> renderContentOn: html [

	html body: [ 
		html render: rootComponent ]
]

{ #category : #accessing }
WsHtmlBody >> rootComponent [

	^ rootComponent
]

{ #category : #accessing }
WsHtmlBody >> rootComponent: anObject [

	rootComponent := anObject
]

{ #category : #accessing }
WsHtmlBody >> title [
	self rootComponent ifNil: [^nil].
	^self rootComponent title
]
