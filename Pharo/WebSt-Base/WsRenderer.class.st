Class {
	#name : #WsRenderer,
	#superclass : #WAHtmlCanvas,
	#instVars : [
		'stream',
		'document',
		'localResources',
		'globalResources'
	],
	#category : #'WebSt-Base-Views'
}

{ #category : #rendering }
WsRenderer class >> render: anObject [

	^ self new
		 htmlFrom: anObject 
]

{ #category : #accessing }
WsRenderer >> addAllResourcesOf: element [

	element resources do: [ :each | self addResource: each ]
]

{ #category : #accessing }
WsRenderer >> addCssLink: cssLink [

	localResources add: cssLink
]

{ #category : #accessing }
WsRenderer >> addGlobalResource: resource [

	self globalResources add: resource
]

{ #category : #accessing }
WsRenderer >> addJsScript: script [

	self globalResources add: script
]

{ #category : #accessing }
WsRenderer >> addLocalResource: resource [

	localResources add: resource
]

{ #category : #accessing }
WsRenderer >> addResource: resource [
	resource addTo: self
]

{ #category : #accessing }
WsRenderer >> document [
	^document 
]

{ #category : #accessing }
WsRenderer >> globalResources [
	^globalResources
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
	localResources := Set new.
	globalResources := Set new.
]

{ #category : #rendering }
WsRenderer >> link [

	^ self brush: WsLinkTag new
]

{ #category : #rendering }
WsRenderer >> render: element [

	element renderOn: self
]

{ #category : #rendering }
WsRenderer >> renderApp: appClass [

	| componentRenderer page |
	componentRenderer := self species new.
	componentRenderer render: appClass rootComponentClass.
	page := WsPage new.
	page title: appClass title.
	page addResourcesAll: componentRenderer globalResources.
	page addViewHtml: componentRenderer html.
	page addJsAt: appClass appJsFileName.
	self render: page
]

{ #category : #rendering }
WsRenderer >> renderComponent: component [

	self addAllResourcesOf: component.	
	component renderOuterHtmlOn: self.

]

{ #category : #rendering }
WsRenderer >> renderElement: element [

	element renderOuterHtmlOn: self
]

{ #category : #rendering }
WsRenderer >> renderHeadChild: element [

	self document
		openTag: element tag
		attributes: element attributes
		closed: element isClosed.
	element isClosed ifTrue: [ ^ self ].
	element renderInnerHtmlOn: self.
	self document closeTag: element tag
]

{ #category : #rendering }
WsRenderer >> renderLocalResources [
	localResources do: [ : each | self render: each ].
]

{ #category : #rendering }
WsRenderer >> renderView: view [

	self addAllResourcesOf: view.
	view renderOuterHtmlOn: self
]
