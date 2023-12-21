Class {
	#name : #WsRenderer,
	#superclass : #WAHtmlCanvas,
	#instVars : [
		'stream',
		'document'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsRenderer class >> render: anObject [

	^ self new
		  render: anObject;
		  html
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

{ #category : #initialization }
WsRenderer >> initialize [

	super initialize.
	stream := WriteStream on: String new.
document := WAHtmlDocument on: stream.
]

{ #category : #rendering }
WsRenderer >> render: aView [

	aView renderOn: self
]

{ #category : #rendering }
WsRenderer >> renderHeadChild: element [

	self document
		openTag: element tag
		attributes: element attributes
		closed: element isClosed.
	element isClosed ifTrue: [ ^ self ].
	element renderContentOn: self.
	self document closeTag: element tag
]

{ #category : #rendering }
WsRenderer >> renderView: view [

	view renderContentOn: self
]
