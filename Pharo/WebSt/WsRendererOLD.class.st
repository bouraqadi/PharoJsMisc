Class {
	#name : #WsRendererOLD,
	#superclass : #WAHtmlCanvas,
	#instVars : [
		'stream',
		'document'
	],
	#category : #'WebSt-ViewsOLD'
}

{ #category : #rendering }
WsRendererOLD >> renderBody: aWsHtmlBody [ 
	aWsHtmlBody renderOuterHtmlOn: self
]

{ #category : #rendering }
WsRendererOLD >> renderComponent: component [

	component renderOuterHtmlOn: self
]

{ #category : #rendering }
WsRendererOLD >> renderDocType [
	self document nextPutAll: '<!doctype html>'
]

{ #category : #rendering }
WsRendererOLD >> renderElement: aView [

	aView resources do: [ :each | self render: each ].
	aView renderOuterHtmlOn: self
]

{ #category : #rendering }
WsRendererOLD >> renderHead: aWsHtmlHead [ 
	aWsHtmlHead renderOuterHtmlOn: self
]

{ #category : #rendering }
WsRendererOLD >> renderResource: aResource [

	^ aResource renderOuterHtmlOn: self
]

{ #category : #rendering }
WsRendererOLD >> template [
	^self tag: #template
]

{ #category : #accessing }
WsRendererOLD >> title [
	^self brush: WsTitleTag new
]

{ #category : #accessing }
WsRendererOLD >> title: aString [ 
	self title with: [self text: aString].
]
