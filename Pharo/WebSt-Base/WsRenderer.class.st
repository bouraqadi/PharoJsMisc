Class {
	#name : #WsRenderer,
	#superclass : #WAHtmlCanvas,
	#instVars : [
		'stream',
		'document'
	],
	#category : #'WebSt-Base-Views'
}

{ #category : #rendering }
WsRenderer class >> render: anObject [

	^ self new
		 htmlFrom: anObject 
]

{ #category : #accessing }
WsRenderer >> document [
	^document 
]

{ #category : #accessing }
WsRenderer >> html [

	self flush.
	^ stream contents
]

{ #category : #rendering }
WsRenderer >> htmlFrom: anObject [

	self render: anObject.
	^self html
]

{ #category : #initialization }
WsRenderer >> initialize [

	super initialize.
	stream := WriteStream on: String new.
	document := WAHtmlDocument on: stream.

]

{ #category : #rendering }
WsRenderer >> link [

	^ self brush: WsLinkTag new
]

{ #category : #rendering }
WsRenderer >> render: aView [

	^aView renderOn: self
]

{ #category : #rendering }
WsRenderer >> renderElement: element [

	^element renderOuterHtmlOn: self
]

{ #category : #rendering }
WsRenderer >> renderHeadChild: element [

	self document
		openTag: element tag
		attributes: element attributes
		closed: element isClosed.
	element isClosed ifTrue: [ ^ self ].
	element renderOuterHtmlOn: self.
	self document closeTag: element tag
]
