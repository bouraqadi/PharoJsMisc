Class {
	#name : #WsBuilder,
	#superclass : #WABuilder,
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsBuilder >> render: anObject [

	| htmlBodyString htmlBody |
	self fullDocument ifFalse: [ ^ super render: anObject ].
	self fullDocument: false.
	htmlBodyString := super render: anObject.
	htmlBody := WsHtmlBody on: htmlBodyString.
	self fullDocument: true.
	^ String streamContents: [ :stream |
		  self render: htmlBody on: stream ]
]
