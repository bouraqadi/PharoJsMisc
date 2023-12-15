Class {
	#name : #WsHtmlRenderer,
	#superclass : #WAHtmlCanvas,
	#instVars : [
		'stream',
		'document'
	],
	#category : #'WebSt-Rendering'
}

{ #category : #rendering }
WsHtmlRenderer class >> render: component [

	^ self new render: component; html
]

{ #category : #rendering }
WsHtmlRenderer >> body [

	^ self tag: 'body'
]

{ #category : #rendering }
WsHtmlRenderer >> body: aBlock [

	self body with: aBlock
]

{ #category : #accessing }
WsHtmlRenderer >> document [

	^ document
]

{ #category : #rendering }
WsHtmlRenderer >> head [

	^self tag: 'head'
]

{ #category : #rendering }
WsHtmlRenderer >> head: aBlock [
	self head with: aBlock
]

{ #category : #accessing }
WsHtmlRenderer >> html [

	self flush.
	^ stream contents
]

{ #category : #initialization }
WsHtmlRenderer >> initialize [

	super initialize.
	stream := WriteStream on: String new.
document := WAHtmlDocument on: stream.
]

{ #category : #rendering }
WsHtmlRenderer >> link [

	^ self brush: WsLinkTag new
]

{ #category : #rendering }
WsHtmlRenderer >> render: aView [

	aView renderOn: self
]

{ #category : #rendering }
WsHtmlRenderer >> renderBody: aWsHtmlBody [ 
	aWsHtmlBody renderContentOn: self
]

{ #category : #rendering }
WsHtmlRenderer >> renderComponent: component [

	component renderContentOn: self
]

{ #category : #rendering }
WsHtmlRenderer >> renderDocType [
	self document nextPutAll: '<!doctype html>'
]

{ #category : #rendering }
WsHtmlRenderer >> renderHead: aWsHtmlHead [ 
	aWsHtmlHead renderContentOn: self
]

{ #category : #rendering }
WsHtmlRenderer >> renderHeadChild: element [

	self document
		openTag: element tag
		attributes: element attributes
		closed: element isClosed.
	element isClosed ifTrue: [ ^ self ].
	element renderContentOn: self.
	self document closeTag: element tag
]

{ #category : #rendering }
WsHtmlRenderer >> renderResource: aResource [

	^ aResource renderContentOn: self
]

{ #category : #rendering }
WsHtmlRenderer >> renderView: aView [

	aView renderContentOn: self
]

{ #category : #rendering }
WsHtmlRenderer >> template [
	^self tag: #template
]

{ #category : #'instance creation' }
WsHtmlRenderer >> template: aBlock [ 
	self template with: aBlock
]
