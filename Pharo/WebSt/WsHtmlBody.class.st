Class {
	#name : #WsHtmlBody,
	#superclass : #Object,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
	#instVars : [
		'rootComponent'
	],
	#category : #'WebSt-Kernel'
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
