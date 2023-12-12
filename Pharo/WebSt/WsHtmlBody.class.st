Class {
	#name : #WsHtmlBody,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactory',
	#classTraits : 'WsTHtmlElementFactory classTrait',
	#instVars : [
		'rootView'
	],
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsHtmlBody >> renderContentOn: html [

	html body: [ 
		html render: rootView ]
]

{ #category : #rendering }
WsHtmlBody >> renderOn: aRenderer [

	aRenderer renderBody: self
]

{ #category : #accessing }
WsHtmlBody >> rootView [

	^ rootView
]

{ #category : #accessing }
WsHtmlBody >> rootView: anObject [

	rootView := anObject
]

{ #category : #accessing }
WsHtmlBody >> title [
	self rootView ifNil: [^nil].
	^self rootView title
]
