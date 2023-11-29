Class {
	#name : #WsBuilder,
	#superclass : #WABuilder,
	#category : #'WebSt-KernelOLDOLD'
}

{ #category : #rendering }
WsBuilder >> render: anObject [

	| htmlBodyString htmlBody |
	self fullDocument ifFalse: [ ^ super render: anObject ].
	self fullDocument: false.
	htmlBodyString := super render: anObject.
	htmlBody := WsHtmlBodyOLD on: htmlBodyString.
	self fullDocument: true.
	^ String streamContents: [ :stream |
		  self render: htmlBody on: stream ]
]
