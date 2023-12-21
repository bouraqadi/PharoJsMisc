Class {
	#name : #WsHtmlBodyOLD,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactoryOLD',
	#classTraits : 'WsTHtmlElementFactoryOLD classTrait',
	#instVars : [
		'rootView'
	],
	#category : #'WebSt-ViewsOLD'
}

{ #category : #rendering }
WsHtmlBodyOLD >> renderContentOn: html [

	html body: [ 
		html render: rootView ]
]

{ #category : #'as yet unclassified' }
WsHtmlBodyOLD >> renderOn: aRenderer [

	aRenderer renderBody: self
]

{ #category : #accessing }
WsHtmlBodyOLD >> rootView [

	^ rootView
]

{ #category : #accessing }
WsHtmlBodyOLD >> rootView: anObject [

	rootView := anObject
]

{ #category : #accessing }
WsHtmlBodyOLD >> title [
	self rootView ifNil: [^nil].
	^self rootView title
]
